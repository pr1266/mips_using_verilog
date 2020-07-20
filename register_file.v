`timescale 1ns / 1ps
module register_file(input clk, 
						input RegWrite,
						input [4:0] read_addr_1, 
						input [4:0] read_addr_2, 
						input [4:0] write_addr, 
						input [31:0] write_data, 
						output reg [31:0] data_out_1, 
						output reg [31:0] data_out_2);


reg [31:0] regFile [31:0];

always @(posedge clk)
begin

if(RegWrite)
	regFile[write_addr] <= write_data;
	
else
	begin
		// data aval :
		data_out_1 <= regFile[read_addr_1];
		// data dovom :
		data_out_2 <= regFile[read_addr_2];
		
	end

end
endmodule
