`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 12:35:48 PM
// Design Name: 
// Module Name: question_8_tb
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


module question_8_tb;
reg[11*8:1]s;
wire s1;
assign s1=s;
initial begin
s ="hello world";
s1=s[88:40];#10;
$display("time=%0t s=%0d s1=%0d",$time,s,s1);
$finish;
end
endmodule
