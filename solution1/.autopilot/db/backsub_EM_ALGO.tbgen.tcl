set moduleName backsub_EM_ALGO
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {backsub_EM_ALGO}
set C_modelType { int 1 }
set C_modelArgList { 
	{ pixel uint 8 regular  }
	{ pos_r int 9 regular  }
	{ parameters float 32 regular {array 1800 { 2 2 } 1 1 }  }
	{ x int 9 regular  }
	{ back_gauss int 1 regular {array 153600 { 2 0 } 1 1 } {global 2}  }
	{ matchsum int 8 regular {array 153600 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pixel", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pos_r", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "parameters", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "x", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "back_gauss", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "back_gauss","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 76799,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "matchsum", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "matchsum","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 76799,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pixel sc_in sc_lv 8 signal 0 } 
	{ pos_r sc_in sc_lv 9 signal 1 } 
	{ parameters_address0 sc_out sc_lv 11 signal 2 } 
	{ parameters_ce0 sc_out sc_logic 1 signal 2 } 
	{ parameters_we0 sc_out sc_logic 1 signal 2 } 
	{ parameters_d0 sc_out sc_lv 32 signal 2 } 
	{ parameters_q0 sc_in sc_lv 32 signal 2 } 
	{ parameters_address1 sc_out sc_lv 11 signal 2 } 
	{ parameters_ce1 sc_out sc_logic 1 signal 2 } 
	{ parameters_we1 sc_out sc_logic 1 signal 2 } 
	{ parameters_d1 sc_out sc_lv 32 signal 2 } 
	{ parameters_q1 sc_in sc_lv 32 signal 2 } 
	{ x sc_in sc_lv 9 signal 3 } 
	{ back_gauss_address0 sc_out sc_lv 18 signal 4 } 
	{ back_gauss_ce0 sc_out sc_logic 1 signal 4 } 
	{ back_gauss_we0 sc_out sc_logic 1 signal 4 } 
	{ back_gauss_d0 sc_out sc_lv 1 signal 4 } 
	{ back_gauss_q0 sc_in sc_lv 1 signal 4 } 
	{ back_gauss_address1 sc_out sc_lv 18 signal 4 } 
	{ back_gauss_ce1 sc_out sc_logic 1 signal 4 } 
	{ back_gauss_we1 sc_out sc_logic 1 signal 4 } 
	{ back_gauss_d1 sc_out sc_lv 1 signal 4 } 
	{ matchsum_address0 sc_out sc_lv 18 signal 5 } 
	{ matchsum_ce0 sc_out sc_logic 1 signal 5 } 
	{ matchsum_we0 sc_out sc_logic 1 signal 5 } 
	{ matchsum_d0 sc_out sc_lv 8 signal 5 } 
	{ matchsum_q0 sc_in sc_lv 8 signal 5 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pixel", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pixel", "role": "default" }} , 
 	{ "name": "pos_r", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_r", "role": "default" }} , 
 	{ "name": "parameters_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "parameters", "role": "address0" }} , 
 	{ "name": "parameters_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "ce0" }} , 
 	{ "name": "parameters_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "we0" }} , 
 	{ "name": "parameters_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "d0" }} , 
 	{ "name": "parameters_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "q0" }} , 
 	{ "name": "parameters_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "parameters", "role": "address1" }} , 
 	{ "name": "parameters_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "ce1" }} , 
 	{ "name": "parameters_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "we1" }} , 
 	{ "name": "parameters_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "d1" }} , 
 	{ "name": "parameters_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "q1" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
 	{ "name": "back_gauss_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "back_gauss", "role": "address0" }} , 
 	{ "name": "back_gauss_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "back_gauss", "role": "ce0" }} , 
 	{ "name": "back_gauss_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "back_gauss", "role": "we0" }} , 
 	{ "name": "back_gauss_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "back_gauss", "role": "d0" }} , 
 	{ "name": "back_gauss_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "back_gauss", "role": "q0" }} , 
 	{ "name": "back_gauss_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "back_gauss", "role": "address1" }} , 
 	{ "name": "back_gauss_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "back_gauss", "role": "ce1" }} , 
 	{ "name": "back_gauss_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "back_gauss", "role": "we1" }} , 
 	{ "name": "back_gauss_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "back_gauss", "role": "d1" }} , 
 	{ "name": "matchsum_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "matchsum", "role": "address0" }} , 
 	{ "name": "matchsum_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matchsum", "role": "ce0" }} , 
 	{ "name": "matchsum_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matchsum", "role": "we0" }} , 
 	{ "name": "matchsum_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "matchsum", "role": "d0" }} , 
 	{ "name": "matchsum_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "matchsum", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}
set Spec2ImplPortList { 
	pixel { ap_none {  { pixel in_data 0 8 } } }
	pos_r { ap_none {  { pos_r in_data 0 9 } } }
	parameters { ap_memory {  { parameters_address0 mem_address 1 11 }  { parameters_ce0 mem_ce 1 1 }  { parameters_we0 mem_we 1 1 }  { parameters_d0 mem_din 1 32 }  { parameters_q0 mem_dout 0 32 }  { parameters_address1 mem_address 1 11 }  { parameters_ce1 mem_ce 1 1 }  { parameters_we1 mem_we 1 1 }  { parameters_d1 mem_din 1 32 }  { parameters_q1 mem_dout 0 32 } } }
	x { ap_none {  { x in_data 0 9 } } }
	back_gauss { ap_memory {  { back_gauss_address0 mem_address 1 18 }  { back_gauss_ce0 mem_ce 1 1 }  { back_gauss_we0 mem_we 1 1 }  { back_gauss_d0 mem_din 1 1 }  { back_gauss_q0 mem_dout 0 1 }  { back_gauss_address1 mem_address 1 18 }  { back_gauss_ce1 mem_ce 1 1 }  { back_gauss_we1 mem_we 1 1 }  { back_gauss_d1 mem_din 1 1 } } }
	matchsum { ap_memory {  { matchsum_address0 mem_address 1 18 }  { matchsum_ce0 mem_ce 1 1 }  { matchsum_we0 mem_we 1 1 }  { matchsum_d0 mem_din 1 8 }  { matchsum_q0 mem_dout 0 8 } } }
}
