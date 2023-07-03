`timescale 1ns / 1ps
module Zff_Chu_tb1(
    );   
reg [7:0] seq_length;
  reg [7:0] c_prime;
  reg clk;
  reg reset;
  wire [7:0] sequence;
 zadoff_chu_generator test_1(
  .seq_length(seq_length),
 .c_prime(c_prime),
  .clk(clk),
  .reset(reset),
  .sequence(sequence)
);

    initial
    begin
    clk=0;
    end
    
 always #5 clk=~clk; 
    
    initial
    begin
    reset=1;
    #10 reset=0;
    c_prime=25;
    seq_length=139;
    end  
      
endmodule
