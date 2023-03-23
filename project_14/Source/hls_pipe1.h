#include<stdio.h>
#include<hls_stream.h>
#include "ap_int.h"
typedef int dinA_t;
typedef int dinB_t;
typedef long long doutC_t;
void multiply(hls::stream<dinA_t>&A,hls::stream<dinB_t>&B,hls::stream<doutC_t>&C);
