`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:17:02 PM
// Design Name: 
// Module Name: test_03
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


module test_03 #(parameter n=8)(input [n-1:0]a,b,c,output [n-1:0]sum,carry);
assign sum=a^b^c;
assign carry=a&b|b&c|c&a;
endmodule
