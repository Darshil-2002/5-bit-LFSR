
module lfsr_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [4:0] q;

	// Instantiate the Unit Under Test (UUT)
	Lfsr uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 10 ns for global reset to finish
		#10;
        
		// Add stimulus here
		reset = 1;
		#20 reset = 0;
		#100 $finish;
	end
      always #5 clk = ~clk;
endmodule
