`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 09:51:16 AM
// Design Name: 
// Module Name: bit_select_tb
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


module bit_select_tb;
reg [7:0]a;
reg y;
initial begin
$display("time=%0t a=%0b y=%0t",$time,a,y);
a=8'b11101101;#10;
y= a[3];#10;
$finish;
end
endmodule
