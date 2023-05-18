// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cyclic_prefix_removal_cyclic_prefix_removal,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.687750,HLS_SYN_LAT=8202,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=169,HLS_SYN_LUT=260,HLS_VERSION=2022_2}" *)

module cyclic_prefix_removal (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_samples_TDATA,
        in_samples_TVALID,
        in_samples_TREADY,
        out_samples_TDATA,
        out_samples_TVALID,
        out_samples_TREADY
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] in_samples_TDATA;
input   in_samples_TVALID;
output   in_samples_TREADY;
output  [63:0] out_samples_TDATA;
output   out_samples_TVALID;
input   out_samples_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_done;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_idle;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_ready;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TREADY;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_in_samples_TREADY;
wire   [63:0] grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TDATA;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TVALID;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_done;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_idle;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_ready;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TREADY;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_in_samples_TREADY;
wire   [63:0] grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TDATA;
wire    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TVALID;
reg    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    regslice_both_out_samples_U_apdone_blk;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    regslice_both_in_samples_U_apdone_blk;
wire   [63:0] in_samples_TDATA_int_regslice;
wire    in_samples_TVALID_int_regslice;
reg    in_samples_TREADY_int_regslice;
wire    regslice_both_in_samples_U_ack_in;
reg   [63:0] out_samples_TDATA_int_regslice;
reg    out_samples_TVALID_int_regslice;
wire    out_samples_TREADY_int_regslice;
wire    regslice_both_out_samples_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start_reg = 1'b0;
#0 grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start_reg = 1'b0;
end

cyclic_prefix_removal_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1 grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start),
    .ap_done(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_done),
    .ap_idle(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_idle),
    .ap_ready(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_ready),
    .in_samples_TVALID(in_samples_TVALID_int_regslice),
    .out_samples_TREADY(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TREADY),
    .in_samples_TDATA(in_samples_TDATA_int_regslice),
    .in_samples_TREADY(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_in_samples_TREADY),
    .out_samples_TDATA(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TDATA),
    .out_samples_TVALID(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TVALID)
);

cyclic_prefix_removal_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2 grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start),
    .ap_done(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_done),
    .ap_idle(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_idle),
    .ap_ready(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_ready),
    .in_samples_TVALID(in_samples_TVALID_int_regslice),
    .out_samples_TREADY(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TREADY),
    .in_samples_TDATA(in_samples_TDATA_int_regslice),
    .in_samples_TREADY(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_in_samples_TREADY),
    .out_samples_TDATA(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TDATA),
    .out_samples_TVALID(grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TVALID)
);

cyclic_prefix_removal_regslice_both #(
    .DataWidth( 64 ))
regslice_both_in_samples_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_samples_TDATA),
    .vld_in(in_samples_TVALID),
    .ack_in(regslice_both_in_samples_U_ack_in),
    .data_out(in_samples_TDATA_int_regslice),
    .vld_out(in_samples_TVALID_int_regslice),
    .ack_out(in_samples_TREADY_int_regslice),
    .apdone_blk(regslice_both_in_samples_U_apdone_blk)
);

cyclic_prefix_removal_regslice_both #(
    .DataWidth( 64 ))
regslice_both_out_samples_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(out_samples_TDATA_int_regslice),
    .vld_in(out_samples_TVALID_int_regslice),
    .ack_in(out_samples_TREADY_int_regslice),
    .data_out(out_samples_TDATA),
    .vld_out(regslice_both_out_samples_U_vld_out),
    .ack_out(out_samples_TREADY),
    .apdone_blk(regslice_both_out_samples_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start_reg <= 1'b1;
        end else if ((grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_ready == 1'b1)) begin
            grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start_reg <= 1'b1;
        end else if ((grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_ready == 1'b1)) begin
            grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((regslice_both_out_samples_U_apdone_blk == 1'b1)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_out_samples_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_out_samples_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        in_samples_TREADY_int_regslice = grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_in_samples_TREADY;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        in_samples_TREADY_int_regslice = grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_in_samples_TREADY;
    end else begin
        in_samples_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        out_samples_TDATA_int_regslice = grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TDATA;
    end else if (((grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        out_samples_TDATA_int_regslice = grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TDATA;
    end else begin
        out_samples_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        out_samples_TVALID_int_regslice = grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TVALID;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        out_samples_TVALID_int_regslice = grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TVALID;
    end else begin
        out_samples_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((regslice_both_out_samples_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start = grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_ap_start_reg;

assign grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_13_2_fu_38_out_samples_TREADY = (out_samples_TREADY_int_regslice & ap_CS_fsm_state6);

assign grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start = grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_ap_start_reg;

assign grp_cyclic_prefix_removal_Pipeline_VITIS_LOOP_7_1_fu_30_out_samples_TREADY = (out_samples_TREADY_int_regslice & ap_CS_fsm_state3);

assign in_samples_TREADY = regslice_both_in_samples_U_ack_in;

assign out_samples_TVALID = regslice_both_out_samples_U_vld_out;

endmodule //cyclic_prefix_removal
