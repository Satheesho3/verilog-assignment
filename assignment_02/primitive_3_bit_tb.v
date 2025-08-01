`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 04:29:30 PM
// Design Name: 
// Module Name: primitive_3_bit_tb
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


module primitive_3_bit_tb;
reg a,b,c;
wire f;
primitive_3_bit uut(.a(a),.b(b),.c(c),.f(f));
initial begin
a=1'b0;b=1'b0;c=1'b0;#10;
a=1'b0;b=1'b0;c=1'b1;#10;
a=1'b0;b=1'b1;c=1'b0;#10;
a=1'b0;b=1'b1;c=1'b1;#10;
a=1'b1;b=1'b0;c=1'b0;#10;
a=1'b1;b=1'b0;c=1'b1;#10;
a=1'b1;b=1'b1;c=1'b0;#10;
a=1'b1;b=1'b1;c=1'b1;#10;
$finish;
end
endmodule
