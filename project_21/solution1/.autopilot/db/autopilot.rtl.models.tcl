set SynModuleInfo {
  {SRCNAME dut_Pipeline_VITIS_LOOP_28_2 MODELNAME dut_Pipeline_VITIS_LOOP_28_2 RTLNAME dut_dut_Pipeline_VITIS_LOOP_28_2
    SUBMODULES {
      {MODELNAME dut_mux_83_8_1_1 RTLNAME dut_mux_83_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dut_flow_control_loop_pipe_sequential_init RTLNAME dut_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dut_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dut MODELNAME dut RTLNAME dut IS_TOP 1
    SUBMODULES {
      {MODELNAME dut_bram1_0_RAM_1P_BRAM_1R1W RTLNAME dut_bram1_0_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_bram1_1_RAM_1P_BRAM_1R1W RTLNAME dut_bram1_1_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_bram1_2_RAM_1P_BRAM_1R1W RTLNAME dut_bram1_2_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_bram1_4_RAM_1P_BRAM_1R1W RTLNAME dut_bram1_4_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_bram1_5_RAM_1P_BRAM_1R1W RTLNAME dut_bram1_5_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_regslice_both RTLNAME dut_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME dut_regslice_both_U}
    }
  }
}
