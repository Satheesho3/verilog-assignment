`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 01:16:46 PM
// Design Name: 
// Module Name: ripple_carryadder_struct
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


module ripple_carryadder_struct(input a,b,c,output sum,carry);
wire w1,w2,w3,w4;
xor g1(w1,a,b);
xor g2(sum,w1,c);
and g3(w2,a,b);
or g4(w3,a,b);
and g5(w4,w3,c);
or g6(carry,w2,w4);
endmodule
module ripple_carry_adder(input a0,a1,a2,a3,b0,b1,b2,b3,cin,output s0,s1,s2,s3,c3);
wire c0,c1,c2;
ripple_carryadder_struct f1(a0,b0,cin,s0,c0);
ripple_carryadder_struct f4(a1,b1,c0,s1,c1);
ripple_carryadder_struct f5(a2,b2,c1,s2,c2);
ripple_carryadder_struct f7(a3,b3,c2,s3,c3);
endmodule