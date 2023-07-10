vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/c_reg_fd_v12_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_addsub_v3_0_6
vlib questa_lib/msim/c_addsub_v12_0_14
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_18
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/cordic_v6_0_18
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 questa_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 questa_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 questa_lib/msim/c_addsub_v12_0_14
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 questa_lib/msim/mult_gen_v12_0_18
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap cordic_v6_0_18 questa_lib/msim/cordic_v6_0_18
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_10  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_18  -93  \
"../../../../project_1.gen/sources_1/bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_5/ip/design_5_zadoff_chu_0_1/project_1.srcs/sources_1/bd/design_3/ip/design_3_cordic_0_0/sim/design_3_cordic_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/design_5/ipshared/edda/project_1.srcs/sources_1/new/zff_chu.v" \
"../../../bd/design_5/ip/design_5_zadoff_chu_0_1/sim/design_5_zadoff_chu_0_1.v" \
"../../../bd/design_5/sim/design_5.v" \

vlog -work xil_defaultlib \
"glbl.v"

