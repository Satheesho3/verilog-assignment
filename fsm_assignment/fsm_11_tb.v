`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 03:21:09 PM
// Design Name: 
// Module Name: fsm_11_tb
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


module fsm_11_tb();
reg clk;
reg rst;
reg j,k;
wire y;
fsm_11 uut(.clk(clk),.rst(rst),.j(j),.k(k),.y(y));
initial begin
clk=0;
 forever #10 clk=~clk;
 end
 initial begin
 j=0;
 j=0;rst=1;
 #12 rst=0;
 j=0;k=0;#10;
  j=0;k=1;#10;
   j=1;k=0;#10;
    j=1;k=1;#10;
  

 
 
end


endmodule
