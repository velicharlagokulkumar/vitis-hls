// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_A_TDATA "../tv/cdatafile/c.multiply.autotvin_A.dat"

`define AUTOTB_TRANSACTION_NUM 10

module AESL_axi_s_A (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_A_TDATA,
    output TRAN_A_TVALID,
    input TRAN_A_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_A_TVALID_temp;
    wire A_TDATA_full;
    wire A_TDATA_empty;
    reg A_TDATA_write_en;
    reg [32 - 1:0] A_TDATA_write_data;
    reg A_TDATA_read_en;
    wire [32 - 1:0] A_TDATA_read_data;
    
    fifo #(1, 32) fifo_A_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(A_TDATA_write_en),
        .write_data(A_TDATA_write_data),
        .read_clock(clk),
        .read_en(A_TDATA_read_en),
        .read_data(A_TDATA_read_data),
        .full(A_TDATA_full),
        .empty(A_TDATA_empty));
    
    always @ (*) begin
        A_TDATA_write_en <= 0;
        A_TDATA_read_en <= TRAN_A_TREADY & TRAN_A_TVALID;
    end
    
    assign TRAN_A_TDATA = A_TDATA_read_data;
    assign TRAN_A_TVALID = TRAN_A_TVALID_temp;

    
    assign TRAN_A_TVALID_temp = ~(A_TDATA_empty);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [135:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [135:0] rm_0x(input [135:0] token);
        reg [135:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_A_TDATA;
    
    assign transaction = transaction_load_A_TDATA;
    
    initial begin : AXI_stream_driver_A_TDATA
        integer fp;
        reg [135:0] token;
        reg [32 - 1:0] data;
        reg [135:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_A_TDATA = 0;
        fifo_A_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_A_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_A_TDATA);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_A_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_A_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_A_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_A_TDATA.snapshot();
                end else begin
                    fifo_A_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_A_TDATA = transaction_load_A_TDATA + 1;
            end
        end
    end

endmodule
