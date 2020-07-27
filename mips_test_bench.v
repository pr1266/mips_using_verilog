`timescale 1ns / 1ps

module mips_test_bench;

	// Inputs
	reg clk;

	// Outputs
	wire [31:0] pc_out;
	wire [31:0] alu_result;
	wire [1:0] alu_op;
	wire mem_to_reg;
	wire reg_dst;
	wire [31:0] instr;
	wire jump;
	wire branch; 
	wire mem_read; 
	wire mem_write; 
	wire alu_src;
	wire reg_write;
	wire [4:0] reg_write_dst;
	wire [31:0] reg_write_data;
	wire [4:0] reg_read_addr_1;
	wire [4:0] reg_read_addr_2;
	wire [31:0] reg_read_data_1;
	wire [31:0] reg_read_data_2;
	wire [3:0] alu_control;
	wire [31:0] mem_read_data;
	wire zero_flag;
	wire branch_controler;

	// Instantiate the Unit Under Test (UUT)
/*
	mips uut (
	clk,
	pc_out,
	alu_result,
	alu_op,
	mem_to_reg,
	reg_dst,
	instr,
	jump,
	branch, 
	mem_read, 
	mem_write,
	alu_src,
	reg_write,
	reg_write_dst,
	reg_write_data,
	reg_read_addr_1,
	reg_read_addr_2,
	reg_read_data_1,
	reg_read_data_2,
	alu_control,
	mem_read_data,
	zero_flag,
	branch_controler,
	);
*/
	
	mips uut (
	clk,
	pc_out,
	alu_result,
	alu_op,
	mem_to_reg,
	reg_dst,
	instr,
	jump,
	branch, 
	mem_read, 
	mem_write,
	alu_src,
	reg_write,
	reg_write_dst,
	reg_write_data,
	reg_read_addr_1,
	reg_read_addr_2,
	reg_read_data_1,
	reg_read_data_2,
	alu_control,
	mem_read_data,
	zero_flag,
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
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
		
	end
      
endmodule

