`timescale 1ns / 1ps

module instruction_memory(input [31:0] addr,
								output [31:0] instruction);

reg [31:0] mem [31:0];

initial  
      begin  
                mem[0] = 32'b001000_00000_00001_0000000000000011;
                mem[1] = 32'b001000_00000_00010_0000000000000011;
                mem[2] = 32'b000000_00001_00010_00011_00000_011000;
                mem[3] = 32'b100011_00010_00001_0000000000001010;
                mem[4] = 32'b000100_00001_00010_0000000000010100;
					 // inja az file mikhoonim vase ghesmat e 3vom soal :
					 //$readmemb("instruction.mem", mem);
      end  


assign instruction = mem[addr];

endmodule
