`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 11:09:01 AM
// Design Name: 
// Module Name: task_010
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


module task_010();
reg [7:0]a,b;
wire [7:0]y;
function [7:0]x;
input [7:0]a,b;
begin
x=a+b;
end
endfunction
function [7:0]z;
input [7:0]a,b;
begin
z=x(a,b);
end
endfunction
assign y=z(a,b);
initial begin
a=8'd4;
b=8'd2;
end

endmodule
