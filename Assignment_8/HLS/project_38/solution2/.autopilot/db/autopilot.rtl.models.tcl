set SynModuleInfo {
  {SRCNAME cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1 MODELNAME cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1 RTLNAME cyclic_prefix_removal_cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1
    SUBMODULES {
      {MODELNAME cyclic_prefix_removal_flow_control_loop_pipe_sequential_init RTLNAME cyclic_prefix_removal_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cyclic_prefix_removal_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2 MODELNAME cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2 RTLNAME cyclic_prefix_removal_cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2}
  {SRCNAME cyclic_prefix_removal MODELNAME cyclic_prefix_removal RTLNAME cyclic_prefix_removal IS_TOP 1
    SUBMODULES {
      {MODELNAME cyclic_prefix_removal_arr_real_RAM_AUTO_1R1W RTLNAME cyclic_prefix_removal_arr_real_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cyclic_prefix_removal_regslice_both RTLNAME cyclic_prefix_removal_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME cyclic_prefix_removal_regslice_both_U}
    }
  }
}
