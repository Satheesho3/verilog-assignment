`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:51:24 PM
// Design Name: 
// Module Name: task_02
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


module task_02();
reg [7:0]a,b;
wire [7:0]y;

function [7:0]add;
input [7:0]a,b;
begin
add=a+b;
end
endfunction
assign y=add(a,b);
initial begin
a=5;
b=10;
end


endmodule
