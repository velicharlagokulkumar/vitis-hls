`timescale 1ns / 1ps

module zff_tb1(
    );
   
  reg clk;
  reg [7:0] u;
  reg [7:0] N;
  wire [31 :0] Z;
    
 zadoff_chu test_phase(
 .clk(clk),
  .u(u),
   .N(N),
  .Z(Z)
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
