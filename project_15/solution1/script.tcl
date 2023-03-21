############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_15
set_top multiply
add_files ../../../../OneDrive/Desktop/vitis/hls_pipe2.h
add_files ../../../../OneDrive/Desktop/vitis/hls_pipe2.cpp
add_files -tb ../../../../OneDrive/Desktop/vitis/hls_pipe2_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
source "./project_15/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
