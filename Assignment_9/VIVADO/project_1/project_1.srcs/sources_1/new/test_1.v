module zadoff_chu_generator (
  input wire [7:0] seq_length,
  input wire [7:0] c_prime,
  input wire clk,
  input wire reset,
  output wire [7:0] sequence
);

  reg [7:0] phase;
  reg [7:0] phase_increment;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      phase <= 0;
      phase_increment <= 0;
    end
    else if (seq_length > 0) begin
      phase <= (phase + phase_increment) % seq_length;
      phase_increment <= (phase_increment + c_prime) % seq_length;
    end
  end

  assign sequence = phase;

endmodule
