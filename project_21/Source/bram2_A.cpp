#include <hls_stream.h>
#include <iostream>
#include <fstream>
#include<stdio.h>
#define BRAM_DEPTH 64
#define BUNDLE_SIZE 8
#include "ap_int.h"
typedef ap_uint <8> size;
void dut(size start_index, hls::stream<size> & output) {
    #pragma HLS INTERFACE ap_none port=start_index
    #pragma HLS INTERFACE axis register port=output

	size bram1[BRAM_DEPTH];
	#pragma HLS BIND_STORAGE variable=bram1 type=ram_1p impl=bram
	#pragma HLS ARRAY_PARTITION variable=bram1 block factor=8

  size i=0,j=0;
   for ( i = 0; i < BRAM_DEPTH; i++) {
   bram1[i]=i;
   }
   /*FILE *fp;
   fp=fopen("populate.dat","r");
   while(fscanf(fp,"%d",&bram[i])==1)
       {
          i++;
       }*/
  size bundle1[BUNDLE_SIZE];
  for (j= 0; j < 8; j++) {
  #pragma HLS PIPELINE II=1
    bundle1[j] = bram1[(start_index +j*8)%BRAM_DEPTH];
    output.write(bundle1[j]);
     }
}
