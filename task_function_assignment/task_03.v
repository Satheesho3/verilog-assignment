`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:04:36 PM
// Design Name: 
// Module Name: task_03
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


module task_03();
reg [7:0]a,b;
reg [7:0]y;
task sum;
input [7:0]a,b;
output [7:0]y;
y=a+b;
endtask
initial begin
a=5;
b=7;
sum(a,b,y);
end
endmodule
