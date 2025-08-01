`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 10:48:23 AM
// Design Name: 
// Module Name: not_gate_cmos
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


module not_gate_cmos(input a,output y);
supply1 vdd;
supply0 gnd;
pmos p(y,vdd,a);
nmos n(y,gnd,a);
endmodule
