// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      integer_alu
`define AUTOTB_DUT_INST AESL_inst_integer_alu
`define AUTOTB_TOP      apatb_integer_alu_top
`define AUTOTB_LAT_RESULT_FILE "integer_alu.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "integer_alu.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_integer_alu_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_DEPTH_in1 1
`define AESL_DEPTH_in2 1
`define AESL_DEPTH_op 1
`define AESL_DEPTH_out_r 1
`define AUTOTB_TVIN_in1  "../tv/cdatafile/c.integer_alu.autotvin_in1.dat"
`define AUTOTB_TVIN_in2  "../tv/cdatafile/c.integer_alu.autotvin_in2.dat"
`define AUTOTB_TVIN_op  "../tv/cdatafile/c.integer_alu.autotvin_op.dat"
`define AUTOTB_TVIN_in1_out_wrapc  "../tv/rtldatafile/rtl.integer_alu.autotvin_in1.dat"
`define AUTOTB_TVIN_in2_out_wrapc  "../tv/rtldatafile/rtl.integer_alu.autotvin_in2.dat"
`define AUTOTB_TVIN_op_out_wrapc  "../tv/rtldatafile/rtl.integer_alu.autotvin_op.dat"
`define AUTOTB_TVOUT_out_r  "../tv/cdatafile/c.integer_alu.autotvout_out_r.dat"
`define AUTOTB_TVOUT_out_r_out_wrapc  "../tv/rtldatafile/rtl.integer_alu.autotvout_out_r.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 10;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 13;
parameter LENGTH_in1 = 1;
parameter LENGTH_in2 = 1;
parameter LENGTH_op = 1;
parameter LENGTH_out_r = 1;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
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
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire  in1_TVALID;
wire  in2_TVALID;
wire  op_TVALID;
wire  out_r_TREADY;
wire [7 : 0] in1_TDATA;
wire  in1_TREADY;
wire [7 : 0] in2_TDATA;
wire  in2_TREADY;
wire [7 : 0] op_TDATA;
wire  op_TREADY;
wire [15 : 0] out_r_TDATA;
wire  out_r_TVALID;
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
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .in1_TVALID(in1_TVALID),
    .in2_TVALID(in2_TVALID),
    .op_TVALID(op_TVALID),
    .out_r_TREADY(out_r_TREADY),
    .in1_TDATA(in1_TDATA),
    .in1_TREADY(in1_TREADY),
    .in2_TDATA(in2_TDATA),
    .in2_TREADY(in2_TREADY),
    .op_TDATA(op_TDATA),
    .op_TREADY(op_TREADY),
    .out_r_TDATA(out_r_TDATA),
    .out_r_TVALID(out_r_TVALID));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end




reg [31:0] ap_c_n_tvin_trans_num_in1;

reg in1_ready_reg; // for self-sync

wire in1_ready;
wire in1_done;
wire [31:0] in1_transaction;
wire axi_s_in1_TVALID;
wire axi_s_in1_TREADY;

AESL_axi_s_in1 AESL_AXI_S_in1(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in1_TDATA(in1_TDATA),
    .TRAN_in1_TVALID(axi_s_in1_TVALID),
    .TRAN_in1_TREADY(axi_s_in1_TREADY),
    .ready(in1_ready),
    .done(in1_done),
    .transaction(in1_transaction));

assign in1_ready = in1_ready_reg | ready_initial;
assign in1_done = 0;

assign in1_TVALID = axi_s_in1_TVALID;

assign axi_s_in1_TREADY = in1_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in2;

reg in2_ready_reg; // for self-sync

wire in2_ready;
wire in2_done;
wire [31:0] in2_transaction;
wire axi_s_in2_TVALID;
wire axi_s_in2_TREADY;

AESL_axi_s_in2 AESL_AXI_S_in2(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in2_TDATA(in2_TDATA),
    .TRAN_in2_TVALID(axi_s_in2_TVALID),
    .TRAN_in2_TREADY(axi_s_in2_TREADY),
    .ready(in2_ready),
    .done(in2_done),
    .transaction(in2_transaction));

