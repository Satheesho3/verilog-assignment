`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:30:36 PM
// Design Name: 
// Module Name: test_03_tb
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


module test_03_tb();
reg [7:0]x,y,z;
wire [7:0]sum_1,carry_1;
test_03 #(8) uut(.a(x),.b(y),.c(z),.sum(sum_1),.carry(carry_1));
reg [15:0]x1,y1,z1;
wire [15:0]sum_2,carry_2;
test_03 #(16) uut1(.a(x1),.b(y1),.c(z1),.sum(sum_2),.carry(carry_2));
initial begin
x=8'b10100011;y=8'b11010010;
z=8'b11011101;#10;
x1=16'd4231;y1=16'd7642;
z1=16'd3254;#10;


end
endmodule
