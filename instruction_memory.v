`timescale 1ns / 1ps

module instruction_memory(input clk, 
								input [4:0] addr, 
								output reg [31:0] instruction);

reg [31:0] mem [31:0];

always @(posedge clk)
begin
	instruction <= mem[addr];
end

endmodule
