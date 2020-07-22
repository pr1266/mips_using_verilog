`timescale 1ns / 1ps

module mips(input clk, output [31:0] pc_out, alu_result);

reg [31:0] pc_current;
//check kon bbin in chie
wire signed [31:0] instr;
wire [1:0] reg_dst, mem_to_reg, alu_op;
wire jump, branch, mem_read, mem_write, alu_src, reg_write;
wire [4:0] reg_write_dst;
wire [31:0] reg_write_data;
wire [4:0] reg_read_addr_1;
wire [31:0] reg_read_data_1;
wire [4:0] reg_read_addr_2;
wire [31:0] reg_read_data_2;

wire [31:0] sign_ext_im, read_data2, zero_ext_im, imm_ext;
wire JRControl;
wire [3:0] alu_control;
wire [31:0] alu_out;
wire zero_flag;
wire signed[31:0] im_shift_1, PC_j, PC_beq, PC_4beq,PC_4beqj,PC_jr;
wire beq_control;  
//wire [14:0] jump_shift_1;  
wire [31:0]mem_read_data;  
wire [31:0] no_sign_ext;  
wire sign_or_zero;  



always @(posedge clk)
begin

end


endmodule
