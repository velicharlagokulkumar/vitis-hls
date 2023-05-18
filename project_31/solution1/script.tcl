############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_31
set_top cyclic_prefix_removal
add_files project_31/Sources/cp_removal.h
add_files project_31/Sources/cyclic_prefix.cpp
add_files project_31/Sources/data_gen.cpp
add_files -tb project_31/Sources/cyclic_prefix_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./project_31/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
