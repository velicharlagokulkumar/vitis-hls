vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_18
vlib questa_lib/msim/floating_point_v7_1_15
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 questa_lib/msim/mult_gen_v12_0_18
vmap floating_point_v7_1_15 questa_lib/msim/floating_point_v7_1_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_10  -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93  \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93  \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15  -93  \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic/hdl/verilog" \
"../../../ipstatic/hdl/verilog/phase_optimizer_cordic_fdiv_32ns_32ns_32_9_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/phase_optimizer_cordic_fmul_32ns_32ns_32_3_max_dsp_1.v" \
"../../../ipstatic/hdl/verilog/phase_optimizer_cordic_fpext_32ns_64_2_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/phase_optimizer_cordic_fsub_32ns_32ns_32_4_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/phase_optimizer_cordic_hls_deadlock_idx0_monitor.v" \
"../../../ipstatic/hdl/verilog/phase_optimizer_cordic_sitofp_32ns_32_4_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/phase_optimizer_cordic.v" \
"../../../ipstatic/hdl/ip/phase_optimizer_cordic_fdiv_32ns_32ns_32_9_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/phase_optimizer_cordic_fmul_32ns_32ns_32_3_max_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/phase_optimizer_cordic_fpext_32ns_64_2_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/phase_optimizer_cordic_fsub_32ns_32ns_32_4_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/phase_optimizer_cordic_sitofp_32ns_32_4_no_dsp_1_ip.v" \
"../../../../project_2.gen/sources_1/ip/phase_optimizer_cordic_0/sim/phase_optimizer_cordic_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

