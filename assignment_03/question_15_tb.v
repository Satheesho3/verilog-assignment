`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 10:51:50 AM
// Design Name: 
// Module Name: question_15_tb
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


module question_15_tb;
reg [3:0]a;
reg [3:0]b;
initial begin
a=4'b1101;
b=4'b1101;#10;
if (a!==b)begin
$display("B1");
end
else begin
$display("B2");
end
end 
endmodule
