set SynModuleInfo {
  {SRCNAME sin_or_cos<float> MODELNAME sin_or_cos_float_s RTLNAME zadoff_chu_generator_hls_sin_or_cos_float_s
    SUBMODULES {
      {MODELNAME zadoff_chu_generator_hls_mul_80s_24ns_80_1_1 RTLNAME zadoff_chu_generator_hls_mul_80s_24ns_80_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_mux_83_1_1_1 RTLNAME zadoff_chu_generator_hls_mux_83_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_mux_164_1_1_1 RTLNAME zadoff_chu_generator_hls_mux_164_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_mul_23s_22ns_45_1_1 RTLNAME zadoff_chu_generator_hls_mul_23s_22ns_45_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_mul_30s_29ns_58_1_1 RTLNAME zadoff_chu_generator_hls_mul_30s_29ns_58_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_mul_mul_15ns_15ns_30_4_1 RTLNAME zadoff_chu_generator_hls_mul_mul_15ns_15ns_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_mul_mul_15ns_15s_30_4_1 RTLNAME zadoff_chu_generator_hls_mul_mul_15ns_15s_30_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_sin_or_cos_float_s_ref_4oPi_table_100_V_ROM_1P_LUTRAM_1R RTLNAME zadoff_chu_generator_hls_sin_or_cos_float_s_ref_4oPi_table_100_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K0_V_ROM_1P_LUTRAM_1R RTLNAME zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K0_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K1_V_ROM_1P_LUTRAM_1R RTLNAME zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K1_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K2_V_ROM_1P_LUTRAM_1R RTLNAME zadoff_chu_generator_hls_sin_or_cos_float_s_second_order_float_sin_cos_K2_V_ROM_1P_LUTRAM_1R BINDTYPE storage TYPE rom_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1 MODELNAME zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1 RTLNAME zadoff_chu_generator_hls_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1
    SUBMODULES {
      {MODELNAME zadoff_chu_generator_hls_fptrunc_64ns_32_2_no_dsp_1 RTLNAME zadoff_chu_generator_hls_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_dmul_64ns_64ns_64_5_max_dsp_1 RTLNAME zadoff_chu_generator_hls_dmul_64ns_64ns_64_5_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME zadoff_chu_generator_hls_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_sitodp_32ns_64_4_no_dsp_1 RTLNAME zadoff_chu_generator_hls_sitodp_32ns_64_4_no_dsp_1 BINDTYPE op TYPE sitodp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME zadoff_chu_generator_hls_flow_control_loop_pipe_sequential_init RTLNAME zadoff_chu_generator_hls_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME zadoff_chu_generator_hls_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME zadoff_chu_generator_hls MODELNAME zadoff_chu_generator_hls RTLNAME zadoff_chu_generator_hls IS_TOP 1}
}