assign in2_ready = in2_ready_reg | ready_initial;
assign in2_done = 0;

assign in2_TVALID = axi_s_in2_TVALID;

assign axi_s_in2_TREADY = in2_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_op;

reg op_ready_reg; // for self-sync

wire op_ready;
wire op_done;
wire [31:0] op_transaction;
wire axi_s_op_TVALID;
wire axi_s_op_TREADY;

AESL_axi_s_op AESL_AXI_S_op(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_op_TDATA(op_TDATA),
    .TRAN_op_TVALID(axi_s_op_TVALID),
    .TRAN_op_TREADY(axi_s_op_TREADY),
    .ready(op_ready),
    .done(op_done),
    .transaction(op_transaction));

assign op_ready = op_ready_reg | ready_initial;
assign op_done = 0;

assign op_TVALID = axi_s_op_TVALID;

assign axi_s_op_TREADY = op_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_out_r;

reg out_r_ready_reg; // for self-sync

wire out_r_ready;
wire out_r_done;
wire [31:0] out_r_transaction;
wire axi_s_out_r_TVALID;
wire axi_s_out_r_TREADY;

AESL_axi_s_out_r AESL_AXI_S_out_r(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_out_r_TDATA(out_r_TDATA),
    .TRAN_out_r_TVALID(axi_s_out_r_TVALID),
    .TRAN_out_r_TREADY(axi_s_out_r_TREADY),
    .ready(out_r_ready),
    .done(out_r_done),
    .transaction(out_r_transaction));

assign out_r_ready = 0;
assign out_r_done = AESL_done;

assign axi_s_out_r_TVALID = out_r_TVALID;

reg reg_out_r_TREADY;
initial begin : gen_reg_out_r_TREADY_process
    integer proc_rand;
    reg_out_r_TREADY = axi_s_out_r_TREADY;
    while(1)
    begin
        @(axi_s_out_r_TREADY);
        reg_out_r_TREADY = axi_s_out_r_TREADY;
    end
end


assign out_r_TREADY = reg_out_r_TREADY;

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


