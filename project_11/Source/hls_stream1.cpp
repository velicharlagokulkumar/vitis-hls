#include"hls_stream1.h"
void multiply(hls::stream<dinA_t> &A, hls::stream<dinB_t>& B,hls::stream<doutC_t> &C)
{
	dinA_t a;
	dinB_t b;
	doutC_t result;
    a=A.read();
    b=B.read();
    result=a*b;
    C.write(result);
}

