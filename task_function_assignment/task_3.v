`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 12:22:09 PM
// Design Name: 
// Module Name: task_3
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


module task_3;
reg [7:0]a;
reg [7:0]b;
reg [7:0]x,y;
task and_or;
input [7:0]a,b;
output [7:0]x,y;
begin
x=a&b;
y=a|b;
end
endtask
initial begin 
a=8'b10101010;
b=8'b01011010;
and_or(a,b,x,y);
$display("x=%d y=%d",x,y);
end

endmodule
