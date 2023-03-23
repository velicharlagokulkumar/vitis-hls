############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_18
set_top integer_alu
add_files ../../../../OneDrive/Desktop/vitis/alu.cpp
add_files ../../../../OneDrive/Desktop/vitis/alu.h
add_files -tb ../../../../OneDrive/Desktop/vitis/alu_tb2.cpp
add_files -tb ../../../../OneDrive/Desktop/vitis/input.dat
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./project_18/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
