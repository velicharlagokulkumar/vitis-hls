//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Jul  2 06:06:39 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (N_0,
    clk_0,
    t_last_0,
    u_0);
  input [7:0]N_0;
  input clk_0;
  output t_last_0;
  input [7:0]u_0;

  wire [7:0]N_0;
  wire clk_0;
  wire t_last_0;
  wire [7:0]u_0;

  design_2 design_2_i
       (.N_0(N_0),
        .clk_0(clk_0),
        .t_last_0(t_last_0),
        .u_0(u_0));
endmodule
