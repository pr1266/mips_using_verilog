`timescale 1ns / 1ps
module data_memory(input clk, 
						input [6:0] addr, 
						input [31:0] write_data, 
						input memWrite, 
						input memRead, 
						output reg [31:0] read_data);

reg [31:0] mem [127:0];

integer i;

initial begin
	// be soorat e pishfarz miaim tamam e cell haye hafeze ro ba 0 por mikonim
	read_data <= 0;
	for (i = 0; i < 128; i = i + 1) 
	begin
		mem[i] = 0;
	end
	// az ye file bekhoonim :
	//$readmemh("memory.list", mem);
end

always @(posedge clk)
begin

	// age memRead on bood :
	if(memRead) read_data <= mem[addr];
	
	// age memWrite on bood :
	if(memWrite) mem[addr] <= write_data;

end

endmodule