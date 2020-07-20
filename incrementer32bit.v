`timescale 1ns / 1ps

module incrementer32bit(input clk, output reg [31:0] counter);

always @(posedge clk)
begin
	
	counter = counter + 1;

end
endmodule
