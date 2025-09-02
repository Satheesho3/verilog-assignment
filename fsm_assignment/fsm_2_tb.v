`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 04:12:22 PM
// Design Name: 
// Module Name: fsm_2_tb
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


module fsm_2_tb();
reg clk;
reg rst;
reg x;
wire y;
fsm_2 uut(.clk(clk),.rst(rst),.x(x),.y(y));
always#5 clk=~clk;
reg[15:0]v;
integer i;
initial begin
clk=0;rst=1;x=0;
#10 rst=0;
v=16'b0101010101010101;
for(i=15;i>=0;i=i-1)begin
x=v[i];
#10;
end
#20$finish;
end


endmodule
