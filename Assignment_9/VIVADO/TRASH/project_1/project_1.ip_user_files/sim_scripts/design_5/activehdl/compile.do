vlib work
vlib activehdl

vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/c_reg_fd_v12_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_addsub_v3_0_6
vlib activehdl/c_addsub_v12_0_14
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_18
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/cordic_v6_0_18
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 activehdl/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 activehdl/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 activehdl/c_addsub_v12_0_14
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 activehdl/mult_gen_v12_0_18
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap cordic_v6_0_18 activehdl/cordic_v6_0_18
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_18 -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/sim/design_3_cordic_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_5/ipshared/edda/project_1.srcs/sources_1/new/zff_chu.v" \
"../../../bd/design_5/ip/design_5_zadoff_chu_0_1/sim/design_5_zadoff_chu_0_1.v" \
"../../../bd/design_5/sim/design_5.v" \

vlog -work xil_defaultlib \
"glbl.v"

