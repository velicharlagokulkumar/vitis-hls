`timescale 1ns / 1ps
module test1_tb(
    );
  wire [15:0] fixed_point;
     real num = 3.14;
      
    reg [31:0] floating_bits;
  real_to_fixed in11(
  .fixed_point(fixed_point)
);


  initial begin

    
    // Convert real number to floating-point representation
    floating_bits = $realtobits(num);
    
    // Display the floating-point representation
    $display("Floating-point representation: %h", floating_bits);
  end
endmodule
