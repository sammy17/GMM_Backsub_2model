#include "core.h"
#include <hls_math.h>

float vinit = 18000;
float F[MODELS];	//Fitness
float akt[MODELS];	//learning rate of mean and variance

float alpha_w = 0.004;

uint8_t matchsum[76800][MODELS];
bool back_gauss[76800][MODELS];

//int backsub(AXI_STREAM& inStream, AXI_STREAM_OUT& outStream, bool init,
//		float mean[76800][MODELS], float sigma[76800][MODELS], float weight[76800][MODELS],
//		uint8_t matchsum[76800][MODELS], bool back_gauss[76800][MODELS]) {

int backsub(uint32_t data_array[IMG_H * IMG_W / 2], uint8_t out_frame[76800],
		bool init, float parameters[76800*MODELS*3]){
//#pragma HLS DATAFLOW
#pragma HLS INTERFACE m_axi port=out_frame offset=slave
#pragma HLS INTERFACE m_axi port=data_array offset=slave

#pragma HLS INTERFACE m_axi port=parameters offset=slave
#pragma HLS INTERFACE s_axilite port=init bundle=CRTL_BUS

#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS

	loop1: {
		if (init) {
			for (int i = 0; i < IMG_SIZE; i = i + 1) {
//#pragma HLS PIPELINE
					matchsum[i][0] = 0;
					matchsum[i][1] = 0;
					//matchsum[i][2] = 0;
					//matchsum[i][3] = 0;

					back_gauss[i][0] = true;
					back_gauss[i][1] = true;
					//back_gauss[i][2] = true;
					//back_gauss[i][3] = true;
				}

			for (int idxRow = 0; idxRow < IMG_H; idxRow++) {
				for (int idxCols = 0; idxCols < IMG_W / 2; idxCols++) {
//#pragma HLS UNROLL factor=8
					int i = idxRow * IMG_W / 2 + idxCols;
					uint32_t val = data_array[i];
					yuv pix;

					tostruct(val, &pix);

					if (!EM_ALGO(pix.y1, i * 2, parameters, matchsum, back_gauss))
						out_frame[i * 2] = 0;
					else
						out_frame[i * 2] = 255;

					if (!EM_ALGO(pix.y2, i * 2 + 1, parameters, matchsum, back_gauss))
						out_frame[i * 2 + 1] = 0;
					else
						out_frame[i * 2 + 1] = 255;

				}

			}

		} else {
			for (int idxRow = 0; idxRow < IMG_H; idxRow++) {
				for (int idxCols = 0; idxCols < IMG_W / 2; idxCols++) {
//#pragma HLS UNROLL factor=8
					int i = idxRow * IMG_W / 2 + idxCols;
					uint32_t val = data_array[i];
					yuv pix;

					tostruct(val, &pix);

					if (!EM_ALGO(pix.y1, i * 2, parameters, matchsum, back_gauss))
						out_frame[i * 2] = 0;
					else
						out_frame[i * 2] = 255;

					if (!EM_ALGO(pix.y2, i * 2 + 1, parameters, matchsum, back_gauss))
						out_frame[i * 2 + 1] = 0;
					else
						out_frame[i * 2 + 1] = 255;

				}
			}


		}
		return 0;
	}
}

void tostruct(uint32_t val, yuv *yuv_struct) {
#pragma HLS INLINE
	yuv_struct->y1 = 255 & val;
	yuv_struct->u = 255 & (val >> 8);
	yuv_struct->y2 = 255 & (val >> 16);
	yuv_struct->v = 255 & (val >> 24);
}

