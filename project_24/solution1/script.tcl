############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_24
set_top dut
add_files ../../../../OneDrive/Desktop/vitis/bram_B.cpp
add_files -tb input.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../../../../OneDrive/Desktop/vitis/bram_B_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7a200t-fbg676-2}
create_clock -period 10 -name default
source "./project_24/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
