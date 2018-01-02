#include <hls_math.h>
#include <string.h>

#include "hls_video.h"
#include <hls_math.h>
#include <ap_fixed.h>

#define IMG_H 240
#define IMG_W 320
#define IMG_SIZE 76800
#define MODELS 2

typedef hls::stream<ap_axiu<16, 1, 1, 1> > AXI_STREAM;
typedef hls::stream<ap_axiu<8, 1, 1, 1> > AXI_STREAM_OUT;
typedef struct yuv {
	uint8_t u;
	uint8_t y1;
	uint8_t v;
	uint8_t y2;
};

typedef ap_fixed<8,1> data_t;



//int backsub(AXI_STREAM& inStream, AXI_STREAM_OUT& outStream, bool init, float mean[76800][MODELS],
//		float sigma[76800][MODELS],float weight[76800][MODELS],uint8_t matchsum[76800][MODELS], bool back_gauss[76800][MODELS]);

//int backsub(uint32_t data_array[IMG_H * IMG_W / 2], uint8_t out_frame[76800], bool init,
//		float mean[76800][MODELS], float sigma[76800][MODELS], float weight[76800][MODELS]) ;

int backsub(uint32_t data_array[IMG_H * IMG_W / 2], uint8_t out_frame[76800],
		bool init, float parameters[76800*MODELS*3]);

void tostruct(uint32_t val, yuv *yuv_struct);
bool EM_ALGO(uint8_t pixel,int pos, float parameters[76800*MODELS*3],uint8_t matchsum[76800][MODELS],bool back_gauss[76800][MODELS]);
