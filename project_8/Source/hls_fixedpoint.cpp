#include "hls_fixedpoint.h"
void multiplier(dinA_t a, dinB_t b, doutC_t *c)
{
	#pragma HLS INTERFACE ap_none port=a
	#pragma HLS INTERFACE ap_none port=b
	#pragma HLS INTERFACE ap_none port=c
    *c = a * b;
}

