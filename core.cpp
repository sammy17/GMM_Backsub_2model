#include "core.h"
#include <hls_math.h>

data_t vinit = 18000;
data_t F[MODELS];	//Fitness
data_t akt[MODELS];	//learning rate of mean and variance

data_t alpha_w = 0.004;

uint8_t matchsum[76800][MODELS];
bool back_gauss[76800][MODELS];
data_t para[76800*MODELS*3];

int backsub(uint8_t frame_in[IMG_SIZE], uint8_t frame_out[76800], bool init, data_t para[76800*MODELS*3]){
//#pragma HLS DATAFLOW
#pragma HLS INTERFACE m_axi port=frame_out offset=slave
#pragma HLS INTERFACE m_axi port=frame_in offset=slave
#pragma HLS INTERFACE m_axi port=para offset=slave
#pragma HLS INTERFACE s_axilite port=init bundle=CRTL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma HLS protocol fixed
	static uint8_t data_array[IMG_SIZE/PARTS];
	static uint8_t out_frame[IMG_SIZE/PARTS];
	//uint8_t iterator = 0;
	static data_t parameters[76800*MODELS*3/PARTS];

	for (int x=0; x<PARTS;x++){
#pragma HLS protocol fixed
	static uint8_t data_array[IMG_SIZE/PARTS];
	static uint8_t out_frame[IMG_SIZE/PARTS];
	//uint8_t iterator = 0;
	static data_t parameters[76800*MODELS*3/PARTS];
	memcpy(parameters, &para[x*(IMG_SIZE*MODELS*3/PARTS)], IMG_SIZE*MODELS*3/PARTS);
	memcpy(data_array, &frame_in[x*(IMG_SIZE/PARTS)], IMG_SIZE/PARTS);

	loop1: {
		if (init) {
			for (int i = 0; i < IMG_SIZE/PARTS; i = i + 1) {
#pragma HLS PIPELINE
					matchsum[i+x*(IMG_SIZE/PARTS)][0] = 0;
					matchsum[i+x*(IMG_SIZE/PARTS)][1] = 0;

					back_gauss[i+x*(IMG_SIZE/PARTS)][0] = true;
					back_gauss[i+x*(IMG_SIZE/PARTS)][1] = true;

					parameters[i * MODELS * 3 + 0] = 0;
					parameters[i * MODELS * 3 + 1] = 0;
					//parameters[i * MODELS * 3 + 2] = 0;

					parameters[i * MODELS * 3 + 2] = 4900;
					parameters[i * MODELS * 3 + 3] = 4900;
					//parameters[i * MODELS * 3 + 5] = 2500;

					parameters[i * MODELS * 3 + 4] = 0.09;
					parameters[i * MODELS * 3 + 5] = 0.09;

					out_frame[i] = EM_ALGO(data_array[i], i, parameters, x);
//						out_frame[i] = 0;
//					else
//						out_frame[i] = 255;


				}

		} else {
			for (int j=0; j<IMG_SIZE/PARTS; j++){
#pragma HLS PIPELINE
//				if (!EM_ALGO(data_array[j], j, parameters, matchsum, back_gauss))
//					out_frame[j] = 0;
//				else
//					out_frame[j] = 255;
				out_frame[j] = EM_ALGO(data_array[j], j, &para[x*(IMG_SIZE*MODELS*3/PARTS)], x);
			}
		}
	}

	memcpy(&frame_out[x*(IMG_SIZE/PARTS)], out_frame, IMG_SIZE/PARTS);
//	memcpy(&para[x*((IMG_SIZE/PARTS)*MODELS*3)], parameters, (IMG_SIZE/PARTS)*MODELS*3);

	}
	return 0;
}

uint8_t EM_ALGO(uint8_t pixel, int pos, data_t parameters[(IMG_SIZE/PARTS)*MODELS*3],int x) {

//#pragma HLS INLINE

	bool M[MODELS] = {false};

	//Checking whether the pixel is in 2.5sigma distance of every mean
	for (int j = 0; j < MODELS; j++) {
		if ((abs(pixel - parameters[pos* MODELS * 3 + j] ) < 2.5 * hls::sqrtf(parameters[pos* MODELS * 3 + 2 + j] ))
				and (back_gauss[x*(IMG_SIZE/PARTS)+pos][j])) {
			M[j] = true;
		}
		akt[j] = alpha_w / parameters[pos*MODELS * 3 + 4 + j] ;
		F[j] = parameters[pos*MODELS * 3 + 4 + j]  / parameters[pos*MODELS * 3+ 2 + j]  ;
	}

	/*The Gaussian that matches with the pixel (M=1) and has the highest F value is
	 considered as the â€œmatched distributionâ€? and its parameters are updated */

	data_t max_F = 0;
	data_t min_F = 1000;
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
		matchsum[x*(IMG_SIZE/PARTS)+pos][max_val] = matchsum[x*(IMG_SIZE/PARTS)+pos][max_val] + 1;

		for (int j = 0; j < 2; j++) {
#pragma HLS UNROLL
			//For the unmatched Gaussian distributions mean and variance are unchanged while the weights are updated

			if (j != max_val) {
				//updating weight
				parameters[ MODELS * 3*pos + 4 + j] = parameters[ MODELS * 3*pos + 4 + j] - alpha_w;
			}
		}
	} else { // no match procedure
		parameters[pos* MODELS * 3 + min_val] = pixel; //mean
		parameters[pos* MODELS * 3 + 2 + min_val] =vinit; // sigma
		matchsum[x*(IMG_SIZE/PARTS)+pos][min_val] = 1;

		data_t matchsumtot = 0;
		for (int j = 0; j < MODELS; j++) {
#pragma HLS UNROLL
			//For the unmatched Gaussian distributions mean and variance are unchanged while the weights are updated
			if (j != min_val) {
				parameters[ MODELS * 3*pos + 4 + j] = parameters[ MODELS * 3*pos + 4 + j] - alpha_w;
				matchsumtot = matchsumtot + matchsum[x*(IMG_SIZE/PARTS)+pos][j]; // matchsumtot is the sum of the values of the matchsum of the K-1 Gaussians with highest F
			}
		}
		if (matchsumtot != 0) {
			parameters[ MODELS * 3*pos + 4 + min_val] = 1 / matchsumtot;//updating weight
		} else {
			parameters[ MODELS * 3*pos + 4 + min_val] = 0.2; //updating weight
		}
		return 255; //not matched to any gaussian-> foreground
	}

	//creating a copy of weight and F to be sorted
	data_t sorted_F[MODELS];
	for (int i = 0; i < MODELS; i++) {
#pragma HLS UNROLL
		sorted_F[i] = F[i];
	}
	data_t sorted_weight[MODELS];
	for (int i = 0; i < MODELS; i++) {
#pragma HLS UNROLL
		sorted_weight[i] = parameters[ MODELS * 3*pos + 4 + i]; //weight
	}

	int index[MODELS] = {0, 1};
	data_t temp_F, temp_W;
	int temp_index, j;
	//Sorting W according to F - descending order
	for (int i = 1; i < MODELS; i++) {
#pragma HLS UNROLL
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

	back_gauss[x*(IMG_SIZE/PARTS)+pos][0]=false;
	back_gauss[x*(IMG_SIZE/PARTS)+pos][1]=false;

	data_t T = 0.7;
	data_t B = 0;

	for (int ind = 0; ind < MODELS; ind++) {
#pragma HLS UNROLL
		B = B + sorted_weight[ind];
		back_gauss[x*(IMG_SIZE/PARTS)+pos][index[ind]]=true;
		if (B >= T) {
			break;
		}
	}

	return 0; //Background
}
