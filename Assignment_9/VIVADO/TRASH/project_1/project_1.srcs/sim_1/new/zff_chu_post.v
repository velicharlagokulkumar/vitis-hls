`timescale 1ns / 1ps
module zff_chu_post(
    );
    
   reg [7:0]N_0;
  reg clk;
  wire [31:0]m_axis_dout_tdata_0;
  wire m_axis_dout_tvalid_0;
  reg [7:0]u_0;

 design_3_wrapper
    in9 (.N_0(N_0),
    .clk_0(clk),
    .m_axis_dout_tdata_0(m_axis_dout_tdata_0),
    .m_axis_dout_tvalid_0(m_axis_dout_tvalid_0),
    .u_0(u_0));

always #5 clk=~clk;

initial
begin 
clk=0;
N_0=139;
u_0=25;
end
endmodule
