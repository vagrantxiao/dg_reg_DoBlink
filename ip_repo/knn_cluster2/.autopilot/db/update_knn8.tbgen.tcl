set moduleName update_knn8
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {update_knn8}
set C_modelType { void 0 }
set C_modelArgList {
	{ Input_1_V_V int 32 regular {fifo 0 volatile }  }
	{ Output_1_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Input_1_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Output_1_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ Input_1_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ Input_1_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ Input_1_V_V_read sc_out sc_logic 1 signal 0 } 
	{ Output_1_V_V_din sc_out sc_lv 32 signal 1 } 
	{ Output_1_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ Output_1_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "Input_1_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Input_1_V_V", "role": "dout" }} , 
 	{ "name": "Input_1_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Input_1_V_V", "role": "empty_n" }} , 
 	{ "name": "Input_1_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Input_1_V_V", "role": "read" }} , 
 	{ "name": "Output_1_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_1_V_V", "role": "din" }} , 
 	{ "name": "Output_1_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Output_1_V_V", "role": "full_n" }} , 
 	{ "name": "Output_1_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Output_1_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "update_knn8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "493", "EstimateLatencyMax" : "47296",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "index_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "training_set_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "knn_set_7_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_7_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_7_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_7_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_7_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_7_5", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.training_set_V_5_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_popcount_fu_347", "Parent" : "0",
		"CDFG" : "popcount",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.knn_cluster2_mux_cud_U13", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.knn_cluster2_mul_dEe_U14", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	update_knn8 {
		Input_1_V_V {Type I LastRead 19 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 4}
		index_1 {Type IO LastRead -1 FirstWrite -1}
		training_set_V_5 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_5 {Type IO LastRead -1 FirstWrite -1}}
	popcount {
		x_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "493", "Max" : "47296"}
	, {"Name" : "Interval", "Min" : "493", "Max" : "47296"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	Input_1_V_V { ap_fifo {  { Input_1_V_V_dout fifo_data 0 32 }  { Input_1_V_V_empty_n fifo_status 0 1 }  { Input_1_V_V_read fifo_update 1 1 } } }
	Output_1_V_V { ap_fifo {  { Output_1_V_V_din fifo_data 1 32 }  { Output_1_V_V_full_n fifo_status 0 1 }  { Output_1_V_V_write fifo_update 1 1 } } }
}
