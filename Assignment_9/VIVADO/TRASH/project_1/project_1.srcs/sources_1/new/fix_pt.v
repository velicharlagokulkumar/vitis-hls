module real_to_fixed(
  output reg [15:0] fixed_point
);
    real number=3.140625;
    integer integer_part;
    real fractional_part;
    real scaled_number;
    reg [1:0] ip;
always@(*)
begin
    // Scale the number by 2^12 (to accommodate 12 fractional bits)
    scaled_number = number * (1 << 12);
  ip=number;
    // Extract the integer and fractional parts
    integer_part = scaled_number;
    fractional_part = scaled_number - integer_part;

    // Convert the integer part to two's complement
    if (integer_part < 0) begin
      integer_part = -integer_part;
      integer_part = {2'b1, ~integer_part + 1};
    end else begin
      integer_part = {2'b0, integer_part};
    end

    // Combine the integer and fractional parts into the fixed-point representation
  //  fixed_point = {integer_part, fractional_part};
  end

endmodule
