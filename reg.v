module Reg(clk, RegWrite, Read_register1, Read_register2, Write_register, Write_data, Read_data1, Read_data2);
input clk;

integer i =0;
reg [63:0]registers[31:0];
input RegWrite;
input [4:0] Read_register1, Read_register2, Write_register;
input [63:0] Write_data;
output [63:0] Read_data1, Read_data2;

 

assign Read_data1 = registers[Read_register1];
assign Read_data2 = registers[Read_register2];


always@(posedge clk)
  begin
    if (RegWrite)
	registers[Write_register] <= Write_data;
  end



endmodule;