`timescale 1ns / 1ps

module address_alu(input [31:0] first, [31:0] second, output [31:0] out);
	
	assign out = first + second;

endmodule
