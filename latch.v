`timescale 1ns / 1ps
module PC(input clk, input [31:0] data_in, output [31:0] q);

reg [31:0] buff = 0;

assign q = buff; 

always @(posedge clk) buff <= data_in;

endmodule 