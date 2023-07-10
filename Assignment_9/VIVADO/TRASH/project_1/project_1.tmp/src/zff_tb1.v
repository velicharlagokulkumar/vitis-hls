`timescale 1ns / 1ps

module zff_tb1(
    );
   
  reg clk;
  reg [7:0] u;
  reg [7:0] N;
  wire [15:0] fixed_point_tc;
    
 zadoff_chu test_phase(
 .clk(clk),
  .u(u),
   .N(N),
  .fixed_point_tc(fixed_point_tc)
);

always #5 clk=~clk;

initial
begin 
clk=0;
//ap_rst_n_0=1;
N=139;
u=25;
end

endmodule
