#include "multiplier.h"
void multiplier(char a, char b, short *c)
{
	#pragma HLS INTERFACE ap_none port=a
	#pragma HLS INTERFACE ap_none port=b
	#pragma HLS INTERFACE ap_none port=c
    *c = a * b;
}

