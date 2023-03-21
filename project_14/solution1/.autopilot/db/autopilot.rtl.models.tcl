set SynModuleInfo {
  {SRCNAME multiply MODELNAME multiply RTLNAME multiply IS_TOP 1
    SUBMODULES {
      {MODELNAME multiply_mul_32s_32s_32_2_1 RTLNAME multiply_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME multiply_regslice_both RTLNAME multiply_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME multiply_regslice_both_U}
    }
  }
}
