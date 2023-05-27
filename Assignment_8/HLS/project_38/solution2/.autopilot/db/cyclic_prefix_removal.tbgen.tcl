set moduleName cyclic_prefix_removal
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
set C_modelName {cyclic_prefix_removal}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_samples int 64 regular {axi_s 0 volatile  { in_samples Data } }  }
	{ out_samples int 64 regular {axi_s 1 volatile  { out_samples Data } }  }
	{ t_last int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_samples", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "out_samples", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_last", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_samples_TDATA sc_in sc_lv 64 signal 0 } 
	{ in_samples_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_samples_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_samples_TDATA sc_out sc_lv 64 signal 1 } 
	{ out_samples_TVALID sc_out sc_logic 1 outvld 1 } 
	{ out_samples_TREADY sc_in sc_logic 1 outacc 1 } 
	{ t_last_din sc_out sc_lv 1 signal 2 } 
	{ t_last_full_n sc_in sc_logic 1 signal 2 } 
	{ t_last_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_samples_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in_samples", "role": "TDATA" }} , 
 	{ "name": "in_samples_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_samples", "role": "TVALID" }} , 
 	{ "name": "in_samples_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_samples", "role": "TREADY" }} , 
 	{ "name": "out_samples_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_samples", "role": "TDATA" }} , 
 	{ "name": "out_samples_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_samples", "role": "TVALID" }} , 
 	{ "name": "out_samples_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_samples", "role": "TREADY" }} , 
 	{ "name": "t_last_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "t_last", "role": "din" }} , 
 	{ "name": "t_last_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_last", "role": "full_n" }} , 
 	{ "name": "t_last_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_last", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "8"],
		"CDFG" : "cyclic_prefix_removal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17002", "EstimateLatencyMax" : "17002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_samples", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1_fu_56", "Port" : "in_samples", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_samples", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2_fu_64", "Port" : "out_samples", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "t_last", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "t_last_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arr_imag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1_fu_56", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2_fu_64", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_samples_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_samples_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cyclic_prefix_removal {
		in_samples {Type I LastRead 0 FirstWrite -1}
		out_samples {Type O LastRead -1 FirstWrite 1}
		t_last {Type O LastRead -1 FirstWrite 6}}
	cyclic_prefix_removal_Pipeline_VITIS_LOOP_9_1 {
		in_samples {Type I LastRead 0 FirstWrite -1}
		arr_real {Type O LastRead -1 FirstWrite 0}
		arr_imag {Type O LastRead -1 FirstWrite 0}}
	cyclic_prefix_removal_Pipeline_VITIS_LOOP_15_2 {
		arr_real {Type I LastRead 1 FirstWrite -1}
		arr_imag {Type I LastRead 1 FirstWrite -1}
		out_samples {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17002", "Max" : "17002"}
	, {"Name" : "Interval", "Min" : "17003", "Max" : "17003"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_samples { axis {  { in_samples_TDATA in_data 0 64 }  { in_samples_TVALID in_vld 0 1 }  { in_samples_TREADY in_acc 1 1 } } }
	out_samples { axis {  { out_samples_TDATA out_data 1 64 }  { out_samples_TVALID out_vld 1 1 }  { out_samples_TREADY out_acc 0 1 } } }
	t_last { ap_fifo {  { t_last_din fifo_port_we 1 1 }  { t_last_full_n fifo_status 0 1 }  { t_last_write fifo_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	t_last { fifo_write 1 no_conditional }
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
