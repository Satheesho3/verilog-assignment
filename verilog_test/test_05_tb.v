`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 10:22:32 AM
// Design Name: 
// Module Name: test_05_tb
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


module test_05_tb();
reg clk,rst;
wire clk_out;
test_05 uut(.clk(clk),.rst(rst),.clk_out(clk_out));
always #5 clk=~clk;
initial begin
clk=0;
rst=1;
#50;
rst=0;
$stop;
$monitor("time=%0t|clk_out=%b",$time,clk_out);
end

endmodule
