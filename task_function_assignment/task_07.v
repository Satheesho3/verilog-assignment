`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 05:53:06 PM
// Design Name: 
// Module Name: task_07
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


module task_07();
reg [7:0]a;
wire [7:0]y;
function [7:0]x;
input [7:0]a;
begin
x=a>>1;
end
endfunction
assign y=x(a);
initial begin
a=8'b10011001;
end
endmodule
