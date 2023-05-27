#include <iostream>
#include <complex>
#include <fstream>
#include <hls_stream.h>
#include <vector>
using namespace std;
#define N 8800
#define P 608

#define CP_LEN_1 320
#define CP_LEN_2 288
#define CP_INPUT_LEN_1 (4096 + CP_LEN_1)
#define CP_INPUT_LEN_2 (4096 + CP_LEN_2)
#define CP_OUTPUT_LEN 4096


typedef struct {
    float real;
    float imag;
} ComplexT;

void data_generator(hls::stream<ComplexT> & gout);
void cyclic_prefix_removal(hls::stream<ComplexT> &in_samples, hls::stream<ComplexT> &out_samples, hls::stream<bool> &t_last);

