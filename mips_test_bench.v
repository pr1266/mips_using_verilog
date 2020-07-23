`timescale 1ns / 1ps

module mips_test_bench;

	// Inputs
	reg clk;

	// Outputs
	wire [31:0] pc_out;
	wire [31:0] alu_result;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.pc_out(pc_out), 
		.alu_result(alu_result)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
		#5
		clk = 1;
		#5
		clk = 0;
		
        
		// Add stimulus here

	end
      
endmodule

