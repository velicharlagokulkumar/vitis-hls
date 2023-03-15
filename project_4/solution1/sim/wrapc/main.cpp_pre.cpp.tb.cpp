// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/velic/OneDrive/Desktop/vitis/main.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/velic/OneDrive/Desktop/vitis/main.cpp"
# 1 "C:/Users/velic/OneDrive/Desktop/vitis/mulitiplier.h" 1
void multiplier(char a, char b, short &c);
# 2 "C:/Users/velic/OneDrive/Desktop/vitis/main.cpp" 2
void multiplier(char a, char b, short &c)
{
#pragma HLS INTERFACE ap_none port=a
#pragma HLS INTERFACE ap_none port=b
#pragma HLS INTERFACE ap_none port=c
    c = a * b;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_multiplier_ir(char, char, short &);
#ifdef __cplusplus
extern "C"
#endif
void multiplier_hw_stub(char a, char b, short &c){
multiplier(a, b, c);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void apatb_multiplier_sw(char a, char b, short &c){
apatb_multiplier_ir(a, b, c);
return ;
}
#endif
# 8 "C:/Users/velic/OneDrive/Desktop/vitis/main.cpp"

