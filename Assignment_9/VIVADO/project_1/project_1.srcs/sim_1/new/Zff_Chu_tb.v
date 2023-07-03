`timescale 1ns / 1ps
module Zff_Chu_tb(
    );   
  reg clk;
  reg [7:0] u;
  reg [7:0] N;
  wire [15:0] real_t;
  wire [15:0] imag_t;
  wire t_last;
  
 zadoff_chu in1(
  .clk(clk),
  .u(u),
  .real_t(real_t),
  .imag_t(imag_t),
  .N(N),
.t_last(t_last)
);

    initial
    begin
    clk=0;
    end
    
 always #5 clk=~clk; 
    
    initial
    begin
    u=25;
    N=139;
    end  
      
endmodule
