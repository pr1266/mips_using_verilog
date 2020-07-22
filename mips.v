`timescale 1ns / 1ps
module mips(input clk);
reg [31:0] pc;
reg [31:0] pc;
reg [31:0] instruction_address;
reg [31:0] instruction;
// clk, data_in, q;
latch PC(clk, pc, instruction_address);
//clk, address, instruction output
instruction_memory INS_MEM(clk, instruction_address, instruction);

endmodule
