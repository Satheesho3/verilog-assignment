`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 12:33:20 PM
// Design Name: 
// Module Name: task_4
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


module task_4;
reg [7:0]a;
reg [15:0]y;
task square;
input [7:0]a;
output [15:0]y;
begin
y=a**2;
end
endtask
initial begin 
a=8'b10101010;
square(a,y);
$display("y=%d",y);
end


endmodule
