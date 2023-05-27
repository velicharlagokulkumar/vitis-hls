vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/c_reg_fd_v12_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_addsub_v3_0_6
vlib modelsim_lib/msim/c_addsub_v12_0_14
vlib modelsim_lib/msim/c_mux_bit_v12_0_6
vlib modelsim_lib/msim/c_shift_ram_v12_0_14
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_18
vlib modelsim_lib/msim/cmpy_v6_0_21
vlib modelsim_lib/msim/floating_point_v7_0_20
vlib modelsim_lib/msim/xfft_v9_1_8

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap c_reg_fd_v12_0_6 modelsim_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 modelsim_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_14 modelsim_lib/msim/c_addsub_v12_0_14
vmap c_mux_bit_v12_0_6 modelsim_lib/msim/c_mux_bit_v12_0_6
vmap c_shift_ram_v12_0_14 modelsim_lib/msim/c_shift_ram_v12_0_14
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 modelsim_lib/msim/mult_gen_v12_0_18
vmap cmpy_v6_0_21 modelsim_lib/msim/cmpy_v6_0_21
vmap floating_point_v7_0_20 modelsim_lib/msim/floating_point_v7_0_20
vmap xfft_v9_1_8 modelsim_lib/msim/xfft_v9_1_8

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog" "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog" \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog" "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog/data_generator_arr_imag_ROM_AUTO_1R.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog/data_generator_arr_real_ROM_AUTO_1R.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog/data_generator_flow_control_loop_pipe.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog/data_generator_hls_deadlock_idx0_monitor.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog/data_generator_regslice_both.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog/data_generator.v" \
"../../../bd/design_1/ip/design_1_data_generator_0_0/sim/design_1_data_generator_0_0.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog/cyclic_prefix_removal_arr_real_RAM_AUTO_1R1W.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog/cyclic_prefix_removal_cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog/cyclic_prefix_removal_cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog/cyclic_prefix_removal_flow_control_loop_pipe_sequential_init.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog/cyclic_prefix_removal_hls_deadlock_idx0_monitor.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog/cyclic_prefix_removal_regslice_both.v" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog/cyclic_prefix_removal.v" \
"../../../bd/design_1/ip/design_1_cyclic_prefix_removal_0_0/sim/design_1_cyclic_prefix_removal_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog" "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog" \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog" "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xbip_utils_v3_0_10  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_14  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_6  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_14  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/ab19/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_21  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/b7d0/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_20  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/1b8e/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_8  -93  \
"../../../../project_14.gen/sources_1/bd/design_1/ipshared/102e/hdl/xfft_v9_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_xfft_0_0/sim/design_1_xfft_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/260d/hdl/verilog" "+incdir+../../../../project_14.gen/sources_1/bd/design_1/ipshared/d36f/hdl/verilog" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

