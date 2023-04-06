`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [1:0] axis_block_sigs;
wire [0:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_shift_register.data_in_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_shift_register.data_out_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

// synthesis translate_off
// logic for axis port block diagnosis
initial begin : axis_deadlock_report
integer fp;
integer  axis_port_scan_flag;
integer  cnt;
    cnt = 0;
    fp = $fopen("kernel_deadlock_diagnosis.rpt","a");
    $fdisplay(fp,"//// start to dump deadlock path for kernel '%m' ////");
    wait(kernel_monitor_reset == 1'b1);
        axis_port_scan_flag = 0;
    repeat(10)
        @(posedge kernel_monitor_clock);
    while(!kernel_block || cnt != 2)
    begin
        @(posedge kernel_monitor_clock);
        if (kernel_block)
            cnt = cnt + 1;
    end

    $display("\n//////////////////////////////////////////////////////////////////////////////");
    $display("// Following axis ports can not be accessed by kernel 'shift_register' ");
    $fdisplay(fp,"\n//////////////////////////////////////////////////////////////////////////////");
    $fdisplay(fp,"// Following axis ports can not be accessed by kernel 'shift_register' ");
    // find all axis ports which have no outer block
    while (axis_port_scan_flag < 2) begin
        case(axis_port_scan_flag)
            0:
            begin
                if (axis_block_sigs[0] == 1'b0) begin
                    $display("//    port 'data_in' can not be read");
                    $fdisplay(fp,"//    port 'data_in' can not be read");
                end
            end
            1:
            begin
                if (axis_block_sigs[1] == 1'b0) begin
                    $display("//    port 'data_out' can not be written");
                    $fdisplay(fp,"//    port 'data_out' can not be written");
                end
            end
        endcase
        axis_port_scan_flag = axis_port_scan_flag + 1;
    end

    axis_port_scan_flag = 0;
                    $display("//");
                    $fdisplay(fp,"//");
    $display("//    Because the top sequential FSM is blocked by following axis ports");
    $fdisplay(fp,"//    Because the top sequential FSM is blocked by following axis ports");
    // find all axis ports which have outer block
    while (axis_port_scan_flag < 2) begin
        case(axis_port_scan_flag)
            0:
            begin
                if (axis_block_sigs[0] == 1'b1) begin
                    $display("//        port 'data_in' does not have valid input data");
                    $fdisplay(fp,"//        port 'data_in' does not have valid input data");
                end
            end
            1:
            begin
                if (axis_block_sigs[1] == 1'b1) begin
                    $display("//        port 'data_out' is not ready");
                    $fdisplay(fp,"//        port 'data_out' is not ready");
                end
            end
        endcase
        axis_port_scan_flag = axis_port_scan_flag + 1;
    end

    $display("//////////////////////////////////////////////////////////////////////////////\n");
    $fdisplay(fp,"//////////////////////////////////////////////////////////////////////////////\n");
    $fdisplay(fp,"//// finish dumping deadlock path for kernel '%m' ////\n");
    $fclose(fp);
end

// synthesis translate_on

initial begin : trigger_axis_deadlock
reg block_delay;
    block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
    $display("find kernel block.");
    block_delay = kernel_block;
    end
end

endmodule
