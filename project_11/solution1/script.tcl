############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_11
set_top multiply
add_files ../../../../OneDrive/Desktop/vitis/hls_stream1.cpp
add_files ../../../../OneDrive/Desktop/vitis/hls_stream1.h
add_files -tb ../../../../OneDrive/Desktop/vitis/hls_stream1_tb.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
source "./project_11/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
