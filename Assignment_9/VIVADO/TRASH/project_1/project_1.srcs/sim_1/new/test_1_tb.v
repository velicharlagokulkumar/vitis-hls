module SinCos_tb();
    reg [7:0] angle;
    wire [7:0] sin_val;
    wire [7:0] cos_val;
    reg clk;
    
    SinCos dut (
        .clk(clk),
        .angle(angle),
        .sin_val(sin_val),
        .cos_val(cos_val)
    );
    
    initial begin
        // Initialize inputs
        angle = 30;
        clk = 0;
        
        // Toggle clock every 5 time units
        forever #5 clk = ~clk;
    end
    
    always @(posedge clk) begin
        if (angle < 255)
            angle = angle + 1;
        else
            $finish;  // Finish simulation after reaching maximum angle
    end
    
    initial begin
        // Monitor the outputs
        $monitor("angle=%d, sin_val=%d, cos_val=%d", angle, sin_val, cos_val);
        
        // Wait for the simulation to complete
        // Simulation time can be adjusted based on your requirements
        #100;
        
        // End the simulation
        $finish;
    end
endmodule
