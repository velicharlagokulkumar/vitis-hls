#include <ap_fixed.h>
#include <hls_stream.h>
using namespace std;
#include <complex>
#include <iostream>
#include <fstream>

#define CP_LEN_1 320
#define CP_LEN_2 288
#define CP_INPUT_LEN_1 (4096 + CP_LEN_1)
#define CP_INPUT_LEN_2 (4096 + CP_LEN_2)
#define CP_OUTPUT_LEN 4096

typedef complex<float> data_t; // Data type for input and output samples
const int DATA_SIZE = 8800;  // Number of data elements

void cyclic_prefix_removal(data_t in_samples[CP_INPUT_LEN_1 + CP_INPUT_LEN_2], data_t out_samples[2*CP_OUTPUT_LEN]);
void data_generator(data_t in_samples[CP_INPUT_LEN_1 + CP_INPUT_LEN_2]);