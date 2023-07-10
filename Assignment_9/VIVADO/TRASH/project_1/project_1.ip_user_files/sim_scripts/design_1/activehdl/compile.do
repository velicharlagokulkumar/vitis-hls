vlib work
vlib activehdl

vlib activehdl/xlconstant_v1_1_7
vlib activehdl/xil_defaultlib
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_18
vlib activehdl/floating_point_v7_1_15

vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 activehdl/mult_gen_v12_0_18
vmap floating_point_v7_1_15 activehdl/floating_point_v7_1_15

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xbip_utils_v3_0_10 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15 -93  \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/22f8/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_ddiv_64ns_64ns_64_22_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_dmul_64ns_64ns_64_5_max_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_flow_control_loop_pipe_sequential_init.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_fptrunc_64ns_32_2_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_hls_deadlock_idx0_monitor.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_mul_23s_22ns_45_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_mul_30s_29ns_58_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_mul_80s_24ns_80_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_mul_mul_15ns_15ns_30_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_mul_mul_15ns_15s_30_4_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_mux_83_1_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_mux_164_1_1_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_sin_or_cos_float_s.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_sin_or_cos_float_s_ref_4oPi_table_100_V_ROM_1P_LUTRAM_1R.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K0_V_ROM_1P_LUTRAM_1R.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K1_V_ROM_1P_LUTRAM_1R.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K2_V_ROM_1P_LUTRAM_1R.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_sitodp_32ns_64_4_no_dsp_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/verilog/zadoff_chu_generator_hls.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/ip/zadoff_chu_generator_hls_ddiv_64ns_64ns_64_22_no_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/ip/zadoff_chu_generator_hls_dmul_64ns_64ns_64_5_max_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/ip/zadoff_chu_generator_hls_fptrunc_64ns_32_2_no_dsp_1_ip.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2be0/hdl/ip/zadoff_chu_generator_hls_sitodp_32ns_64_4_no_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_zadoff_chu_generator_0_0/sim/design_1_zadoff_chu_generator_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

