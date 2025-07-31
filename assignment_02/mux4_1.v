`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 03:44:48 PM
// Design Name: 
// Module Name: mux4_1
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


module mux4_1(input s,s0,a,b,c,d,output y);
wire w1,w2,w3,w4,w5,w6;
not g(w1,s);
not g1(w2,s0);
and g2(w3,w1,w2,a);
and g3(w4,w1,s0,b);
and g4(w5,s,w2,c);
and g5(w6,s,s0,d);
or g6(y,w3,w4,w5,w6);
endmodule
