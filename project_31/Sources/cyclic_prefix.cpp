#include "cp_removal.h"

void cyclic_prefix_removal(data_t in_samples[CP_INPUT_LEN_1 + CP_INPUT_LEN_2], data_t out_samples[2*CP_OUTPUT_LEN]) {
#pragma HLS INTERFACE axis port=out_samples
#pragma HLS INTERFACE axis port=in_samples

    for (int i = 0; i < CP_OUTPUT_LEN; i++) {
   #pragma HLS PIPELINE II=1
      out_samples[i] = in_samples[i + CP_LEN_1];
    }

    // Remove cyclic prefix for second symbol
    for (int i = 0; i < CP_OUTPUT_LEN; i++) {
    #pragma HLS PIPELINE II=1
        out_samples[i + CP_OUTPUT_LEN] = in_samples[i + CP_INPUT_LEN_1 + CP_LEN_2];
    }
}
