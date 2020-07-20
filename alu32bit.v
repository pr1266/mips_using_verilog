`timescale 1ns / 1ps
module alu32bit(input clk, 
					input [31:0] first, 
					input [31:0] second, 
					input [3:0] select, 
					output reg [31:0] out, 
					output reg zero);

always @(posedge clk)
begin
	case(select)
	// and operation
	4'b0000 : out = first && second;
	// or operation
	4'b0001 : out = first || second;
	
	endcase
end
endmodule
