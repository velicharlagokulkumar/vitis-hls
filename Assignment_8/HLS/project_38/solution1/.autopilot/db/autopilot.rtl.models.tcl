set SynModuleInfo {
  {SRCNAME data_generator MODELNAME data_generator RTLNAME data_generator IS_TOP 1
    SUBMODULES {
      {MODELNAME data_generator_arr_real_ROM_AUTO_1R RTLNAME data_generator_arr_real_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME data_generator_arr_imag_ROM_AUTO_1R RTLNAME data_generator_arr_imag_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME data_generator_regslice_both RTLNAME data_generator_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME data_generator_regslice_both_U}
      {MODELNAME data_generator_flow_control_loop_pipe RTLNAME data_generator_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME data_generator_flow_control_loop_pipe_U}
    }
  }
}
