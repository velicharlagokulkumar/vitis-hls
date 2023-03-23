#include"hls_pipe1.h"
void multiply(hls::stream<dinA_t> &A, hls::stream<dinB_t>& B,hls::stream<doutC_t> &C)
{
	#pragma HLS INTERFACE axis port=A
	#pragma HLS INTERFACE axis port=B
	#pragma HLS INTERFACE axis port=C
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS PIPELINE II=1

	dinA_t a;
	dinB_t b;
	doutC_t result;
    a=A.read();
    b=B.read();
    result=a*b;
    C.write(result);
}