reg end_in1;
reg [31:0] size_in1;
reg [31:0] size_in1_backup;
reg end_in2;
reg [31:0] size_in2;
reg [31:0] size_in2_backup;
reg end_op;
reg [31:0] size_op;
reg [31:0] size_op_backup;
reg end_out_r;
reg [31:0] size_out_r;
reg [31:0] size_out_r_backup;

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
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
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
    
    initial begin : proc_gen_axis_internal_ready_in1
        in1_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in1 or in1_transaction);
            if (ap_c_n_tvin_trans_num_in1 > in1_transaction) begin
                in1_ready_reg = 1;
            end else begin
                in1_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_in2
        in2_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in2 or in2_transaction);
            if (ap_c_n_tvin_trans_num_in2 > in2_transaction) begin
                in2_ready_reg = 1;
            end else begin
                in2_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_op
        op_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_op or op_transaction);
            if (ap_c_n_tvin_trans_num_op > op_transaction) begin
                op_ready_reg = 1;
            end else begin
                op_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_in1 "../tv/stream_size/stream_size_in_in1.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in1
        integer fp_in1;
        reg [127:0] token_in1;
        integer ret;
        
        ap_c_n_tvin_trans_num_in1 = 0;
        end_in1 = 0;
        wait (AESL_reset === 1);
        
        fp_in1 = $fopen(`STREAM_SIZE_IN_in1, "r");
        if(fp_in1 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in1);
            $finish;
        end
        read_token(fp_in1, token_in1); // should be [[[runtime]]]
        if (token_in1 != "[[[runtime]]]") begin
            $display("ERROR: token_in1 != \"[[[runtime]]]\"");
            $finish;
        end
        size_in1 = 0;
        size_in1_backup = 0;
        while (size_in1 == 0 && end_in1 == 0) begin
            ap_c_n_tvin_trans_num_in1 = ap_c_n_tvin_trans_num_in1 + 1;
            read_token(fp_in1, token_in1); // should be [[transaction]] or [[[/runtime]]]
            if (token_in1 == "[[transaction]]") begin
                read_token(fp_in1, token_in1); // should be transaction number
                read_token(fp_in1, token_in1); // should be size for hls::stream
                ret = $sscanf(token_in1, "%d", size_in1);
                if (size_in1 > 0) begin
                    size_in1_backup = size_in1;
                end
                read_token(fp_in1, token_in1); // should be [[/transaction]]
            end else if (token_in1 == "[[[/runtime]]]") begin
                $fclose(fp_in1);
                end_in1 = 1;
            end else begin
                $display("ERROR: unknown token_in1");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in1 == 0) begin
                if ((in1_TREADY & in1_TVALID) == 1) begin
                    if (size_in1 > 0) begin
                        size_in1 = size_in1 - 1;
                        while (size_in1 == 0 && end_in1 == 0) begin
                            ap_c_n_tvin_trans_num_in1 = ap_c_n_tvin_trans_num_in1 + 1;
                            read_token(fp_in1, token_in1); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in1 == "[[transaction]]") begin
                                read_token(fp_in1, token_in1); // should be transaction number
                                read_token(fp_in1, token_in1); // should be size for hls::stream
                                ret = $sscanf(token_in1, "%d", size_in1);
                                if (size_in1 > 0) begin
                                    size_in1_backup = size_in1;
                                end
                                read_token(fp_in1, token_in1); // should be [[/transaction]]
                            end else if (token_in1 == "[[[/runtime]]]") begin
                                size_in1 = size_in1_backup;
                                $fclose(fp_in1);
                                end_in1 = 1;
                            end else begin
                                $display("ERROR: unknown token_in1");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in1_TREADY & in1_TVALID) == 1) begin
                    if (size_in1 > 0) begin
                        size_in1 = size_in1 - 1;
                        if (size_in1 == 0) begin
                            ap_c_n_tvin_trans_num_in1 = ap_c_n_tvin_trans_num_in1 + 1;
                            size_in1 = size_in1_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_in2 "../tv/stream_size/stream_size_in_in2.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in2
        integer fp_in2;
        reg [127:0] token_in2;
        integer ret;
        
        ap_c_n_tvin_trans_num_in2 = 0;
        end_in2 = 0;
        wait (AESL_reset === 1);
        
        fp_in2 = $fopen(`STREAM_SIZE_IN_in2, "r");
        if(fp_in2 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in2);
            $finish;
        end
        read_token(fp_in2, token_in2); // should be [[[runtime]]]
        if (token_in2 != "[[[runtime]]]") begin
            $display("ERROR: token_in2 != \"[[[runtime]]]\"");
            $finish;
        end
        size_in2 = 0;
        size_in2_backup = 0;
        while (size_in2 == 0 && end_in2 == 0) begin
            ap_c_n_tvin_trans_num_in2 = ap_c_n_tvin_trans_num_in2 + 1;
            read_token(fp_in2, token_in2); // should be [[transaction]] or [[[/runtime]]]
            if (token_in2 == "[[transaction]]") begin
                read_token(fp_in2, token_in2); // should be transaction number
                read_token(fp_in2, token_in2); // should be size for hls::stream
                ret = $sscanf(token_in2, "%d", size_in2);
                if (size_in2 > 0) begin
                    size_in2_backup = size_in2;
                end
                read_token(fp_in2, token_in2); // should be [[/transaction]]
            end else if (token_in2 == "[[[/runtime]]]") begin
                $fclose(fp_in2);
                end_in2 = 1;
            end else begin
                $display("ERROR: unknown token_in2");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in2 == 0) begin
                if ((in2_TREADY & in2_TVALID) == 1) begin
                    if (size_in2 > 0) begin
                        size_in2 = size_in2 - 1;
                        while (size_in2 == 0 && end_in2 == 0) begin
                            ap_c_n_tvin_trans_num_in2 = ap_c_n_tvin_trans_num_in2 + 1;
                            read_token(fp_in2, token_in2); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in2 == "[[transaction]]") begin
                                read_token(fp_in2, token_in2); // should be transaction number
                                read_token(fp_in2, token_in2); // should be size for hls::stream
                                ret = $sscanf(token_in2, "%d", size_in2);
                                if (size_in2 > 0) begin
                                    size_in2_backup = size_in2;
                                end
                                read_token(fp_in2, token_in2); // should be [[/transaction]]
                            end else if (token_in2 == "[[[/runtime]]]") begin
                                size_in2 = size_in2_backup;
                                $fclose(fp_in2);
                                end_in2 = 1;
                            end else begin
                                $display("ERROR: unknown token_in2");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in2_TREADY & in2_TVALID) == 1) begin
                    if (size_in2 > 0) begin
                        size_in2 = size_in2 - 1;
                        if (size_in2 == 0) begin
                            ap_c_n_tvin_trans_num_in2 = ap_c_n_tvin_trans_num_in2 + 1;
                            size_in2 = size_in2_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_op "../tv/stream_size/stream_size_in_op.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_op
        integer fp_op;
        reg [127:0] token_op;
        integer ret;
        
        ap_c_n_tvin_trans_num_op = 0;
        end_op = 0;
        wait (AESL_reset === 1);
        
        fp_op = $fopen(`STREAM_SIZE_IN_op, "r");
        if(fp_op == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_op);
            $finish;
        end
        read_token(fp_op, token_op); // should be [[[runtime]]]
        if (token_op != "[[[runtime]]]") begin
            $display("ERROR: token_op != \"[[[runtime]]]\"");
            $finish;
        end
        size_op = 0;
        size_op_backup = 0;
        while (size_op == 0 && end_op == 0) begin
            ap_c_n_tvin_trans_num_op = ap_c_n_tvin_trans_num_op + 1;
            read_token(fp_op, token_op); // should be [[transaction]] or [[[/runtime]]]
            if (token_op == "[[transaction]]") begin
                read_token(fp_op, token_op); // should be transaction number
                read_token(fp_op, token_op); // should be size for hls::stream
                ret = $sscanf(token_op, "%d", size_op);
                if (size_op > 0) begin
                    size_op_backup = size_op;
                end
                read_token(fp_op, token_op); // should be [[/transaction]]
            end else if (token_op == "[[[/runtime]]]") begin
                $fclose(fp_op);
                end_op = 1;
            end else begin
                $display("ERROR: unknown token_op");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_op == 0) begin
                if ((op_TREADY & op_TVALID) == 1) begin
                    if (size_op > 0) begin
                        size_op = size_op - 1;
                        while (size_op == 0 && end_op == 0) begin
                            ap_c_n_tvin_trans_num_op = ap_c_n_tvin_trans_num_op + 1;
                            read_token(fp_op, token_op); // should be [[transaction]] or [[[/runtime]]]
                            if (token_op == "[[transaction]]") begin
                                read_token(fp_op, token_op); // should be transaction number
                                read_token(fp_op, token_op); // should be size for hls::stream
                                ret = $sscanf(token_op, "%d", size_op);
                                if (size_op > 0) begin
                                    size_op_backup = size_op;
                                end
                                read_token(fp_op, token_op); // should be [[/transaction]]
                            end else if (token_op == "[[[/runtime]]]") begin
                                size_op = size_op_backup;
                                $fclose(fp_op);
                                end_op = 1;
                            end else begin
                                $display("ERROR: unknown token_op");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((op_TREADY & op_TVALID) == 1) begin
                    if (size_op > 0) begin
                        size_op = size_op - 1;
                        if (size_op == 0) begin
                            ap_c_n_tvin_trans_num_op = ap_c_n_tvin_trans_num_op + 1;
                            size_op = size_op_backup;
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

reg dump_tvout_finish_out_r;

initial begin : dump_tvout_runtime_sign_out_r
    integer fp;
    dump_tvout_finish_out_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_r_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_r_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_r = 1;
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

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
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
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
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
