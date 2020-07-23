`timescale 1ns / 1ps

module mips(input clk, output [31:0] pc_out, alu_result);

// address e feli program counter :
reg [31:0] pc_current;

// meghdar e baddi pc :
wire signed[31:0] pc_next,pc2;
//check kon bbin in chie
//instruction 32 bit :
wire [31:0] instr;
wire [1:0] reg_dst, mem_to_reg, alu_op;
wire jump, branch, mem_read, mem_write, alu_src, reg_write;
// 5 bit baraye RegDst :
wire [4:0] reg_write_dst;

// 32 bit data baraye neveshtan dar Register
// hala ya natije mohasebat e alu e ya natije load word :
wire [31:0] reg_write_data;

// 5 bit address baraye khoondan e register ha :
wire [4:0] reg_read_addr_1;
wire [4:0] reg_read_addr_2;
// 32 bit data ke az khoondan e register ha rooye bus gharar migire :
wire [31:0] reg_read_data_1;
wire [31:0] reg_read_data_2;


wire [31:0] sign_ext_im, read_data2, zero_ext_im, imm_ext;
wire JRControl;

// 4 bit baraye control e operation haye ALU :
wire [3:0] alu_control;

// natije mohasebat e alu 32 bit hast :
wire [31:0] alu_out;

// signal e zero e alu :
wire zero_flag;


wire signed[31:0] im_shift_1, PC_j, PC_beq, PC_4beq,PC_4beqj,PC_jr;
wire beq_control;
// in ziri ro badan check kon
wire [14:0] jump_shift_1;

// 32 bit baraye neveshtan dar memory :
wire [31:0] mem_read_data;

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
instruction_memory instr_mem(.addr(pc_current),.instruction(instr));

// az bit e 31 ta 26 e instructioni ke fetch kardim midim be cotrol unit :
// inja signal haye :
// RegDst
// Branch
// MemRead
// MemtoReg
// ALUOP
// MemWrite
// ALUSrc
// RegWrite
// be onvan e output e control unit meghdar dade mishan :

Control control_unit(.inst_in(instr[31:26]),.RegDst(reg_dst)  
                ,.MemtoReg(mem_to_reg),.ALUop(alu_op),.MemRead(mem_read),  
                .MemWrite(mem_write),.ALUsrc(alu_src),.RegWrite(reg_write));  


// regWrite Destination :
// RegDst signal e controli mux e 2 be 1 voroodi write register address e
// ke bbinim toye register jadid bayad benevisim ya rooye register 2 neveshte beshe :
assign reg_write_dest = (reg_dst == 1'b1) ? instr[15:11] : instr[20:16];

// inja oon busi ke be Register file mire va khat e
// address e register e 1 o 2 hast ro meghdar midim :
assign reg_read_addr_1 = instr[25:21];  
assign reg_read_addr_2 = instr[20:16];



register_file reg_file(.clk(clk) ,.RegWrite(reg_write),  
 .write_addr(reg_write_dest),  
 .write_data(reg_write_data),  
 .read_addr_1(reg_read_addr_1),  
 .data_out_1(reg_read_data_1),  
 .read_addr_2(reg_read_addr_2),  
 .data_out_2(reg_read_data_2)); 


// inja sign extend mikonim :
// 16 bit aval e instruction ro midim be sign extend
// meghdar e khoroojish ro mirizim too sign_ext_im
sign_extend SignExtend(instr[15:0], sign_ext_im);
 
assign zero_ext_im = {{16{1'b0}}, instr[15:0]};
assign imm_ext = (sign_or_zero == 1'b1) ? sign_ext_im : zero_ext_im;


// JR control  
//JR_Control JRControl_unit(.alu_op(alu_op),.funct(instr[3:0]),.JRControl(JRControl));       
// ALU control unit
 
// 2 bit alu_op ke az control unit miad :
// 6 bit e aval e instruction : intr[5:0]
// 4 bit ham operation dare ke outpute :
ALU_control alu_control_unit(alu_op, instr[5:0], alu_control);

// multiplexer alu_src
// age 1 bashe oon meghdar e sign extend shode ke too
// module sign extend dorostesh kardim va 32 bit e mire too alu
// age 0 bashe data marboot be register e dovom :
assign read_data2 = (alu_src == 1'b1) ? sign_ext_im : reg_read_data_2;  
// hala ALU ro misazim :
alu32bit alu_unit(reg_read_data_1, read_data2, alu_control, alu_out, zero_flag);
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
 assign alu_result = alu_out;

endmodule 