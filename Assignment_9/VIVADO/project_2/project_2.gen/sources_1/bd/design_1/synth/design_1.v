//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Jul 10 15:54:33 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (N_0,
    Z_0,
    clk_0,
    u_0);
  input [7:0]N_0;
  output [31:0]Z_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  input [7:0]u_0;

  wire [7:0]N_0_1;
  wire clk_0_1;
  wire [7:0]u_0_1;
  wire [31:0]zadoff_chu_0_Z;

  assign N_0_1 = N_0[7:0];
  assign Z_0[31:0] = zadoff_chu_0_Z;
  assign clk_0_1 = clk_0;
  assign u_0_1 = u_0[7:0];
  design_1_zadoff_chu_0_0 zadoff_chu_0
       (.N(N_0_1),
        .Z(zadoff_chu_0_Z),
        .clk(clk_0_1),
        .u(u_0_1));
endmodule