bool EM_ALGO(uint8_t pixel, int pos, float parameters[76800*MODELS*3],
		uint8_t matchsum[76800][MODELS], bool back_gauss[76800][MODELS]) {
#pragma HLS INLINE

	bool M[MODELS] = {false};

	//Checking whether the pixel is in 2.5sigma distance of every mean
	for (int j = 0; j < MODELS; j++) {
		if ((abs(pixel - parameters[pos* MODELS * 3 + j] ) < 2.5 * hls::sqrtf(parameters[pos* MODELS * 3 + 2 + j] ))
				and (back_gauss[pos][j])) {
			M[j] = true;
		}
		akt[j] = alpha_w / parameters[pos*MODELS * 3 + 4 + j] ;
		F[j] = parameters[pos*MODELS * 3 + 4 + j]  / parameters[pos*MODELS * 3+ 2 + j]  ;
	}

	/*The Gaussian that matches with the pixel (M=1) and has the highest F value is
	 considered as the “matched distribution” and its parameters are updated */

	float max_F = 0;
	float min_F = 1000;
	int max_val = 10;
	int min_val = 10;
	for (int j = 0; j < MODELS; j++) {
		if (M[j]) {
			if (F[j] > max_F) {
				max_val = j;
				max_F = F[j];
			}
		}
		if (F[j] < min_F) {
			min_val = j;
			min_F = F[j];
		}
	}

	if (max_val < MODELS) {	//For the largest F with M = 1
		//updating mean
		parameters[pos*MODELS * 3 + max_val] = parameters[pos*MODELS * 3 + max_val]
		+ akt[max_val] * (pixel - parameters[pos *MODELS * 3 + max_val]);

		//updating sigma
		parameters[pos * MODELS * 3 + 2 + max_val] = parameters[pos * MODELS * 3 + 2 + max_val]
		+ akt[max_val]
		* ((pixel - parameters[pos * MODELS * 3 + max_val]) * (pixel - parameters[pos * MODELS * 3 + max_val])
				- parameters[pos* MODELS * 3 + 2 + max_val]);

		//updating weight
		parameters[pos* MODELS * 3 + 4 + max_val] = parameters[pos* MODELS * 3 + 4 + max_val]
		- alpha_w * parameters[pos* MODELS * 3 + 4 + max_val] + alpha_w;
		//std::cout << 	"********"<<	weight[pos][max_val] << " " << pos<<std::endl;
		matchsum[pos][max_val] = matchsum[pos][max_val] + 1;

		for (int j = 0; j < 2; j++) {
			//For the unmatched Gaussian distributions mean and variance are unchanged while the weights are updated

			if (j != max_val) {
				//updating weight
				parameters[ MODELS * 3*pos + 4 + j] = parameters[ MODELS * 3*pos + 4 + j] - alpha_w;
			}
		}
	} else { // no match procedure
		parameters[pos* MODELS * 3 + min_val] = pixel; //mean
		parameters[pos* MODELS * 3 + 2 + min_val] =vinit; // sigma
		matchsum[pos][min_val] = 1;

		float matchsumtot = 0;
		for (int j = 0; j < MODELS; j++) {
			//For the unmatched Gaussian distributions mean and variance are unchanged while the weights are updated
			if (j != min_val) {
				parameters[ MODELS * 3*pos + 4 + j] = parameters[ MODELS * 3*pos + 4 + j] - alpha_w;
				matchsumtot = matchsumtot + matchsum[pos][j]; // matchsumtot is the sum of the values of the matchsum of the K-1 Gaussians with highest F
			}
		}
		if (matchsumtot != 0) {
			parameters[ MODELS * 3*pos + 4 + min_val] = 1 / matchsumtot;//updating weight
		} else {
			parameters[ MODELS * 3*pos + 4 + min_val] = 0.2; //updating weight
		}
		return true; //not matched to any gaussian-> foreground
	}

	//creating a copy of weight and F to be sorted
	float sorted_F[MODELS];
	for (int i = 0; i < MODELS; i++) {
//#pragma HLS UNROLL
		sorted_F[i] = F[i];
	}
	float sorted_weight[MODELS];
	for (int i = 0; i < MODELS; i++) {
//#pragma HLS UNROLL
		sorted_weight[i] = parameters[ MODELS * 3*pos + 4 + i]; //weight
	}

	int index[MODELS] = {0, 1};
	float temp_F, temp_W;
	int temp_index, j;
	//Sorting W according to F - descending order
	for (int i = 1; i < MODELS; i++) {
//#pragma HLS UNROLL
		temp_F = sorted_F[i];
		temp_W = sorted_weight[i];
		temp_index = index[i];
		j = i - 1;
		while (temp_F > sorted_F[j] && j >= 0)
		/*To sort elements in descending order, change temp<data[j] to temp>data[j] in above line.*/
		{
#pragma HLS LOOP_TRIPCOUNT min=1 max=4 avg=2
			sorted_F[j + 1] = sorted_F[j];
			sorted_weight[j + 1] = sorted_weight[j];
			index[j + 1] = index[j];
			--j;
		}
		sorted_F[j + 1] = temp_F;
		sorted_weight[j + 1] = temp_W;
		index[j + 1] = temp_index;
	}

	back_gauss[pos][0]=false;
	back_gauss[pos][1]=false;
	//back_gauss[pos][2]=false;
	//back_gauss[pos][3]=false;

	float T = 0.7;
	float B = 0;

	for (int ind = 0; ind < MODELS; ind++) {
//#pragma HLS UNROLL
		B = B + sorted_weight[ind];
		back_gauss[pos][index[ind]]=true;
		if (B >= T) {
			break;
		}
	}

	return false; //Background
}
