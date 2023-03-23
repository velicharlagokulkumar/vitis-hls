#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include "ap_int.h"
typedef ap_int<8> dina;
typedef ap_int<8> dinb;
typedef ap_uint<3> dinop;
typedef ap_int<16> dout;
//typedef ap_axis<8, 1, 1, 1> AXI_VALUE;

void integer_alu(
    hls::stream<dina> &in1,
    hls::stream<dinb> &in2,
    hls::stream<dinop> &op,
    hls::stream<dout> &out
);
