vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_2/ipshared/c58b/Assignment_9/VIVADO/project_1/project_1.srcs/sources_1/new/zff_chu.v" \
"../../../bd/design_2/ip/design_2_zadoff_chu_0_2/sim/design_2_zadoff_chu_0_2.v" \
"../../../bd/design_2/sim/design_2.v" \


vlog -work xil_defaultlib \
"glbl.v"

