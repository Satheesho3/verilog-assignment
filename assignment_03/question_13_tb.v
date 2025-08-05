`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 06:56:32 PM
// Design Name: 
// Module Name: question_13_tb
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


module question_13_tb;
reg [3:0]a;
reg [6:0]b;
initial
begin
a=4'd10;
b={a,1'b1};
end
endmodule
