`timescale 1ns / 1ps
module data_memory(input clk, 
						input [6:0] addr, 
						input [31:0] write_data, 
						input memWrite, 
						input memRead, 
						output reg [31:0] read_data);

reg [31:0] mem [127:0];

endmodule
