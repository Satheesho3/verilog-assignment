`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 10:17:30 AM
// Design Name: 
// Module Name: reg_demon_tb
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


module reg_demon_tb;
reg a,b;
initial begin
$display("time/ta/tb");
a=1'b1;#10;
b=a;#10

$finish;
end
endmodule
