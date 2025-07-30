`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 12:09:35 PM
// Design Name: 
// Module Name: mux8_1to4_1
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


module mux8_1to4(input s,s1,s2,a,b,c,d,e,f,g,h,output y);
wire w1,w2;
assign w1=~s2&~s1&a|~s2&s1&b|s2&~s1&c|s2&s1&d;
assign w2=~s2&~s1&e|~s2&s1&f|s2&~s1&g|s2&s1&h;
assign y=~s&w1|s&w2;
endmodule

   
