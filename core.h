#include <hls_math.h>
#include <string.h>

#include "hls_video.h"
#include <hls_math.h>
#include <ap_int.h>

#define IMG_H 240
#define IMG_W 320
#define IMG_SIZE 76800
#define MODELS 2
#define PARTS 128

//typedef ap_fixed<24,16> data_t;
typedef float data_t;

int backsub(uint8_t data_array[IMG_SIZE], uint8_t out_frame[IMG_SIZE],
		bool init, data_t parameters[IMG_SIZE*MODELS*3]);

uint8_t EM_ALGO(uint8_t pixel,int pos, data_t parameters[(IMG_SIZE/PARTS)*MODELS*3], int x);
