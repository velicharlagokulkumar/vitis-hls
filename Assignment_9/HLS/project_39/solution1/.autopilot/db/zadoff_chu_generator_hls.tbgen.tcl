set moduleName zadoff_chu_generator_hls
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
set C_modelName {zadoff_chu_generator_hls}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_stream int 64 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ length_r int 32 regular  }
	{ u int 32 regular  }
	{ tlast int 8 regular {axi_s 1 volatile  { tlast Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_stream", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "length_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tlast", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_stream_TDATA sc_out sc_lv 64 signal 0 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 0 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 0 } 
	{ length_r sc_in sc_lv 32 signal 1 } 
	{ u sc_in sc_lv 32 signal 2 } 
	{ tlast_TDATA sc_out sc_lv 8 signal 3 } 
	{ tlast_TVALID sc_out sc_logic 1 outvld 3 } 
	{ tlast_TREADY sc_in sc_logic 1 outacc 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_stream", "role": "TDATA" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream", "role": "TVALID" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream", "role": "TREADY" }} , 
 	{ "name": "length_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_r", "role": "default" }} , 
 	{ "name": "u", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u", "role": "default" }} , 
 	{ "name": "tlast_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tlast", "role": "TDATA" }} , 
 	{ "name": "tlast_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tlast", "role": "TVALID" }} , 
 	{ "name": "tlast_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tlast", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "36", "37"],
		"CDFG" : "zadoff_chu_generator_hls",
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
			{"Name" : "out_stream", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64", "Port" : "out_stream", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "length_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"},
			{"Name" : "tlast", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "tlast_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ref_4oPi_table_100_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64", "Port" : "ref_4oPi_table_100_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "second_order_float_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64", "Port" : "second_order_float_sin_cos_K0_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "second_order_float_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64", "Port" : "second_order_float_sin_cos_K1_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "second_order_float_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64", "Port" : "second_order_float_sin_cos_K2_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64", "Parent" : "0", "Child" : ["2", "15", "28", "29", "30", "31", "32", "33", "34", "35"],
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
					{"ID" : "2", "SubInstance" : "grp_sin_or_cos_float_s_fu_85", "Port" : "ref_4oPi_table_100_V", "Inst_start_state" : "43", "Inst_end_state" : "53"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_float_s_fu_100", "Port" : "ref_4oPi_table_100_V", "Inst_start_state" : "43", "Inst_end_state" : "53"}]},
			{"Name" : "second_order_float_sin_cos_K0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_or_cos_float_s_fu_85", "Port" : "second_order_float_sin_cos_K0_V", "Inst_start_state" : "43", "Inst_end_state" : "53"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_float_s_fu_100", "Port" : "second_order_float_sin_cos_K0_V", "Inst_start_state" : "43", "Inst_end_state" : "53"}]},
			{"Name" : "second_order_float_sin_cos_K1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_or_cos_float_s_fu_85", "Port" : "second_order_float_sin_cos_K1_V", "Inst_start_state" : "43", "Inst_end_state" : "53"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_float_s_fu_100", "Port" : "second_order_float_sin_cos_K1_V", "Inst_start_state" : "43", "Inst_end_state" : "53"}]},
			{"Name" : "second_order_float_sin_cos_K2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sin_or_cos_float_s_fu_85", "Port" : "second_order_float_sin_cos_K2_V", "Inst_start_state" : "43", "Inst_end_state" : "53"},
					{"ID" : "15", "SubInstance" : "grp_sin_or_cos_float_s_fu_100", "Port" : "second_order_float_sin_cos_K2_V", "Inst_start_state" : "43", "Inst_end_state" : "53"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_12_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter52", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter52", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.ref_4oPi_table_100_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.second_order_float_sin_cos_K0_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.second_order_float_sin_cos_K1_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.second_order_float_sin_cos_K2_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.mul_80s_24ns_80_1_1_U1", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.mux_83_1_1_1_U2", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.mux_164_1_1_1_U3", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.mux_164_1_1_1_U4", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.mul_23s_22ns_45_1_1_U5", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.mul_30s_29ns_58_1_1_U6", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.mul_mul_15ns_15ns_30_4_1_U7", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_85.mul_mul_15ns_15s_30_4_1_U8", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100", "Parent" : "1", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
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
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.ref_4oPi_table_100_V_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.second_order_float_sin_cos_K0_V_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.second_order_float_sin_cos_K1_V_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.second_order_float_sin_cos_K2_V_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.mul_80s_24ns_80_1_1_U1", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.mux_83_1_1_1_U2", "Parent" : "15"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.mux_164_1_1_1_U3", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.mux_164_1_1_1_U4", "Parent" : "15"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.mul_23s_22ns_45_1_1_U5", "Parent" : "15"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.mul_30s_29ns_58_1_1_U6", "Parent" : "15"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.mul_mul_15ns_15ns_30_4_1_U7", "Parent" : "15"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.grp_sin_or_cos_float_s_fu_100.mul_mul_15ns_15s_30_4_1_U8", "Parent" : "15"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.fptrunc_64ns_32_2_no_dsp_1_U23", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.dmul_64ns_64ns_64_5_max_dsp_1_U24", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.dmul_64ns_64ns_64_5_max_dsp_1_U25", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.dmul_64ns_64ns_64_5_max_dsp_1_U26", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.ddiv_64ns_64ns_64_22_no_dsp_1_U27", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.sitodp_32ns_64_4_no_dsp_1_U28", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.sitodp_32ns_64_4_no_dsp_1_U29", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_zadoff_chu_generator_hls_Pipeline_VITIS_LOOP_12_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U38", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_4_no_dsp_1_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	zadoff_chu_generator_hls {
		out_stream {Type O LastRead -1 FirstWrite 52}
		length_r {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		tlast {Type O LastRead -1 FirstWrite 6}
		ref_4oPi_table_100_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K0_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K1_V {Type I LastRead -1 FirstWrite -1}
		second_order_float_sin_cos_K2_V {Type I LastRead -1 FirstWrite -1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out_stream { axis {  { out_stream_TDATA out_data 1 64 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
	length_r { ap_none {  { length_r in_data 0 32 } } }
	u { ap_none {  { u in_data 0 32 } } }
	tlast { axis {  { tlast_TDATA out_data 1 8 }  { tlast_TVALID out_vld 1 1 }  { tlast_TREADY out_acc 0 1 } } }
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
