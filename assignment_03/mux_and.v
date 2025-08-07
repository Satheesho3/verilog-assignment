`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 12:40:47 PM
// Design Name: 
// Module Name: mux_and
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


module mux_and(input a,b,output y,y1,y2,y3,y4,y5);
assign y=(a)?b:0;
assign y1=(a)?1:b;
assign y2=(a)?0:~b;
assign y3=(a)?~b:1;
assign y4=(a)?b:~b;
assign y5=(a)?~b:b;
endmodule
