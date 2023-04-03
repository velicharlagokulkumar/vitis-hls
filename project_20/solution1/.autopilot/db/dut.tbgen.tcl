set moduleName dut
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dut}
set C_modelType { void 0 }
set C_modelArgList {
	{ start_index int 8 regular  }
	{ output_r int 8 regular {axi_s 1 volatile  { output_r Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "start_index", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_index sc_in sc_lv 8 signal 0 } 
	{ output_r_TDATA sc_out sc_lv 8 signal 1 } 
	{ output_r_TVALID sc_out sc_logic 1 outvld 1 } 
	{ output_r_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_index", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "start_index", "role": "default" }} , 
 	{ "name": "output_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "TDATA" }} , 
 	{ "name": "output_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_r", "role": "TVALID" }} , 
 	{ "name": "output_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_r", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "12", "23"],
		"CDFG" : "dut",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "start_index", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "output_r", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "output_r", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bram1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "bram1_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bram1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "bram1_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bram1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "bram1_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bram1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "bram1_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bram1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "bram1_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bram1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "bram1_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bram1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "bram1_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bram1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Port" : "bram1_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "bram2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "bram2_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bram2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "bram2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bram2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "bram2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bram2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "bram2_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bram2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "bram2_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bram2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "bram2_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bram2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "bram2_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "bram2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Port" : "bram2_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "dut_Pipeline_VITIS_LOOP_33_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bram1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram1_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_33_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.bram1_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.bram1_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.bram1_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.bram1_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.bram1_4_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.bram1_5_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.bram1_6_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.bram1_7_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.mux_83_8_1_1_U1", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_33_2_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "dut_Pipeline_VITIS_LOOP_38_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bram2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram2_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.bram2_0_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.bram2_1_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.bram2_2_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.bram2_3_U", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.bram2_4_U", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.bram2_5_U", "Parent" : "12"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.bram2_6_U", "Parent" : "12"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.bram2_7_U", "Parent" : "12"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.mux_83_6_1_1_U11", "Parent" : "12"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dut_Pipeline_VITIS_LOOP_38_3_fu_104.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_r_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut {
		start_index {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 1}
		bram1_0 {Type I LastRead -1 FirstWrite -1}
		bram1_1 {Type I LastRead -1 FirstWrite -1}
		bram1_2 {Type I LastRead -1 FirstWrite -1}
		bram1_3 {Type I LastRead -1 FirstWrite -1}
		bram1_4 {Type I LastRead -1 FirstWrite -1}
		bram1_5 {Type I LastRead -1 FirstWrite -1}
		bram1_6 {Type I LastRead -1 FirstWrite -1}
		bram1_7 {Type I LastRead -1 FirstWrite -1}
		bram2_0 {Type I LastRead -1 FirstWrite -1}
		bram2_1 {Type I LastRead -1 FirstWrite -1}
		bram2_2 {Type I LastRead -1 FirstWrite -1}
		bram2_3 {Type I LastRead -1 FirstWrite -1}
		bram2_4 {Type I LastRead -1 FirstWrite -1}
		bram2_5 {Type I LastRead -1 FirstWrite -1}
		bram2_6 {Type I LastRead -1 FirstWrite -1}
		bram2_7 {Type I LastRead -1 FirstWrite -1}}
	dut_Pipeline_VITIS_LOOP_33_2 {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 1}
		bram1_0 {Type I LastRead -1 FirstWrite -1}
		bram1_1 {Type I LastRead -1 FirstWrite -1}
		bram1_2 {Type I LastRead -1 FirstWrite -1}
		bram1_3 {Type I LastRead -1 FirstWrite -1}
		bram1_4 {Type I LastRead -1 FirstWrite -1}
		bram1_5 {Type I LastRead -1 FirstWrite -1}
		bram1_6 {Type I LastRead -1 FirstWrite -1}
		bram1_7 {Type I LastRead -1 FirstWrite -1}}
	dut_Pipeline_VITIS_LOOP_38_3 {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 1}
		bram2_0 {Type I LastRead -1 FirstWrite -1}
		bram2_1 {Type I LastRead -1 FirstWrite -1}
		bram2_2 {Type I LastRead -1 FirstWrite -1}
		bram2_3 {Type I LastRead -1 FirstWrite -1}
		bram2_4 {Type I LastRead -1 FirstWrite -1}
		bram2_5 {Type I LastRead -1 FirstWrite -1}
		bram2_6 {Type I LastRead -1 FirstWrite -1}
		bram2_7 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "27", "Max" : "27"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	start_index { ap_none {  { start_index in_data 0 8 } } }
	output_r { axis {  { output_r_TDATA out_data 1 8 }  { output_r_TVALID out_vld 1 1 }  { output_r_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
