#include <hls_opencv.h>
#include <iostream>
#include <fstream>
#include <climits>
#include <iostream>
#include "core.h"
#include <ap_fixed.h>

data_t parameters[76800 * MODELS * 3];

cv::Mat outImg1(IMG_H, IMG_W, CV_8UC1);

cv::Mat IMG1(IMG_H, IMG_W, CV_8UC1);

uint8_t data_array[IMG_SIZE];
uint8_t out_frame[76800] = { 0 };

//void execute(cv::Mat img1, bool init);
void execute(uint8_t *data_array, bool init);

int main() {

	for (int i = 0; i < IMG_SIZE; i = i + 1) {

		parameters[i * MODELS * 3 + 0] = 0;
		parameters[i * MODELS * 3 + 1] = 0;
		//parameters[i * MODELS * 3 + 2] = 0;

		parameters[i * MODELS * 3 + 2] = 4900;
		parameters[i * MODELS * 3 + 3] = 4900;
		//parameters[i * MODELS * 3 + 5] = 2500;

		parameters[i * MODELS * 3 + 4] = 0.09;
		parameters[i * MODELS * 3 + 5] = 0.09;
		//parameters[i * MODELS * 3 + 8] = 0.07;

	}

	cv::Mat img_t;

	cv::VideoCapture cap;
	cv::Mat frame;
	cap.open("cut_out.avi");
//cap.open("e.mp4");

	if (!cap.isOpened()) {
		std::cerr << "ERROR! Unable to open camera\n";
		return -1;
	}
	cap.read(frame);
	//cv::GaussianBlur(frame0, frame, cv::Size(5, 5), 2.0);
	printf("height = %d, width = %d\n", frame.rows, frame.cols);
	cv::cvtColor(frame, IMG1, CV_BGR2GRAY);

	bool init = 1;
//execute(IMG1, init);

//	uint32_t f;
//
//	for (int idxRows = 0; idxRows < IMG_H; idxRows++) {
//		for (int idxCols = 0; idxCols < IMG_W; idxCols = idxCols + 2) {
//			uint8_t val1 = IMG1.at<uint8_t>(idxRows, idxCols);
//			uint8_t val2 = IMG1.at<uint8_t>(idxRows, idxCols + 1);
//			f = val1;
//			f = f | (val1 << 8);
//			f = f | (val2 << 16);
//			f = f | (val2 << 24);
//			data_array[IMG_W / 2 * idxRows + idxCols / 2] = f;
//		}
//	}

	memcpy(data_array, IMG1.data, IMG_SIZE);

	execute(data_array, init);

	init = 0;
	cv::namedWindow("Live1");
	cv::imshow("Live1", IMG1);

	cv::namedWindow("Live2");
	cv::imshow("Live2", outImg1);
	cv::waitKey(0);

	for (;;) {
		// wait for a new frame from camera and store it into 'frame'
		cap.read(frame);
//cv::GaussianBlur(frame0,frame, cv::Size(5,5),2.0);
		// check if we succeeded
		if (frame.empty()) {
			std::cerr << "ERROR! blank frame grabbed\n";
			break;
		}
		cv::cvtColor(frame, IMG1, CV_BGR2GRAY);
		//execute(IMG1, false);

//		for (int idxRows = 0; idxRows < IMG_H; idxRows++) {
//			for (int idxCols = 0; idxCols < IMG_W; idxCols = idxCols + 2) {
//				uint8_t val1 = IMG1.at<uint8_t>(idxRows, idxCols);
//				uint8_t val2 = IMG1.at<uint8_t>(idxRows, idxCols + 1);
//				f = val1;
//				f = f | (val1 << 8);
//				f = f | (val2 << 16);
//				f = f | (val2 << 24);
//				data_array[IMG_W / 2 * idxRows + idxCols / 2] = f;
//			}
//		}

		memcpy(data_array, IMG1.data, IMG_SIZE);

		execute(data_array, init);

		cv::namedWindow("Live1");
		cv::imshow("Live1", IMG1);

		cv::namedWindow("Live2");
		cv::imshow("Live2", outImg1);
//		cv::waitKey(0);
		if (cv::waitKey(1) >= 0)
			break;

	}

	return 0;

}

void execute(uint8_t *data_array, bool init) {

	backsub(data_array, out_frame, init, parameters);
//	backsub(data_array, out_frame, init);
	for (int idxRows = 0; idxRows < IMG_H; idxRows++) {
		for (int idxCols = 0; idxCols < IMG_W; idxCols = idxCols + 1) {
			outImg1.at<unsigned char>(idxRows, idxCols) = out_frame[idxRows
					* IMG_W + idxCols];
		}
	}
}

