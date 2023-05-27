set moduleName cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1
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
set C_modelName {cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_samples int 64 regular {axi_s 0 volatile  { in_samples Data } }  }
	{ arr_real float 32 regular {array 8800 { 0 3 } 0 1 }  }
	{ arr_imag float 32 regular {array 8800 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_samples", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arr_real", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arr_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_samples_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_samples_TDATA sc_in sc_lv 64 signal 0 } 
	{ in_samples_TREADY sc_out sc_logic 1 inacc 0 } 
	{ arr_real_address0 sc_out sc_lv 14 signal 1 } 
	{ arr_real_ce0 sc_out sc_logic 1 signal 1 } 
	{ arr_real_we0 sc_out sc_logic 1 signal 1 } 
	{ arr_real_d0 sc_out sc_lv 32 signal 1 } 
	{ arr_imag_address0 sc_out sc_lv 14 signal 2 } 
	{ arr_imag_ce0 sc_out sc_logic 1 signal 2 } 
	{ arr_imag_we0 sc_out sc_logic 1 signal 2 } 
	{ arr_imag_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_samples_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_samples", "role": "TVALID" }} , 
 	{ "name": "in_samples_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_samples", "role": "TDATA" }} , 
 	{ "name": "in_samples_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_samples", "role": "TREADY" }} , 
 	{ "name": "arr_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "arr_real", "role": "address0" }} , 
 	{ "name": "arr_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_real", "role": "ce0" }} , 
 	{ "name": "arr_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_real", "role": "we0" }} , 
 	{ "name": "arr_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_real", "role": "d0" }} , 
 	{ "name": "arr_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "arr_imag", "role": "address0" }} , 
 	{ "name": "arr_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_imag", "role": "ce0" }} , 
 	{ "name": "arr_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr_imag", "role": "we0" }} , 
 	{ "name": "arr_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arr_imag", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8802", "EstimateLatencyMax" : "8802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_samples", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_samples_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arr_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "arr_imag", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_9_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1 {
		in_samples {Type I LastRead 0 FirstWrite -1}
		arr_real {Type O LastRead -1 FirstWrite 0}
		arr_imag {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8802", "Max" : "8802"}
	, {"Name" : "Interval", "Min" : "8802", "Max" : "8802"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_samples { axis {  { in_samples_TVALID in_vld 0 1 }  { in_samples_TDATA in_data 0 64 }  { in_samples_TREADY in_acc 1 1 } } }
	arr_real { ap_memory {  { arr_real_address0 mem_address 1 14 }  { arr_real_ce0 mem_ce 1 1 }  { arr_real_we0 mem_we 1 1 }  { arr_real_d0 mem_din 1 32 } } }
	arr_imag { ap_memory {  { arr_imag_address0 mem_address 1 14 }  { arr_imag_ce0 mem_ce 1 1 }  { arr_imag_we0 mem_we 1 1 }  { arr_imag_d0 mem_din 1 32 } } }
}
