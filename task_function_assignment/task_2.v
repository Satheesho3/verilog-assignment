`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 11:25:59 AM
// Design Name: 
// Module Name: task_2
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


module task_2;
reg [7:0]a;
reg [7:0]b;
reg [7:0]y;
task sub;
input [7:0]a,b;
output [8:0]y;
begin
y=a-b;
end
endtask
initial begin 
a=8'b10101010;
b=8'b01011010;
sub(a,b,y);
$display("y=%d",y);
end

endmodule
