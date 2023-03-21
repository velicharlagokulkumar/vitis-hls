// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      multiply
`define AUTOTB_DUT_INST AESL_inst_multiply
`define AUTOTB_TOP      apatb_multiply_top
`define AUTOTB_LAT_RESULT_FILE "multiply.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "multiply.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_multiply_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00
`define AUTOTB_II 1
`define AUTOTB_LATENCY 3

`define AESL_DEPTH_A 1
`define AESL_DEPTH_B 1
`define AESL_DEPTH_C 1
`define AUTOTB_TVIN_A  "../tv/cdatafile/c.multiply.autotvin_A.dat"
`define AUTOTB_TVIN_B  "../tv/cdatafile/c.multiply.autotvin_B.dat"
`define AUTOTB_TVIN_A_out_wrapc  "../tv/rtldatafile/rtl.multiply.autotvin_A.dat"
`define AUTOTB_TVIN_B_out_wrapc  "../tv/rtldatafile/rtl.multiply.autotvin_B.dat"
`define AUTOTB_TVOUT_C  "../tv/cdatafile/c.multiply.autotvout_C.dat"
`define AUTOTB_TVOUT_C_out_wrapc  "../tv/rtldatafile/rtl.multiply.autotvout_C.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 10;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 3;
parameter LENGTH_A = 1;
parameter LENGTH_B = 1;
parameter LENGTH_C = 1;

task read_token;
    input integer fp;
    output reg [135 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
reg AESL_done = 0;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [31 : 0] A_TDATA;
wire  A_TVALID;
wire  A_TREADY;
wire [31 : 0] B_TDATA;
wire  B_TVALID;
wire  B_TREADY;
wire [55 : 0] C_TDATA;
wire  C_TVALID;
wire  C_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_A;
reg [31:0] ap_c_n_tvin_trans_num_B;
reg [31:0] ap_c_n_tvout_trans_num_C;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .A_TDATA(A_TDATA),
    .A_TVALID(A_TVALID),
    .A_TREADY(A_TREADY),
    .B_TDATA(B_TDATA),
    .B_TVALID(B_TVALID),
    .B_TREADY(B_TREADY),
    .C_TDATA(C_TDATA),
    .C_TVALID(C_TVALID),
    .C_TREADY(C_TREADY));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
assign AESL_ready = ready;



wire A_ready;
wire A_done;
wire [31:0] A_transaction;
wire axi_s_A_TVALID;
wire axi_s_A_TREADY;

AESL_axi_s_A AESL_AXI_S_A(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_A_TDATA(A_TDATA),
    .TRAN_A_TVALID(A_TVALID),
    .TRAN_A_TREADY(A_TREADY),
    .ready(A_ready),
    .done(A_done),
    .transaction(A_transaction));

assign A_ready = ready;
assign A_done = 0;
wire B_ready;
wire B_done;
wire [31:0] B_transaction;
wire axi_s_B_TVALID;
wire axi_s_B_TREADY;

AESL_axi_s_B AESL_AXI_S_B(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_B_TDATA(B_TDATA),
    .TRAN_B_TVALID(B_TVALID),
    .TRAN_B_TREADY(B_TREADY),
    .ready(B_ready),
    .done(B_done),
    .transaction(B_transaction));

assign B_ready = ready;
assign B_done = 0;
wire C_ready;
wire C_done;
wire [31:0] C_transaction;
wire axi_s_C_TVALID;
wire axi_s_C_TREADY;

AESL_axi_s_C AESL_AXI_S_C(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_C_TDATA(C_TDATA),
    .TRAN_C_TVALID(C_TVALID),
    .TRAN_C_TREADY(C_TREADY),
    .ready(C_ready),
    .done(C_done),
    .transaction(C_transaction));

