set moduleName dut_Pipeline_VITIS_LOOP_28_2
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
set C_modelName {dut_Pipeline_VITIS_LOOP_28_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln int 6 regular  }
	{ zext_ln30_1 int 3 regular  }
	{ zext_ln30_2 int 4 regular  }
	{ zext_ln30_3 int 5 regular  }
	{ zext_ln30_4 int 4 regular  }
	{ zext_ln30_5 int 6 regular  }
	{ zext_ln30_6 int 6 regular  }
	{ zext_ln30_7 int 5 regular  }
	{ zext_ln30_8 int 4 regular  }
	{ output_r int 8 regular {axi_s 1 volatile  { output_r Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30_1", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30_2", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30_3", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30_4", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30_5", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30_6", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30_7", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30_8", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_r_TREADY sc_in sc_logic 1 outacc 9 } 
	{ trunc_ln sc_in sc_lv 6 signal 0 } 
	{ zext_ln30_1 sc_in sc_lv 3 signal 1 } 
	{ zext_ln30_2 sc_in sc_lv 4 signal 2 } 
	{ zext_ln30_3 sc_in sc_lv 5 signal 3 } 
	{ zext_ln30_4 sc_in sc_lv 4 signal 4 } 
	{ zext_ln30_5 sc_in sc_lv 6 signal 5 } 
	{ zext_ln30_6 sc_in sc_lv 6 signal 6 } 
	{ zext_ln30_7 sc_in sc_lv 5 signal 7 } 
	{ zext_ln30_8 sc_in sc_lv 4 signal 8 } 
	{ output_r_TDATA sc_out sc_lv 8 signal 9 } 
	{ output_r_TVALID sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_r", "role": "TREADY" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "zext_ln30_1", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln30_1", "role": "default" }} , 
 	{ "name": "zext_ln30_2", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln30_2", "role": "default" }} , 
 	{ "name": "zext_ln30_3", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "zext_ln30_3", "role": "default" }} , 
 	{ "name": "zext_ln30_4", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln30_4", "role": "default" }} , 
 	{ "name": "zext_ln30_5", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln30_5", "role": "default" }} , 
 	{ "name": "zext_ln30_6", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln30_6", "role": "default" }} , 
 	{ "name": "zext_ln30_7", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "zext_ln30_7", "role": "default" }} , 
 	{ "name": "zext_ln30_8", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln30_8", "role": "default" }} , 
 	{ "name": "output_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_r", "role": "TDATA" }} , 
 	{ "name": "output_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_r", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "dut_Pipeline_VITIS_LOOP_28_2",
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
			{"Name" : "zext_ln30_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_8_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dut_Pipeline_VITIS_LOOP_28_2 {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		zext_ln30_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln30_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln30_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln30_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln30_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln30_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln30_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln30_8 {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln { ap_none {  { trunc_ln in_data 0 6 } } }
	zext_ln30_1 { ap_none {  { zext_ln30_1 in_data 0 3 } } }
	zext_ln30_2 { ap_none {  { zext_ln30_2 in_data 0 4 } } }
	zext_ln30_3 { ap_none {  { zext_ln30_3 in_data 0 5 } } }
	zext_ln30_4 { ap_none {  { zext_ln30_4 in_data 0 4 } } }
	zext_ln30_5 { ap_none {  { zext_ln30_5 in_data 0 6 } } }
	zext_ln30_6 { ap_none {  { zext_ln30_6 in_data 0 6 } } }
	zext_ln30_7 { ap_none {  { zext_ln30_7 in_data 0 5 } } }
	zext_ln30_8 { ap_none {  { zext_ln30_8 in_data 0 4 } } }
	output_r { axis {  { output_r_TREADY out_acc 0 1 }  { output_r_TDATA out_data 1 8 }  { output_r_TVALID out_vld 1 1 } } }
}
