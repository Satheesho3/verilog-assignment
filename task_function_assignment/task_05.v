`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 05:03:02 PM
// Design Name: 
// Module Name: task_05
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


module task_05();
reg [7:0]a;
reg [7:0]b;
wire [7:0]x;
wire [7:0]y;
function [7:0]mul;
input [7:0]c,d;
begin
mul=c*d;
end
endfunction
function [7:0]div;
input [7:0]c,d;
begin
div=c/d;
end
endfunction
assign x=mul(a,b);
assign y=div(a,b);
initial begin
a=10;
b=5;
end

endmodule
