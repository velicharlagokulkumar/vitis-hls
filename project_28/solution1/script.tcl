############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_28
set_top fir
add_files ../../../../OneDrive/Desktop/vitis-hls/fir.h
add_files ../../../../OneDrive/Desktop/vitis-hls/fir_fixed.cpp
add_files ../../../../OneDrive/Desktop/vitis-hls/fir_float.cpp
add_files -tb ../../../../OneDrive/Desktop/vitis-hls/fir_coeffs.dat
add_files -tb ../../../../OneDrive/Desktop/vitis-hls/fir_signal.dat
add_files -tb ../../../../OneDrive/Desktop/vitis-hls/fir_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
#source "./project_28/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
