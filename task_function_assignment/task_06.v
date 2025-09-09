`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 05:29:56 PM
// Design Name: 
// Module Name: task_06
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


module task_06();
reg [7:0]a;
reg [7:0]b;
reg [7:0]y;
task add;
input [7:0]a;
input [7:0]b;
output [7:0]out_3;
begin
out_3=a+b;
end
endtask
task sub;
input [7:0]a;
input [7:0]b;
output [7:0]out_2;
begin
out_2=a-b;
end
endtask
task mul;
input [7:0]a;
input [7:0]b;
output [7:0]out_1;
begin
out_1=a*b;
end
endtask
task div;
input [7:0]a;
input [7:0]b;
output [7:0]out_0;
begin
out_0=a/b;
end
endtask
initial begin
a=8'd8;
b=8'd2;
add(a,b,y);#10;
$display("add:a=%d b=%d y=%d",a,b,y);
sub(a,b,y);#10;
$display("sub:a=%d b=%d y=%d",a,b,y);
mul(a,b,y);#10;
$display("mul:a=%d b=%d y=%d",a,b,y);
div(a,b,y);#10;
$display("div:a=%d b=%d y=%d",a,b,y);
$finish;#200;
end


endmodule
