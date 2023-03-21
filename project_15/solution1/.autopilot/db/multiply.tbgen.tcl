set moduleName multiply
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {multiply}
set C_modelType { void 0 }
set C_modelArgList {
	{ A int 32 regular {axi_s 0 volatile  { A Data } }  }
	{ B int 32 regular {axi_s 0 volatile  { B Data } }  }
	{ C int 56 regular {axi_s 1 volatile  { C Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "axis", "bitwidth" : 56, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ A_TDATA sc_in sc_lv 32 signal 0 } 
	{ A_TVALID sc_in sc_logic 1 invld 0 } 
	{ A_TREADY sc_out sc_logic 1 inacc 0 } 
	{ B_TDATA sc_in sc_lv 32 signal 1 } 
	{ B_TVALID sc_in sc_logic 1 invld 1 } 
	{ B_TREADY sc_out sc_logic 1 inacc 1 } 
	{ C_TDATA sc_out sc_lv 56 signal 2 } 
	{ C_TVALID sc_out sc_logic 1 outvld 2 } 
	{ C_TREADY sc_in sc_logic 1 outacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "TDATA" }} , 
 	{ "name": "A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "A", "role": "TVALID" }} , 
 	{ "name": "A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "A", "role": "TREADY" }} , 
 	{ "name": "B_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "TDATA" }} , 
 	{ "name": "B_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "B", "role": "TVALID" }} , 
 	{ "name": "B_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "B", "role": "TREADY" }} , 
 	{ "name": "C_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":56, "type": "signal", "bundle":{"name": "C", "role": "TDATA" }} , 
 	{ "name": "C_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C", "role": "TVALID" }} , 
 	{ "name": "C_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "C", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "multiply",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "B_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "C", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "C_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_56_3_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_C_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	multiply {
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { axis {  { A_TDATA in_data 0 32 }  { A_TVALID in_vld 0 1 }  { A_TREADY in_acc 1 1 } } }
	B { axis {  { B_TDATA in_data 0 32 }  { B_TVALID in_vld 0 1 }  { B_TREADY in_acc 1 1 } } }
	C { axis {  { C_TDATA out_data 1 56 }  { C_TVALID out_vld 1 1 }  { C_TREADY out_acc 0 1 } } }
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
