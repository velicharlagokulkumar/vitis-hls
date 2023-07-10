vlib work
vlib riviera

vlib riviera/xbip_utils_v3_0_10
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_14
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_18
vlib riviera/axi_utils_v2_0_6
vlib riviera/cordic_v6_0_18
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_7

vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 riviera/c_addsub_v12_0_14
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 riviera/mult_gen_v12_0_18
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap cordic_v6_0_18 riviera/cordic_v6_0_18
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_18 -93  \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/327f/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_3/ip/design_3_cordic_0_0/sim/design_3_cordic_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 \
"../../../../project_1.gen/sources_1/bd/design_3/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_3/ip/design_3_xlconstant_0_0/sim/design_3_xlconstant_0_0.v" \
"../../../bd/design_3/ipshared/5cdb/project_1.srcs/sources_1/new/zff_chu.v" \
"../../../bd/design_3/ip/design_3_zadoff_chu_0_0/sim/design_3_zadoff_chu_0_0.v" \
"../../../bd/design_3/sim/design_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

