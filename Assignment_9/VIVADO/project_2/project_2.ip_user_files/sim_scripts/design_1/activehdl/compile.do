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
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/floating_point_v7_1_15

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
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap floating_point_v7_1_15 activehdl/floating_point_v7_1_15

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_18 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/cordic_0_1/sim/cordic_0.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 "+incdir+../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog/phase_optimizer_cordic_fdiv_32ns_32ns_32_9_no_dsp_1.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog/phase_optimizer_cordic_fmul_32ns_32ns_32_3_max_dsp_1.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog/phase_optimizer_cordic_fpext_32ns_64_2_no_dsp_1.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog/phase_optimizer_cordic_fsub_32ns_32ns_32_4_full_dsp_1.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog/phase_optimizer_cordic_hls_deadlock_idx0_monitor.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog/phase_optimizer_cordic_sitofp_32ns_32_4_no_dsp_1.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/verilog/phase_optimizer_cordic.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/ip/phase_optimizer_cordic_fdiv_32ns_32ns_32_9_no_dsp_1_ip.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/ip/phase_optimizer_cordic_fmul_32ns_32ns_32_3_max_dsp_1_ip.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/ip/phase_optimizer_cordic_fpext_32ns_64_2_no_dsp_1_ip.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/ip/phase_optimizer_cordic_fsub_32ns_32ns_32_4_full_dsp_1_ip.v" \
"../../../../project_2.gen/sources_1/bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/hdl/ip/phase_optimizer_cordic_sitofp_32ns_32_4_no_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/phase_optimizer_cordic_0/sim/phase_optimizer_cordic_0.v" \
"../../../bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/floating_point_0_4/sim/floating_point_0.v" \
"../../../bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/float_div/sim/float_div.v" \
"../../../bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/float_multi/sim/float_multi.v" \
"../../../bd/design_1/ip/design_1_zadoff_chu_0_0/sources_1/ip/fixed_to_float/sim/fixed_to_float.v" \
"../../../bd/design_1/ipshared/56bd/sources_1/new/zff_2.v" \
"../../../bd/design_1/ip/design_1_zadoff_chu_0_0/sim/design_1_zadoff_chu_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

