set moduleName zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ length_r int 32 regular  }
	{ conv3 double 64 regular  }
	{ conv5 double 64 regular  }
	{ out_stream int 64 regular {axi_s 1 volatile  { out_stream Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "length_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "conv5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 3 } 
	{ length_r sc_in sc_lv 32 signal 0 } 
	{ conv3 sc_in sc_lv 64 signal 1 } 
	{ conv5 sc_in sc_lv 64 signal 2 } 
	{ out_stream_TDATA sc_out sc_lv 64 signal 3 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream", "role": "TREADY" }} , 
 	{ "name": "length_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_r", "role": "default" }} , 
 	{ "name": "conv3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv3", "role": "default" }} , 
 	{ "name": "conv5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv5", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_stream", "role": "TDATA" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "14", "27", "28", "29", "30", "31", "32", "33", "34"],
		"CDFG" : "zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "length_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv3", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_float_s_fu_85", "Port" : "ref_4oPi_table_100_V", "Inst_start_state" : "43", "Inst_end_state" : "53"},
					{"ID" : "14", "SubInstance" : "grp_sin_or_cos_float_s_fu_100", "Port" : "ref_4oPi_table_100_V", "Inst_start_state" : "43", "Inst_end_state" : "53"}]},
			{"Name" : "second_order_float_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_float_s_fu_85", "Port" : "second_order_float_sin_cos_K0_V", "Inst_start_state" : "43", "Inst_end_state" : "53"},
					{"ID" : "14", "SubInstance" : "grp_sin_or_cos_float_s_fu_100", "Port" : "second_order_float_sin_cos_K0_V", "Inst_start_state" : "43", "Inst_end_state" : "53"}]},
			{"Name" : "second_order_float_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_float_s_fu_85", "Port" : "second_order_float_sin_cos_K1_V", "Inst_start_state" : "43", "Inst_end_state" : "53"},
					{"ID" : "14", "SubInstance" : "grp_sin_or_cos_float_s_fu_100", "Port" : "second_order_float_sin_cos_K1_V", "Inst_start_state" : "43", "Inst_end_state" : "53"}]},
			{"Name" : "second_order_float_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_sin_or_cos_float_s_fu_85", "Port" : "second_order_float_sin_cos_K2_V", "Inst_start_state" : "43", "Inst_end_state" : "53"},
					{"ID" : "14", "SubInstance" : "grp_sin_or_cos_float_s_fu_100", "Port" : "second_order_float_sin_cos_K2_V", "Inst_start_state" : "43", "Inst_end_state" : "53"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter52", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter52", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "sin_or_cos_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.ref_4oPi_table_100_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.second_order_float_sin_cos_K0_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.second_order_float_sin_cos_K1_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.second_order_float_sin_cos_K2_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.mul_80s_24ns_80_1_1_U1", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.mux_83_1_1_1_U2", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.mux_164_1_1_1_U3", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.mux_164_1_1_1_U4", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.mul_23s_22ns_45_1_1_U5", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.mul_30s_29ns_58_1_1_U6", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.mul_mul_15ns_15ns_30_4_1_U7", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_85.mul_mul_15ns_15s_30_4_1_U8", "Parent" : "1"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "sin_or_cos_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_cos", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "second_order_float_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.ref_4oPi_table_100_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.second_order_float_sin_cos_K0_V_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.second_order_float_sin_cos_K1_V_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.second_order_float_sin_cos_K2_V_U", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.mul_80s_24ns_80_1_1_U1", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.mux_83_1_1_1_U2", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.mux_164_1_1_1_U3", "Parent" : "14"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.mux_164_1_1_1_U4", "Parent" : "14"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.mul_23s_22ns_45_1_1_U5", "Parent" : "14"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.mul_30s_29ns_58_1_1_U6", "Parent" : "14"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.mul_mul_15ns_15ns_30_4_1_U7", "Parent" : "14"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sin_or_cos_float_s_fu_100.mul_mul_15ns_15s_30_4_1_U8", "Parent" : "14"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U23", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U24", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U25", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U26", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U27", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U28", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U29", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1 {
		length_r {Type I LastRead 0 FirstWrite -1}
		conv3 {Type I LastRead 0 FirstWrite -1}
		conv5 {Type I LastRead 0 FirstWrite -1}
		out_stream {Type O LastRead -1 FirstWrite 52}
		ref_4oPi_table_100_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2_V {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2_V {Type I LastRead -1 FirstWrite -1}}
	sin_or_cos_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		do_cos {Type I LastRead 0 FirstWrite -1}
		ref_4oPi_table_100_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	length_r { ap_none {  { length_r in_data 0 32 } } }
	conv3 { ap_none {  { conv3 in_data 0 64 } } }
	conv5 { ap_none {  { conv5 in_data 0 64 } } }
	out_stream { axis {  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDATA out_data 1 64 }  { out_stream_TVALID out_vld 1 1 } } }
}
