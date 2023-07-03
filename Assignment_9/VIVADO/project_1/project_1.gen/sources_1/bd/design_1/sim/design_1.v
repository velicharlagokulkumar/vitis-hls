//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Jul  2 14:20:19 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ap_clk_0,
    length_r_0,
    out_stream_TDATA_0,
    out_stream_TVALID_0,
    tlast_TVALID_0,
    u_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK_0, CLK_DOMAIN design_1_ap_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LENGTH_R_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LENGTH_R_0, LAYERED_METADATA undef" *) input [31:0]length_r_0;
  output [63:0]out_stream_TDATA_0;
  output out_stream_TVALID_0;
  output tlast_TVALID_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.U_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.U_0, LAYERED_METADATA undef" *) input [31:0]u_0;

  wire ap_clk_0_1;
  wire [31:0]length_r_0_1;
  wire [31:0]u_0_1;
  wire [0:0]xlconstant_0_dout;
  wire [63:0]zadoff_chu_generator_0_out_stream_TDATA;
  wire zadoff_chu_generator_0_out_stream_TVALID;
  wire zadoff_chu_generator_0_tlast_TVALID;

  assign ap_clk_0_1 = ap_clk_0;
  assign length_r_0_1 = length_r_0[31:0];
  assign out_stream_TDATA_0[63:0] = zadoff_chu_generator_0_out_stream_TDATA;
  assign out_stream_TVALID_0 = zadoff_chu_generator_0_out_stream_TVALID;
  assign tlast_TVALID_0 = zadoff_chu_generator_0_tlast_TVALID;
  assign u_0_1 = u_0[31:0];
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_zadoff_chu_generator_0_0 zadoff_chu_generator_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(xlconstant_0_dout),
        .ap_start(xlconstant_0_dout),
        .length_r(length_r_0_1),
        .out_stream_TDATA(zadoff_chu_generator_0_out_stream_TDATA),
        .out_stream_TREADY(xlconstant_0_dout),
        .out_stream_TVALID(zadoff_chu_generator_0_out_stream_TVALID),
        .tlast_TREADY(xlconstant_0_dout),
        .tlast_TVALID(zadoff_chu_generator_0_tlast_TVALID),
        .u(u_0_1));
endmodule
