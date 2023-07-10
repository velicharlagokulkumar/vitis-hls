//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Jul  2 14:20:19 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ap_clk_0,
    length_r_0,
    out_stream_TDATA_0,
    out_stream_TVALID_0,
    tlast_TVALID_0,
    u_0);
  input ap_clk_0;
  input [31:0]length_r_0;
  output [63:0]out_stream_TDATA_0;
  output out_stream_TVALID_0;
  output tlast_TVALID_0;
  input [31:0]u_0;

  wire ap_clk_0;
  wire [31:0]length_r_0;
  wire [63:0]out_stream_TDATA_0;
  wire out_stream_TVALID_0;
  wire tlast_TVALID_0;
  wire [31:0]u_0;

  design_1 design_1_i
       (.ap_clk_0(ap_clk_0),
        .length_r_0(length_r_0),
        .out_stream_TDATA_0(out_stream_TDATA_0),
        .out_stream_TVALID_0(out_stream_TVALID_0),
        .tlast_TVALID_0(tlast_TVALID_0),
        .u_0(u_0));
endmodule
