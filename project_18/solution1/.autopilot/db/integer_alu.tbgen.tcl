set moduleName integer_alu
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {integer_alu}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1 int 8 regular {axi_s 0 volatile  { in1 Data } }  }
	{ in2 int 8 regular {axi_s 0 volatile  { in2 Data } }  }
	{ op int 8 regular {axi_s 0 volatile  { op Data } }  }
	{ out_r int 16 regular {axi_s 1 volatile  { out_r Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in2", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "op", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_TVALID sc_in sc_logic 1 invld 0 } 
	{ in2_TVALID sc_in sc_logic 1 invld 1 } 
	{ op_TVALID sc_in sc_logic 1 invld 2 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 3 } 
	{ in1_TDATA sc_in sc_lv 8 signal 0 } 
	{ in1_TREADY sc_out sc_logic 1 inacc 0 } 
	{ in2_TDATA sc_in sc_lv 8 signal 1 } 
	{ in2_TREADY sc_out sc_logic 1 inacc 1 } 
	{ op_TDATA sc_in sc_lv 8 signal 2 } 
	{ op_TREADY sc_out sc_logic 1 inacc 2 } 
	{ out_r_TDATA sc_out sc_lv 16 signal 3 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in1", "role": "TVALID" }} , 
 	{ "name": "in2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in2", "role": "TVALID" }} , 
 	{ "name": "op_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "op", "role": "TVALID" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_r", "role": "TREADY" }} , 
 	{ "name": "in1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in1", "role": "TDATA" }} , 
 	{ "name": "in1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in1", "role": "TREADY" }} , 
 	{ "name": "in2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2", "role": "TDATA" }} , 
 	{ "name": "in2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in2", "role": "TREADY" }} , 
 	{ "name": "op_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "op", "role": "TDATA" }} , 
 	{ "name": "op_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "op", "role": "TREADY" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_r", "role": "TDATA" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_r", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "integer_alu",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "13", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in1", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "op", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "op_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_r", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_9s_8s_9_13_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_op_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_r_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	integer_alu {
		in1 {Type I LastRead 0 FirstWrite -1}
		in2 {Type I LastRead 0 FirstWrite -1}
		op {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 12}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1 { axis {  { in1_TVALID in_vld 0 1 }  { in1_TDATA in_data 0 8 }  { in1_TREADY in_acc 1 1 } } }
	in2 { axis {  { in2_TVALID in_vld 0 1 }  { in2_TDATA in_data 0 8 }  { in2_TREADY in_acc 1 1 } } }
	op { axis {  { op_TVALID in_vld 0 1 }  { op_TDATA in_data 0 8 }  { op_TREADY in_acc 1 1 } } }
	out_r { axis {  { out_r_TREADY out_acc 0 1 }  { out_r_TDATA out_data 1 16 }  { out_r_TVALID out_vld 1 1 } } }
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
