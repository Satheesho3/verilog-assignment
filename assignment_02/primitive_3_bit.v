`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 04:20:18 PM
// Design Name: 
// Module Name: primitive_3_bit
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


primitive primitive_3_bit(output f,input a,b,c);
table
0 0 0:0;
0 0 1:0;
0 1 0:1;
0 1 1:0;
1 0 0:1;
1 0 1:1;
1 1 0:1;
1 1 1:1;
endtable
endprimitive
