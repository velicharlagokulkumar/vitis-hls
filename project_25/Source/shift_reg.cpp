#include<hls_stream.h>
#include <ap_int.h>
typedef ap_uint<16> size;
void shift_register(hls::stream<size> &data_in, size shift_value, bool shift_flag,
		                  hls::stream<size> &data_out) {
#pragma HLS INTERFACE mode=axis port=data_out register
#pragma HLS INTERFACE mode=axis port=data_in register

	size dout[16];
  #pragma HLS ARRAY_PARTITION dim=1 factor=16 type=block variable=dout
	size din[16];
  #pragma HLS ARRAY_PARTITION dim=1 factor=16 type=block variable=din

	for (int i = 0; i < 16; i++) {
             #pragma HLS UNROLL
		       din[i]=data_in.read();
	    }
		  if (shift_flag) {    //Right shift
			        for (int i = 0; i < 16; i++) {
                        //#pragma HLS PIPELINE
			             #pragma HLS UNROLL
			            int shift_index = i - shift_value;
			            if (shift_index < 0) {
			                dout[i] = din[16 + shift_index];
			            } else {
			                dout[i] = din[shift_index];
			            }
			        }
			    } else {
			        for (int i = 0; i < 16; i++) {
                     // #pragma HLS PIPELINE
			           #pragma HLS UNROLL
			            int shift_index = i + shift_value;
			            if (shift_index >= 16) {
			                dout[i] = din[shift_index - 16];
			            } else {
			                dout[i] = din[shift_index];
			            }
			        }
			    }

		 for (int i = 0; i < 16; i++) {
            #pragma HLS UNROLL
			 data_out.write(dout[i]);
		 }
}
