############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_4
set_top multiplier
add_files ../../../../OneDrive/Desktop/vitis/main.cpp
add_files ../../../../OneDrive/Desktop/vitis/mulitiplier.h
add_files -tb ../../../../OneDrive/Desktop/vitis/main_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7a200tfbg676-2}
create_clock -period 10 -name default
#source "./project_4/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
