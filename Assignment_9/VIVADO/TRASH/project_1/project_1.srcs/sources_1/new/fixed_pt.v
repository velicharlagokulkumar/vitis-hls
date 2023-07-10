`timescale 1ns / 1ps

module RealToFixed (
  input reg realNum,
  output reg [7:0] fixedNum
);

  reg [7:0] fixedPointResolution = 4; // Resolution of 1/16 (4 fractional bits)

  always @(realNum) begin
    fixedNum = $rtoi(realNum * fixedPointResolution); // Multiply and round to nearest integer
  end

endmodule

