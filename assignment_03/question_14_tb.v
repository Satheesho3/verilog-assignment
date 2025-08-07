`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2025 07:13:44 PM
// Design Name: 
// Module Name: question_14_tb
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


module question_14_tb;
reg [3:0]a;
initial
begin
a= 4'b110x;
if (a==4'b1100)
begin: B1
$display("B1 executed");
end
else
begin: B2 end
$display("B2 executed");
end
endmodule
