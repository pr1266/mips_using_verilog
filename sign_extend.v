`timescale 1ns / 1ps
module sign_extend(input [15:0] input_number, output reg [31:0] output_number);


always @(*)
begin
	output_number <= {{8{input_number[15]}}, input_number};
end

endmodule
