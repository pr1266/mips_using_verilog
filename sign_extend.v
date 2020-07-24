`timescale 1ns / 1ps
module sign_extend(input [15:0] input_number, output [31:0] output_number);




assign output_number = {{8{input_number[15]}}, input_number};

endmodule
