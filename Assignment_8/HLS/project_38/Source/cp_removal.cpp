#include "cp_removal.h"

void cyclic_prefix_removal(hls::stream<ComplexT> &in_samples, hls::stream<ComplexT> &out_samples, hls::stream<bool> &t_last) {
#pragma HLS INTERFACE mode=axis register_mode=both port=out_samples register
#pragma HLS INTERFACE mode=axis register_mode=both port=in_samples register

ComplexT var;
ComplexT arr[N];
for (int i=0;i<N;i++){
#pragma HLS PIPELINE II=1
    var = in_samples.read();
    arr[i]=var;
}

    for(int i=0;i<N-P;i++){
#pragma HLS PIPELINE II=1
    	if(i<4096){
    		out_samples.write(arr[i+320]);
    	}
    	else{
    		out_samples.write(arr[i+608]);
    	}
    }
t_last.write(1);
}
