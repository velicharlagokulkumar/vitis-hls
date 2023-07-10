module SinCos (
    input wire clk,
    input wire [7:0] angle,
    output reg [7:0] sin_val,
    output reg [7:0] cos_val
);
    // Lookup table with 256 entries
    reg [7:0] sin_lut [0:255];
    reg [7:0] cos_lut [0:255];
    reg [7:0] angle_reg;
    integer i;
    
    // Initialize the lookup table with sine and cosine values
    initial begin
        for (i = 0; i < 256; i = i + 1) begin
            sin_lut[i] = $sin(i);
            cos_lut[i] = $cos(i);
        end
    end
    
    always @(posedge clk) begin
        angle_reg <= angle;
        sin_val <= sin_lut[angle_reg];
        cos_val <= cos_lut[angle_reg];
    end
endmodule
