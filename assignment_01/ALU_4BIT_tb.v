`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 11:44:08 AM
// Design Name: 
// Module Name: ALU_4BIT_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_4BIT_tb;
reg a,b,c;
wire sum,carry,difference,borrow;
ALU_4BIT uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
subtractor uut_1(.a(a),.b(b),.c(c),.difference(difference),.borrow(borrow));
initial begin
a=1'b0;b=1'b0;c=1'b0;#10;
a=1'b0;b=1'b0;c=1'b1;#10;
a=1'b0;b=1'b1;c=1'b1;#10;
a=1'b1;b=1'b0;c=1'b0;#10;
$finish;
end
endmodule
