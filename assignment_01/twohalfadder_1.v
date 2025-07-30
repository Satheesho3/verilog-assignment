`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:08:01 PM
// Design Name: 
// Module Name: twohalfadder_1
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


module twohalfadder_1(input a,b,c,output sum,carry);
wire w1,w2,w3;
xor g(w1,a,b);
xor g1(sum,w1,c);
and g2(w2,a,b);
and g3(w3,c,w1);
or g4(carry,w3,w2);
endmodule
