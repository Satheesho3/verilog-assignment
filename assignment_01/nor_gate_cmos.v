`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 11:01:19 AM
// Design Name: 
// Module Name: nor_gate_cmos
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


module nor_gate_cmos(input a,b,output y);
wire w;
supply1 vdd;
supply0 gnd;
pmos p1(w,vdd,a);
pmos p2(y,w,b);
nmos n1(y,gnd,a);
nmos n2(y,gnd,b);
endmodule
