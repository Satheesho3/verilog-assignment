`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 09:56:42 AM
// Design Name: 
// Module Name: fulladder_1
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


module fulladder_1(input a,b,cin,output sum,carry);
wire w1,w2,w3;
xor g1(w1,a,b);
xor g2(sum,w1,cin);
and g3(w2,a,b);
and g4(w3,cin,w1);
or g5(carry,w3,w2); 
endmodule
