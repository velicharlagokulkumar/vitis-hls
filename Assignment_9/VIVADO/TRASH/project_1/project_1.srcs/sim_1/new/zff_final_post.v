`timescale 1ns / 1ps
module zff_final_post(
    );
  
   reg [7:0]N_0;
  reg clk;
  wire [15:0]fixed_point_tc_0;
  wire tlast_0;
  reg [7:0]u_0;
    
design_5_wrapper in88(
     .N_0(N_0),
    .clk_0(clk),
    .fixed_point_tc_0(fixed_point_tc_0),
    .tlast_0(tlast_0),
    .u_0(u_0));

  
  always #5 clk=~clk;

initial
begin 
clk=0;
N_0=139;
u_0=25;
end
endmodule
    
