`timescale 1ns / 1ps
module latch(input clk, input [31:0] data_in, output reg [31:0] q);

always @(posedge clk)
begin
	q <= data_in;
end
endmodule 