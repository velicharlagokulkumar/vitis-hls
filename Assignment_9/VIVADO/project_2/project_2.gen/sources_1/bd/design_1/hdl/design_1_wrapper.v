//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Mon Jul 10 15:54:33 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (N_0,
    Z_0,
    clk_0,
    u_0);
  input [7:0]N_0;
  output [31:0]Z_0;
  input clk_0;
  input [7:0]u_0;

  wire [7:0]N_0;
  wire [31:0]Z_0;
  wire clk_0;
  wire [7:0]u_0;

  design_1 design_1_i
       (.N_0(N_0),
        .Z_0(Z_0),
        .clk_0(clk_0),
        .u_0(u_0));
endmodule
