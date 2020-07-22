`timescale 1ns / 1ps

module mips(input clk, output [31:0] pc_out, alu_result);

reg [31:0] pc_current;
wire signed[15:0] pc_next,pc2;
//check kon bbin in chie
//instruction 32 bit :
wire [31:0] instr;
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
// inja condition jump ro bezar :
begin
	pc_current <= pc_next;
end

// address pc ro 4 byte (32 bit ya 1 word) ezafe mikonim :
assign pc2 = pc_current + 32'd4;
// inja instruction memory :
instruction_memory instr_mem(.clk(clk),.pc(pc_current),.instruction(instr));


// jump shift left 1  
assign jump_shift_1 = {instr[13:0],1'b0};


Control control_unit(.reset(reset),.opcode(instr[31:26]),.reg_dst(reg_dst)  
                ,.mem_to_reg(mem_to_reg),.alu_op(alu_op),.jump(jump),.branch(branch),.mem_read(mem_read),  
                .mem_write(mem_write),.alu_src(alu_src),.reg_write(reg_write),.sign_or_zero(sign_or_zero));  


// regWrite Destination :
assign reg_write_dest = (reg_dst==2'b10) ? 3'b111: ((reg_dst==2'b01) ? instr[6:4] :instr[9:7]);
assign reg_read_addr_1 = instr[12:10];  
assign reg_read_addr_2 = instr[9:7];


register_file reg_file(.clk(clk) ,.RegWrite(reg_write),  
 .write_addr(reg_write_dest),  
 .write_data(reg_write_data),  
 .read_addr_1(reg_read_addr_1),  
 .data_out_1(reg_read_data_1),  
 .read_addr_2(reg_read_addr_2),  
 .data_out_2(reg_read_data_2)); 

// injasho nafahmidam :
assign sign_ext_im = {{9{instr[6]}},instr[6:0]};  
assign zero_ext_im = {{9{1'b0}},instr[6:0]};  
assign imm_ext = (sign_or_zero==1'b1) ? sign_ext_im : zero_ext_im;


// JR control  
 JR_Control JRControl_unit(.alu_op(alu_op),.funct(instr[3:0]),.JRControl(JRControl));       
 // ALU control unit  
 ALUControl ALU_Control_unit(.ALUOp(alu_op),.Function(instr[3:0]),.ALU_Control(ALU_Control));  
 // multiplexer alu_src  
 assign read_data2 = (alu_src==1'b1) ? imm_ext : reg_read_data_2;  
 // ALU   
 alu alu_unit(.a(reg_read_data_1),.b(read_data2),.alu_control(ALU_Control),.result(ALU_out),.zero(zero_flag));  
 // immediate shift 1  
 assign im_shift_1 = {imm_ext[14:0],1'b0};  
 //  
 assign no_sign_ext = ~(im_shift_1) + 1'b1;  
 // PC beq add  
 assign PC_beq = (im_shift_1[15] == 1'b1) ? (pc2 - no_sign_ext): (pc2 +im_shift_1);  
 // beq control  
 assign beq_control = branch & zero_flag;  
 // PC_beq  
 assign PC_4beq = (beq_control==1'b1) ? PC_beq : pc2;  
 // PC_j  
 assign PC_j = {pc2[15],jump_shift_1};  
 // PC_4beqj  
 assign PC_4beqj = (jump == 1'b1) ? PC_j : PC_4beq;  
 // PC_jr  
 assign PC_jr = reg_read_data_1;  
 // PC_next  
 assign pc_next = (JRControl==1'b1) ? PC_jr : PC_4beqj;  
 // data memory  
 data_memory datamem(.clk(clk),.mem_access_addr(ALU_out),  
 .mem_write_data(reg_read_data_2),.mem_write_en(mem_write),.mem_read(mem_read),  
 .mem_read_data(mem_read_data));  
 // write back
 assign reg_write_data = (mem_to_reg == 2'b10) ? pc2:((mem_to_reg == 2'b01)? mem_read_data: ALU_out);  
 // output
 assign pc_out = pc_current;  
 assign alu_result = ALU_out;

endmodule
