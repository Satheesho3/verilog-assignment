`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 06:39:05 PM
// Design Name: 
// Module Name: fsm_7_tb
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


module fsm_7_tb();
reg clk;
reg rst;
reg x;
wire y;
fsm_7 uut(.clk(clk),.rst(rst),.x(x),.y(y));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;clk=0;
x=0;
#10;
rst=0;
x=1'b1;#10;
x=1'b1;#10;
x=1'b0;#10;
x=1'b1;#10;
x=1'b1;#10;
x=1'b1;#10;
x=1'b1;#10;
#20$finish;
end
endmodule
