############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_38
set_top cyclic_prefix_removal
add_files vitis-hls/Assignment_8/HLS/Source/cp_removal.cpp
add_files vitis-hls/Assignment_8/HLS/Source/cp_removal.h
add_files vitis-hls/Assignment_8/HLS/Source/data_generator.cpp
add_files -tb vitis-hls/Assignment_8/HLS/Source/cp_tb.cpp
add_files -tb vitis-hls/Assignment_8/HLS/Source/puschTxAfterChannelImag.txt
add_files -tb vitis-hls/Assignment_8/HLS/Source/puschTxAfterChannelReal.txt
open_solution "solution2" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./project_38/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
