#include <hls_stream.h>
#include <math.h>
#include<complex>
using namespace std;

typedef complex <float> data_stream;
void zadoff_chu_generator_hls(hls::stream<data_stream>& out_stream, int length, int u,hls::stream<bool> &tlast) {
#pragma HLS INTERFACE mode=axis register_mode=off port=tlast
#pragma HLS INTERFACE mode=axis register_mode=off port=out_stream
   data_stream out_data;

    for (int m = 0; m < length; m++) {
        #pragma HLS PIPELINE II=1
        float angle = M_PI * m * (m + 1) * u / length;
        float real = cos(angle);
        float imag = -sin(angle);
        out_stream.write(complex<float>{real,imag});
    }
    tlast.write(1);
}
