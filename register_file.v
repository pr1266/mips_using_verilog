`timescale 1ns / 1ps
module register_file(input clk, 
						input RegWrite,
						input [4:0] read_addr_1, 
						input [4:0] read_addr_2, 
						input [4:0] write_addr, 
						input [31:0] write_data, 
						output [31:0] data_out_1, 
						output [31:0] data_out_2);


reg [31:0] regFile [31:0];
integer i;
initial 
	begin
		for(i = 0; i < 32; i = i + 1) regFile[i] = 32'b0;
end


always @(posedge clk)
begin
$display("zero register : %b", regFile[0]);

regFile[0] = 32'b0;
if(RegWrite)
	regFile[write_addr] <= write_data;
end
		// data aval :
		assign data_out_1 = regFile[read_addr_1];
		// data dovom :
		assign data_out_2 = regFile[read_addr_2];
endmodule
