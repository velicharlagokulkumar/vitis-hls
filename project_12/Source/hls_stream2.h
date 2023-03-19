#include<stdio.h>
#include<ap_fixed.h>
#include<hls_stream.h>
typedef ap_fixed <28,4> dinA_t;
typedef ap_fixed <28,4> dinB_t;
typedef ap_fixed <56,8> doutC_t;
void multiply(hls::stream<dinA_t>&A,hls::stream<dinB_t>&B,hls::stream<doutC_t>&C);