assign C_ready = 0;
assign C_done = AESL_done;

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_A;
reg [31:0] size_A;
reg [31:0] size_A_backup;
reg end_B;
reg [31:0] size_B;
reg [31:0] size_B_backup;
reg end_C;
reg [31:0] size_C;
reg [31:0] size_C_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
    // A : axi_s
    reg ready_A;
    
    always @ (*) begin
        if (end_A) begin
            ready_A <= 1;
        end else if (ap_c_n_tvin_trans_num_A > ready_cnt) begin
            ready_A <= 1;
        end else begin
            ready_A <= 0;
        end
    end
    
    // B : axi_s
    reg ready_B;
    
    always @ (*) begin
        if (end_B) begin
            ready_B <= 1;
        end else if (ap_c_n_tvin_trans_num_B > ready_cnt) begin
            ready_B <= 1;
        end else begin
            ready_B <= 0;
        end
    end
    
    // start
    always @ (*) begin
        if (~AESL_reset) begin
            start <= 0;
        end else begin
            start <= ready_A && ready_B;
        end
    end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait(AESL_reset === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = AESL_start;
assign ready_wire = ready;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    // C : axi_s
    reg done_C;
    
    always @ (*) begin
        if (end_C) begin
            done_C <= 1;
        end else if (ap_c_n_tvout_trans_num_C > done_cnt + 1) begin
            done_C <= 1;
        end else if (size_C > 1) begin
            done_C <= 0;
        end else if (C_TVALID == 1) begin
            done_C <= 1;
        end else begin
            done_C <= 0;
        end
    end
    
    // AESL_done
    always @ (*) begin
        if (~AESL_reset) begin
            AESL_done <= 0;
        end else begin
            AESL_done <= done_C;
        end
    end
    
    `define STREAM_SIZE_IN_A "../tv/stream_size/stream_size_in_A.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_A
        integer fp_A;
        reg [127:0] token_A;
        integer ret;
        
        ap_c_n_tvin_trans_num_A = 0;
        end_A = 0;
        wait (AESL_reset === 1);
        
        fp_A = $fopen(`STREAM_SIZE_IN_A, "r");
        if(fp_A == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_A);
            $finish;
        end
        read_token(fp_A, token_A); // should be [[[runtime]]]
        if (token_A != "[[[runtime]]]") begin
            $display("ERROR: token_A != \"[[[runtime]]]\"");
            $finish;
        end
        size_A = 0;
        size_A_backup = 0;
        while (size_A == 0 && end_A == 0) begin
            ap_c_n_tvin_trans_num_A = ap_c_n_tvin_trans_num_A + 1;
            read_token(fp_A, token_A); // should be [[transaction]] or [[[/runtime]]]
            if (token_A == "[[transaction]]") begin
                read_token(fp_A, token_A); // should be transaction number
                read_token(fp_A, token_A); // should be size for hls::stream
                ret = $sscanf(token_A, "%d", size_A);
                if (size_A > 0) begin
                    size_A_backup = size_A;
                end
                read_token(fp_A, token_A); // should be [[/transaction]]
            end else if (token_A == "[[[/runtime]]]") begin
                $fclose(fp_A);
                end_A = 1;
            end else begin
                $display("ERROR: unknown token_A");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_A == 0) begin
                if ((A_TREADY & A_TVALID) == 1) begin
                    if (size_A > 0) begin
                        size_A = size_A - 1;
                        while (size_A == 0 && end_A == 0) begin
                            ap_c_n_tvin_trans_num_A = ap_c_n_tvin_trans_num_A + 1;
                            read_token(fp_A, token_A); // should be [[transaction]] or [[[/runtime]]]
                            if (token_A == "[[transaction]]") begin
                                read_token(fp_A, token_A); // should be transaction number
                                read_token(fp_A, token_A); // should be size for hls::stream
                                ret = $sscanf(token_A, "%d", size_A);
                                if (size_A > 0) begin
                                    size_A_backup = size_A;
                                end
                                read_token(fp_A, token_A); // should be [[/transaction]]
                            end else if (token_A == "[[[/runtime]]]") begin
                                size_A = size_A_backup;
                                $fclose(fp_A);
                                end_A = 1;
                            end else begin
                                $display("ERROR: unknown token_A");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((A_TREADY & A_TVALID) == 1) begin
                    if (size_A > 0) begin
                        size_A = size_A - 1;
                        if (size_A == 0) begin
                            ap_c_n_tvin_trans_num_A = ap_c_n_tvin_trans_num_A + 1;
                            size_A = size_A_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_B "../tv/stream_size/stream_size_in_B.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_B
        integer fp_B;
        reg [127:0] token_B;
        integer ret;
        
        ap_c_n_tvin_trans_num_B = 0;
        end_B = 0;
        wait (AESL_reset === 1);
        
        fp_B = $fopen(`STREAM_SIZE_IN_B, "r");
        if(fp_B == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_B);
            $finish;
        end
        read_token(fp_B, token_B); // should be [[[runtime]]]
        if (token_B != "[[[runtime]]]") begin
            $display("ERROR: token_B != \"[[[runtime]]]\"");
            $finish;
        end
        size_B = 0;
        size_B_backup = 0;
        while (size_B == 0 && end_B == 0) begin
            ap_c_n_tvin_trans_num_B = ap_c_n_tvin_trans_num_B + 1;
            read_token(fp_B, token_B); // should be [[transaction]] or [[[/runtime]]]
            if (token_B == "[[transaction]]") begin
                read_token(fp_B, token_B); // should be transaction number
                read_token(fp_B, token_B); // should be size for hls::stream
                ret = $sscanf(token_B, "%d", size_B);
                if (size_B > 0) begin
                    size_B_backup = size_B;
                end
                read_token(fp_B, token_B); // should be [[/transaction]]
            end else if (token_B == "[[[/runtime]]]") begin
                $fclose(fp_B);
                end_B = 1;
            end else begin
                $display("ERROR: unknown token_B");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_B == 0) begin
                if ((B_TREADY & B_TVALID) == 1) begin
                    if (size_B > 0) begin
                        size_B = size_B - 1;
                        while (size_B == 0 && end_B == 0) begin
                            ap_c_n_tvin_trans_num_B = ap_c_n_tvin_trans_num_B + 1;
                            read_token(fp_B, token_B); // should be [[transaction]] or [[[/runtime]]]
                            if (token_B == "[[transaction]]") begin
                                read_token(fp_B, token_B); // should be transaction number
                                read_token(fp_B, token_B); // should be size for hls::stream
                                ret = $sscanf(token_B, "%d", size_B);
                                if (size_B > 0) begin
                                    size_B_backup = size_B;
                                end
                                read_token(fp_B, token_B); // should be [[/transaction]]
                            end else if (token_B == "[[[/runtime]]]") begin
                                size_B = size_B_backup;
                                $fclose(fp_B);
                                end_B = 1;
                            end else begin
                                $display("ERROR: unknown token_B");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((B_TREADY & B_TVALID) == 1) begin
                    if (size_B > 0) begin
                        size_B = size_B - 1;
                        if (size_B == 0) begin
                            ap_c_n_tvin_trans_num_B = ap_c_n_tvin_trans_num_B + 1;
                            size_B = size_B_backup;
                        end
                    end
                end
            end
        end
    end
    
    `define STREAM_SIZE_OUT_C "../tv/stream_size/stream_size_out_C.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_C
        integer fp_C;
        reg [127:0] token_C;
        integer ret;
        
        ap_c_n_tvout_trans_num_C = 0;
        end_C = 0;
        wait (AESL_reset === 1);
        
        fp_C = $fopen(`STREAM_SIZE_OUT_C, "r");
        if (fp_C == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_C);
            $finish;
        end
        read_token(fp_C, token_C);
        if (token_C != "[[[runtime]]]") begin
            $display("ERROR: token_C != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_C = 0;
        while (size_C == 0 && end_C == 0) begin
            ap_c_n_tvout_trans_num_C = ap_c_n_tvout_trans_num_C + 1;
            read_token(fp_C, token_C); // should be [[transaction]] or [[[/runtime]]]
            if (token_C == "[[transaction]]") begin
                read_token(fp_C, token_C); // should be transaction number
                read_token(fp_C, token_C); // should be size for hls::stream
                ret = $sscanf(token_C, "%d", size_C);
                read_token(fp_C, token_C); // should be [[/transaction]]
            end else if (token_C == "[[[/runtime]]]") begin
                $fclose(fp_C);
                end_C = 1;
            end else begin
                $display("ERROR: unknown token_C");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_C == 0) begin 
                if (C_TVALID == 1) begin
                    if (size_C > 0) begin
                        size_C = size_C - 1;
                        while (size_C == 0 && end_C == 0) begin
                            ap_c_n_tvout_trans_num_C = ap_c_n_tvout_trans_num_C + 1;
                            read_token(fp_C, token_C); // should be [[transaction]] or [[[/runtime]]]
                            if (token_C == "[[transaction]]") begin
                                read_token(fp_C, token_C); // should be transaction number
                                read_token(fp_C, token_C); // should be size for hls::stream
                                ret = $sscanf(token_C, "%d", size_C);
                                read_token(fp_C, token_C); // should be [[/transaction]]
                            end else if (token_C == "[[[/runtime]]]") begin
                                $fclose(fp_C);
                                end_C = 1;
                            end else begin
                                $display("ERROR: unknown token_C");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_C;

initial begin : dump_tvout_runtime_sign_C
    integer fp;
    dump_tvout_finish_C = 0;
    fp = $fopen(`AUTOTB_TVOUT_C_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_C_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_C_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_C = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
        // non-dataflow design && latency is predictable && no AXI master/slave interface
        get_intra_progress(intra_progress);
        if (intra_progress > 1000) begin
            $display("// RTL Simulation : transaction %0d run-time latency is greater than %0f time(s) of the prediction @ \"%0t\"", start_cnt, intra_progress, $time);
            $display("////////////////////////////////////////////////////////////////////////////////////");
            $finish;
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    integer real_cnt;
    integer valid_cnt;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;
        real_cnt = (start_cnt < finish_cnt) ? start_cnt : AUTOTB_TRANSACTION_NUM;
        valid_cnt = 0;

        for (i = 0; i < real_cnt; i = i + 1) begin
            // calculate latency
            if (finish_timestamp[i] >= start_timestamp[i]) begin
                latency[i] = finish_timestamp[i] - start_timestamp[i];
                if (latency[i] > latency_max) latency_max = latency[i];
                if (latency[i] < latency_min) latency_min = latency[i];
                latency_total = latency_total + latency[i];
                valid_cnt = valid_cnt + 1;
            end else begin
                latency[i] = 0;
            end
            // calculate interval
            if (real_cnt == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < real_cnt - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        if (valid_cnt > 0)
            latency_average = latency_total / valid_cnt;
        else
            latency_average = latency_total;
        if (real_cnt == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (real_cnt - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (real_cnt == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < real_cnt; i = i + 1) begin
                if (i < real_cnt - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
        if (start_cnt < finish_cnt)
            $display("Note: for this 'ap_ctrl_none' design the last %0d transactions have no output. In order to save runtime, cosim will end eariler after getting all needed output. So performance report only covers the first %0d transactions.",(finish_cnt - start_cnt), start_cnt);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_kernel_monitor_top kernel_monitor_top(
    .kernel_monitor_reset(~AESL_reset),
    .kernel_monitor_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
