`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 03:53:01 PM
// Design Name: 
// Module Name: primitive_and_tb
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


module primitive_and_tb;
reg a,b;
wire c;
primitive_and uut(.a(a),.b(b),.c(c));
initial begin
a=0;b=0;#10;
a=0;b=1;#20;
a=1;b=0;#30;
a=1;b=1;#40;
end
endmodule

