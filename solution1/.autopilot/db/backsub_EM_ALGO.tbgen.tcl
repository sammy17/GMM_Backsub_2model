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
	{ pos_r int 10 regular  }
	{ parameters float 32 regular {axi_master 2}  }
	{ para5 int 30 regular  }
	{ tmp_25 int 19 regular  }
	{ x int 8 regular  }
	{ back_gauss int 1 regular {array 153600 { 2 0 } 1 1 } {global 2}  }
	{ matchsum int 8 regular {array 153600 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pixel", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pos_r", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "parameters", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "para5", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_25", "interface" : "wire", "bitwidth" : 19, "direction" : "READONLY"} , 
 	{ "Name" : "x", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "back_gauss", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "back_gauss","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 76799,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "matchsum", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "matchsum","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 76799,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 71
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pixel sc_in sc_lv 8 signal 0 } 
	{ pos_r sc_in sc_lv 10 signal 1 } 
	{ m_axi_parameters_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_parameters_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_parameters_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_parameters_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_parameters_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_parameters_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_parameters_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_parameters_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_parameters_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_parameters_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_parameters_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_parameters_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_parameters_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_parameters_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_parameters_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_parameters_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_parameters_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_parameters_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_parameters_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_parameters_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_parameters_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_parameters_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_parameters_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_parameters_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_parameters_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_parameters_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_parameters_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_parameters_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_parameters_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_parameters_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_parameters_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_parameters_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_parameters_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_parameters_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_parameters_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_parameters_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_parameters_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_parameters_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_parameters_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_parameters_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_parameters_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_parameters_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_parameters_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_parameters_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_parameters_BUSER sc_in sc_lv 1 signal 2 } 
	{ para5 sc_in sc_lv 30 signal 3 } 
	{ tmp_25 sc_in sc_lv 19 signal 4 } 
	{ x sc_in sc_lv 8 signal 5 } 
	{ back_gauss_address0 sc_out sc_lv 18 signal 6 } 
	{ back_gauss_ce0 sc_out sc_logic 1 signal 6 } 
	{ back_gauss_we0 sc_out sc_logic 1 signal 6 } 
	{ back_gauss_d0 sc_out sc_lv 1 signal 6 } 
	{ back_gauss_q0 sc_in sc_lv 1 signal 6 } 
	{ back_gauss_address1 sc_out sc_lv 18 signal 6 } 
	{ back_gauss_ce1 sc_out sc_logic 1 signal 6 } 
	{ back_gauss_we1 sc_out sc_logic 1 signal 6 } 
	{ back_gauss_d1 sc_out sc_lv 1 signal 6 } 
	{ matchsum_address0 sc_out sc_lv 18 signal 7 } 
	{ matchsum_ce0 sc_out sc_logic 1 signal 7 } 
	{ matchsum_we0 sc_out sc_logic 1 signal 7 } 
	{ matchsum_d0 sc_out sc_lv 8 signal 7 } 
	{ matchsum_q0 sc_in sc_lv 8 signal 7 } 
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
 	{ "name": "pos_r", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "pos_r", "role": "default" }} , 
 	{ "name": "m_axi_parameters_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "AWVALID" }} , 
 	{ "name": "m_axi_parameters_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "AWREADY" }} , 
 	{ "name": "m_axi_parameters_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "AWADDR" }} , 
 	{ "name": "m_axi_parameters_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "AWID" }} , 
 	{ "name": "m_axi_parameters_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "AWLEN" }} , 
 	{ "name": "m_axi_parameters_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "parameters", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_parameters_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "parameters", "role": "AWBURST" }} , 
 	{ "name": "m_axi_parameters_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "parameters", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_parameters_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parameters", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_parameters_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "parameters", "role": "AWPROT" }} , 
 	{ "name": "m_axi_parameters_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parameters", "role": "AWQOS" }} , 
 	{ "name": "m_axi_parameters_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parameters", "role": "AWREGION" }} , 
 	{ "name": "m_axi_parameters_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "AWUSER" }} , 
 	{ "name": "m_axi_parameters_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "WVALID" }} , 
 	{ "name": "m_axi_parameters_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "WREADY" }} , 
 	{ "name": "m_axi_parameters_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "WDATA" }} , 
 	{ "name": "m_axi_parameters_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parameters", "role": "WSTRB" }} , 
 	{ "name": "m_axi_parameters_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "WLAST" }} , 
 	{ "name": "m_axi_parameters_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "WID" }} , 
 	{ "name": "m_axi_parameters_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "WUSER" }} , 
 	{ "name": "m_axi_parameters_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "ARVALID" }} , 
 	{ "name": "m_axi_parameters_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "ARREADY" }} , 
 	{ "name": "m_axi_parameters_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "ARADDR" }} , 
 	{ "name": "m_axi_parameters_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "ARID" }} , 
 	{ "name": "m_axi_parameters_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "ARLEN" }} , 
 	{ "name": "m_axi_parameters_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "parameters", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_parameters_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "parameters", "role": "ARBURST" }} , 
 	{ "name": "m_axi_parameters_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "parameters", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_parameters_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parameters", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_parameters_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "parameters", "role": "ARPROT" }} , 
 	{ "name": "m_axi_parameters_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parameters", "role": "ARQOS" }} , 
 	{ "name": "m_axi_parameters_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "parameters", "role": "ARREGION" }} , 
 	{ "name": "m_axi_parameters_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "ARUSER" }} , 
 	{ "name": "m_axi_parameters_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "RVALID" }} , 
 	{ "name": "m_axi_parameters_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "RREADY" }} , 
 	{ "name": "m_axi_parameters_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "parameters", "role": "RDATA" }} , 
 	{ "name": "m_axi_parameters_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "RLAST" }} , 
 	{ "name": "m_axi_parameters_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "RID" }} , 
 	{ "name": "m_axi_parameters_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "RUSER" }} , 
 	{ "name": "m_axi_parameters_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "parameters", "role": "RRESP" }} , 
 	{ "name": "m_axi_parameters_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "BVALID" }} , 
 	{ "name": "m_axi_parameters_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "BREADY" }} , 
 	{ "name": "m_axi_parameters_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "parameters", "role": "BRESP" }} , 
 	{ "name": "m_axi_parameters_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "BID" }} , 
 	{ "name": "m_axi_parameters_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "parameters", "role": "BUSER" }} , 
 	{ "name": "para5", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "para5", "role": "default" }} , 
 	{ "name": "tmp_25", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "tmp_25", "role": "default" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
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
	pos_r { ap_none {  { pos_r in_data 0 10 } } }
	parameters { m_axi {  { m_axi_parameters_AWVALID VALID 1 1 }  { m_axi_parameters_AWREADY READY 0 1 }  { m_axi_parameters_AWADDR ADDR 1 32 }  { m_axi_parameters_AWID ID 1 1 }  { m_axi_parameters_AWLEN LEN 1 32 }  { m_axi_parameters_AWSIZE SIZE 1 3 }  { m_axi_parameters_AWBURST BURST 1 2 }  { m_axi_parameters_AWLOCK LOCK 1 2 }  { m_axi_parameters_AWCACHE CACHE 1 4 }  { m_axi_parameters_AWPROT PROT 1 3 }  { m_axi_parameters_AWQOS QOS 1 4 }  { m_axi_parameters_AWREGION REGION 1 4 }  { m_axi_parameters_AWUSER USER 1 1 }  { m_axi_parameters_WVALID VALID 1 1 }  { m_axi_parameters_WREADY READY 0 1 }  { m_axi_parameters_WDATA DATA 1 32 }  { m_axi_parameters_WSTRB STRB 1 4 }  { m_axi_parameters_WLAST LAST 1 1 }  { m_axi_parameters_WID ID 1 1 }  { m_axi_parameters_WUSER USER 1 1 }  { m_axi_parameters_ARVALID VALID 1 1 }  { m_axi_parameters_ARREADY READY 0 1 }  { m_axi_parameters_ARADDR ADDR 1 32 }  { m_axi_parameters_ARID ID 1 1 }  { m_axi_parameters_ARLEN LEN 1 32 }  { m_axi_parameters_ARSIZE SIZE 1 3 }  { m_axi_parameters_ARBURST BURST 1 2 }  { m_axi_parameters_ARLOCK LOCK 1 2 }  { m_axi_parameters_ARCACHE CACHE 1 4 }  { m_axi_parameters_ARPROT PROT 1 3 }  { m_axi_parameters_ARQOS QOS 1 4 }  { m_axi_parameters_ARREGION REGION 1 4 }  { m_axi_parameters_ARUSER USER 1 1 }  { m_axi_parameters_RVALID VALID 0 1 }  { m_axi_parameters_RREADY READY 1 1 }  { m_axi_parameters_RDATA DATA 0 32 }  { m_axi_parameters_RLAST LAST 0 1 }  { m_axi_parameters_RID ID 0 1 }  { m_axi_parameters_RUSER USER 0 1 }  { m_axi_parameters_RRESP RESP 0 2 }  { m_axi_parameters_BVALID VALID 0 1 }  { m_axi_parameters_BREADY READY 1 1 }  { m_axi_parameters_BRESP RESP 0 2 }  { m_axi_parameters_BID ID 0 1 }  { m_axi_parameters_BUSER USER 0 1 } } }
	para5 { ap_none {  { para5 in_data 0 30 } } }
	tmp_25 { ap_none {  { tmp_25 in_data 0 19 } } }
	x { ap_none {  { x in_data 0 8 } } }
	back_gauss { ap_memory {  { back_gauss_address0 mem_address 1 18 }  { back_gauss_ce0 mem_ce 1 1 }  { back_gauss_we0 mem_we 1 1 }  { back_gauss_d0 mem_din 1 1 }  { back_gauss_q0 mem_dout 0 1 }  { back_gauss_address1 mem_address 1 18 }  { back_gauss_ce1 mem_ce 1 1 }  { back_gauss_we1 mem_we 1 1 }  { back_gauss_d1 mem_din 1 1 } } }
	matchsum { ap_memory {  { matchsum_address0 mem_address 1 18 }  { matchsum_ce0 mem_ce 1 1 }  { matchsum_we0 mem_we 1 1 }  { matchsum_d0 mem_din 1 8 }  { matchsum_q0 mem_dout 0 8 } } }
}
