`timescale 1ns / 1ps
module alu32bit(input [31:0] first, 
					input [31:0] second, 
					input [3:0] select, 
					output reg [31:0] out, 
					output reg zero);

// chon madar combinational darim hame parametr ha 
always @(*)
begin
	case(select)
	// and operation
	4'b0000 : out = first && second;
	// or operation
	4'b0001 : out = first || second;
	// add operation
	4'b0010 : out = first + second;
	// subtract operation
	4'b0110 : out = first - second;
	// set on less than (SLT) : 
	4'b0111: out = first < second ? first : second;
	// nor
	4'b1100: out = first ~| second;
	
	endcase
end
assign zero = (first == second) ? 1'b1: 1'b0;

endmodule
