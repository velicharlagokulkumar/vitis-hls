#include <ap_int.h>
#include <hls_stream.h>

const int BRAM_DEPTH = 4;
const int INPUT_WIDTH = 8;
const int OUTPUT_WIDTH = 32;

typedef ap_uint<INPUT_WIDTH> input_t;
typedef ap_uint<OUTPUT_WIDTH> output_t;
int index=0;

void dut(hls::stream<input_t>& in_stream, hls::stream<output_t>& out_stream) {
   #pragma HLS INTERFACE mode=axis port=out_stream register
    #pragma HLS INTERFACE mode=axis port=in_stream register
	input_t bram[4];
   //  #pragma HLS ARRAY_PARTITION factor=4 type=block variable=bram
       #pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=bram
        bram[0] = in_stream.read();
        bram[1] = in_stream.read();
        bram[2] = in_stream.read();
        bram[3] = in_stream.read();
    	for (int i = 0; i < BRAM_DEPTH; i++) {
        #pragma HLS PIPELINE II=1
		out_stream.write(bram[i]);
	}
}
