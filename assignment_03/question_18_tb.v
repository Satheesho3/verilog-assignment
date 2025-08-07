`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 12:33:17 PM
// Design Name: 
// Module Name: question_18_tb
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


module question_18_tb;
reg [3:0]a= 4'b0100;
reg [4:0]b;
initial begin
b = a+1'bx;
end
endmodule
