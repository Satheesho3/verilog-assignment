`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 10:03:25 AM
// Design Name: 
// Module Name: task_09
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


module task_09();
reg [7:0]a,b;
wire [15:0]y;
function [15:0]sum;
input [7:0]a,b;
begin
sum=a+b;
end
endfunction
task sub;
input [7:0]a,b;
output [15:0]out;
output [15:0]out_1;
begin
out=a-b;
out_1=sum(a,b);
end
endtask
task main;
input [7:0]a,b;
output [15:0]y;
reg[15:0]out,out_1;
begin
sub(a,b,out,out_1);
y={out,out_1};
end
endtask
reg[15:0]x;
assign y=x;
initial begin
a=8'd15;
b=8'd12;
main(a,b,x);#10;
$display("y=%d",y);
end


endmodule
