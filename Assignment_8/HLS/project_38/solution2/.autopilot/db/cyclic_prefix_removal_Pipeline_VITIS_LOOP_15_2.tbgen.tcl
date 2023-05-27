set moduleName cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2
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
set C_modelName {cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ arr_real float 32 regular {array 8800 { 1 3 } 1 1 }  }
	{ arr_imag float 32 regular {array 8800 { 1 3 } 1 1 }  }
	{ out_samples int 64 regular {axi_s 1 volatile  { out_samples Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arr_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arr_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_samples", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_samples_TREADY sc_in sc_logic 1 outacc 2 } 
	{ arr_real_address0 sc_out sc_lv 14 signal 0 } 
	{ arr_real_ce0 sc_out sc_logic 1 signal 0 } 
	{ arr_real_q0 sc_in sc_lv 32 signal 0 } 
	{ arr_imag_address0 sc_out sc_lv 14 signal 1 } 
	{ arr_imag_ce0 sc_out sc_logic 1 signal 1 } 
	{ arr_imag_q0 sc_in sc_lv 32 signal 1 } 
	{ out_samples_TDATA sc_out sc_lv 64 signal 2 } 
	{ out_samples_TVALID sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_samples_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_samples", "role": "TREADY" }} , 
 	{ "name": "arr_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "arr_real", "role": "address0" }} , 
 	{ "name": "arr_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_real", "role": "ce0" }} , 
 	{ "name": "arr_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_real", "role": "q0" }} , 
 	{ "name": "arr_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "arr_imag", "role": "address0" }} , 
 	{ "name": "arr_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_imag", "role": "ce0" }} , 
 	{ "name": "arr_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_imag", "role": "q0" }} , 
 	{ "name": "out_samples_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_samples", "role": "TDATA" }} , 
 	{ "name": "out_samples_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_samples", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8194", "EstimateLatencyMax" : "8194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arr_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "arr_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_samples", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_samples_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2 {
		arr_real {Type I LastRead 1 FirstWrite -1}
		arr_imag {Type I LastRead 1 FirstWrite -1}
		out_samples {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8194", "Max" : "8194"}
	, {"Name" : "Interval", "Min" : "8194", "Max" : "8194"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arr_real { ap_memory {  { arr_real_address0 mem_address 1 14 }  { arr_real_ce0 mem_ce 1 1 }  { arr_real_q0 in_data 0 32 } } }
	arr_imag { ap_memory {  { arr_imag_address0 mem_address 1 14 }  { arr_imag_ce0 mem_ce 1 1 }  { arr_imag_q0 in_data 0 32 } } }
	out_samples { axis {  { out_samples_TREADY out_acc 0 1 }  { out_samples_TDATA out_data 1 64 }  { out_samples_TVALID out_vld 1 1 } } }
}
