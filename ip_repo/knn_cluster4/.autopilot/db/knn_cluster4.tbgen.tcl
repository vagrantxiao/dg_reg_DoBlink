set moduleName knn_cluster4
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {knn_cluster4}
set C_modelType { void 0 }
set C_modelArgList {
	{ Input_1_V_V int 32 regular {pointer 0 volatile }  }
	{ Output_1_V_V int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Input_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Input_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Output_1_V_V", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Output_1.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ Input_1_V_V sc_in sc_lv 32 signal 0 } 
	{ Output_1_V_V sc_out sc_lv 32 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ Input_1_V_V_ap_vld sc_in sc_logic 1 invld 0 } 
	{ Input_1_V_V_ap_ack sc_out sc_logic 1 inacc 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ Output_1_V_V_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ Output_1_V_V_ap_ack sc_in sc_logic 1 outacc 1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "Input_1_V_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Input_1_V_V", "role": "default" }} , 
 	{ "name": "Output_1_V_V", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Output_1_V_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "Input_1_V_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Input_1_V_V", "role": "ap_vld" }} , 
 	{ "name": "Input_1_V_V_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Input_1_V_V", "role": "ap_ack" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "Output_1_V_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Output_1_V_V", "role": "ap_vld" }} , 
 	{ "name": "Output_1_V_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Output_1_V_V", "role": "ap_ack" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "11", "16", "21", "36", "37", "38", "39", "40", "41", "42", "43"],
		"CDFG" : "knn_cluster4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22138", "EstimateLatencyMax" : "29326",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "update_knn16_U0"}],
		"OutputProcess" : [
			{"ID" : "21", "Name" : "update_knn20_U0"}],
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "HS", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "Input_1_V_V"}]},
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "Output_1_V_V"}]},
			{"Name" : "index_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "index_4"}]},
			{"Name" : "training_set_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "training_set_V"}]},
			{"Name" : "knn_set_4_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "knn_set_4_0"}]},
			{"Name" : "knn_set_4_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "knn_set_4_1"}]},
			{"Name" : "knn_set_4_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "knn_set_4_2"}]},
			{"Name" : "knn_set_4_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "knn_set_4_3"}]},
			{"Name" : "knn_set_4_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "knn_set_4_4"}]},
			{"Name" : "knn_set_4_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "update_knn16_U0", "Port" : "knn_set_4_5"}]},
			{"Name" : "index_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "update_knn17_U0", "Port" : "index_3"}]},
			{"Name" : "training_set_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "update_knn17_U0", "Port" : "training_set_V_7"}]},
			{"Name" : "knn_set_5_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "update_knn17_U0", "Port" : "knn_set_5_0"}]},
			{"Name" : "knn_set_5_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "update_knn17_U0", "Port" : "knn_set_5_1"}]},
			{"Name" : "knn_set_5_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "update_knn17_U0", "Port" : "knn_set_5_2"}]},
			{"Name" : "knn_set_5_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "update_knn17_U0", "Port" : "knn_set_5_3"}]},
			{"Name" : "knn_set_5_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "update_knn17_U0", "Port" : "knn_set_5_4"}]},
			{"Name" : "knn_set_5_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "update_knn17_U0", "Port" : "knn_set_5_5"}]},
			{"Name" : "index_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "update_knn18_U0", "Port" : "index_2"}]},
			{"Name" : "training_set_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "update_knn18_U0", "Port" : "training_set_V_6"}]},
			{"Name" : "knn_set_6_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "update_knn18_U0", "Port" : "knn_set_6_0"}]},
			{"Name" : "knn_set_6_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "update_knn18_U0", "Port" : "knn_set_6_1"}]},
			{"Name" : "knn_set_6_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "update_knn18_U0", "Port" : "knn_set_6_2"}]},
			{"Name" : "knn_set_6_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "update_knn18_U0", "Port" : "knn_set_6_3"}]},
			{"Name" : "knn_set_6_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "update_knn18_U0", "Port" : "knn_set_6_4"}]},
			{"Name" : "knn_set_6_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "update_knn18_U0", "Port" : "knn_set_6_5"}]},
			{"Name" : "index_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "update_knn19_U0", "Port" : "index_1"}]},
			{"Name" : "training_set_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "update_knn19_U0", "Port" : "training_set_V_5"}]},
			{"Name" : "knn_set_7_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "update_knn19_U0", "Port" : "knn_set_7_0"}]},
			{"Name" : "knn_set_7_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "update_knn19_U0", "Port" : "knn_set_7_1"}]},
			{"Name" : "knn_set_7_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "update_knn19_U0", "Port" : "knn_set_7_2"}]},
			{"Name" : "knn_set_7_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "update_knn19_U0", "Port" : "knn_set_7_3"}]},
			{"Name" : "knn_set_7_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "update_knn19_U0", "Port" : "knn_set_7_4"}]},
			{"Name" : "knn_set_7_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "update_knn19_U0", "Port" : "knn_set_7_5"}]},
			{"Name" : "index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "index"}]},
			{"Name" : "training_set_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "training_set_V_4"}]},
			{"Name" : "knn_set_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "knn_set_0"}]},
			{"Name" : "knn_set_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "knn_set_1"}]},
			{"Name" : "knn_set_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "knn_set_2"}]},
			{"Name" : "knn_set_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "knn_set_3"}]},
			{"Name" : "knn_set_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "knn_set_4"}]},
			{"Name" : "knn_set", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "update_knn20_U0", "Port" : "knn_set"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_knn16_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "update_knn16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "493", "EstimateLatencyMax" : "18496",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "HS", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "index_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "training_set_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "knn_set_4_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_4_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_4_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_4_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_4_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_4_5", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn16_U0.training_set_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn16_U0.grp_popcount_fu_347", "Parent" : "1",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn16_U0.knn_cluster4_mux_cud_U2", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn16_U0.knn_cluster4_mul_dEe_U3", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_knn17_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "update_knn17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "493", "EstimateLatencyMax" : "14896",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_update_lbW_U",
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "index_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "training_set_V_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "knn_set_5_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_5_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_5_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_5_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_5_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_5_5", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn17_U0.training_set_V_7_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn17_U0.grp_popcount_fu_347", "Parent" : "6",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn17_U0.knn_cluster4_mux_cud_U9", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn17_U0.knn_cluster4_mul_dEe_U10", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_knn18_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "update_knn18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "493", "EstimateLatencyMax" : "11296",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "6",
		"StartFifo" : "start_for_update_mb6_U",
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "index_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "training_set_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "knn_set_6_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_6_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_6_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_6_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_6_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_6_5", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn18_U0.training_set_V_6_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn18_U0.grp_popcount_fu_347", "Parent" : "11",
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn18_U0.knn_cluster4_mux_cud_U13", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn18_U0.knn_cluster4_mul_dEe_U14", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_knn19_U0", "Parent" : "0", "Child" : ["17", "18", "19", "20"],
		"CDFG" : "update_knn19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "493", "EstimateLatencyMax" : "7696",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_update_ncg_U",
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "39",
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn19_U0.training_set_V_5_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn19_U0.grp_popcount_fu_339", "Parent" : "16",
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn19_U0.knn_cluster4_mux_cud_U17", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn19_U0.knn_cluster4_mul_dEe_U18", "Parent" : "16"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0", "Parent" : "0", "Child" : ["22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "update_knn20",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "498", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "16",
		"StartFifo" : "start_for_update_ocq_U",
		"Port" : [
			{"Name" : "Input_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "Input_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Output_1_V_V", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Output_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "index", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "training_set_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "knn_set_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "knn_set", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.training_set_V_4_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.grp_popcount_fu_443", "Parent" : "21",
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_cud_U21", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_ibs_U22", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_jbC_U23", "Parent" : "21"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_kbM_U24", "Parent" : "21"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_kbM_U25", "Parent" : "21"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_kbM_U26", "Parent" : "21"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_kbM_U27", "Parent" : "21"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_kbM_U28", "Parent" : "21"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_kbM_U29", "Parent" : "21"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mux_kbM_U30", "Parent" : "21"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.knn_cluster4_mul_dEe_U31", "Parent" : "21"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.update_knn20_U0.regslice_forward_Output_1_V_V_U", "Parent" : "21"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.knn_out1_V_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.knn_out2_V_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.knn_out3_V_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.knn_out4_V_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_update_lbW_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_update_mb6_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_update_ncg_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_update_ocq_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	knn_cluster4 {
		Input_1_V_V {Type I LastRead 19 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 28}
		index_4 {Type IO LastRead -1 FirstWrite -1}
		training_set_V {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_5 {Type IO LastRead -1 FirstWrite -1}
		index_3 {Type IO LastRead -1 FirstWrite -1}
		training_set_V_7 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_5 {Type IO LastRead -1 FirstWrite -1}
		index_2 {Type IO LastRead -1 FirstWrite -1}
		training_set_V_6 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_5 {Type IO LastRead -1 FirstWrite -1}
		index_1 {Type IO LastRead -1 FirstWrite -1}
		training_set_V_5 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_7_5 {Type IO LastRead -1 FirstWrite -1}
		index {Type IO LastRead -1 FirstWrite -1}
		training_set_V_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set {Type IO LastRead -1 FirstWrite -1}}
	update_knn16 {
		Input_1_V_V {Type I LastRead 19 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 4}
		index_4 {Type IO LastRead -1 FirstWrite -1}
		training_set_V {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4_5 {Type IO LastRead -1 FirstWrite -1}}
	popcount {
		x_V {Type I LastRead 0 FirstWrite -1}}
	update_knn17 {
		Input_1_V_V {Type I LastRead 19 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 4}
		index_3 {Type IO LastRead -1 FirstWrite -1}
		training_set_V_7 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_5_5 {Type IO LastRead -1 FirstWrite -1}}
	popcount {
		x_V {Type I LastRead 0 FirstWrite -1}}
	update_knn18 {
		Input_1_V_V {Type I LastRead 19 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 4}
		index_2 {Type IO LastRead -1 FirstWrite -1}
		training_set_V_6 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_6_5 {Type IO LastRead -1 FirstWrite -1}}
	popcount {
		x_V {Type I LastRead 0 FirstWrite -1}}
	update_knn19 {
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
		x_V {Type I LastRead 0 FirstWrite -1}}
	update_knn20 {
		Input_1_V_V {Type I LastRead 17 FirstWrite -1}
		Output_1_V_V {Type O LastRead -1 FirstWrite 28}
		index {Type IO LastRead -1 FirstWrite -1}
		training_set_V_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set_0 {Type IO LastRead -1 FirstWrite -1}
		knn_set_1 {Type IO LastRead -1 FirstWrite -1}
		knn_set_2 {Type IO LastRead -1 FirstWrite -1}
		knn_set_3 {Type IO LastRead -1 FirstWrite -1}
		knn_set_4 {Type IO LastRead -1 FirstWrite -1}
		knn_set {Type IO LastRead -1 FirstWrite -1}}
	popcount {
		x_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22138", "Max" : "29326"}
	, {"Name" : "Interval", "Min" : "499", "Max" : "18497"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Input_1_V_V { ap_hs {  { Input_1_V_V in_data 0 32 }  { Input_1_V_V_ap_vld in_vld 0 1 }  { Input_1_V_V_ap_ack in_acc 1 1 } } }
	Output_1_V_V { ap_hs {  { Output_1_V_V out_data 1 32 }  { Output_1_V_V_ap_vld out_vld 1 1 }  { Output_1_V_V_ap_ack out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

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
