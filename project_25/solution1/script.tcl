############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_25
set_top shift_register
add_files ../../../../OneDrive/Desktop/vitis/shift_reg.cpp
add_files -tb ../../../../OneDrive/Desktop/vitis/shift_reg_tb.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../../../../OneDrive/Desktop/vitis/shift_reg_input.dat -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb input2.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
source "./project_25/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
