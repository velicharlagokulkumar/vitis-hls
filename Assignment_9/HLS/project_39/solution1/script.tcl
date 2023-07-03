############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_39
set_top zadoff_chu_generator_hls
add_files project_39/Sources/zff_chu.cpp
add_files -tb ../MATLAB/imag_matlab.txt
add_files -tb ../MATLAB/real_matlab.txt
add_files -tb project_39/Sources/zff_chu_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./project_39/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
