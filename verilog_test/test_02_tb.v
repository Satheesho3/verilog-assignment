`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:40:59 PM
// Design Name: 
// Module Name: test_02_tb
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


module test_02_tb;
parameter n=8;
reg [n-1:0]A,B;
reg c;
wire [n-1:0]sum;
wire c_out;
ripple_carry  #(n) uut(.A(A),.B(B),.c(c),.sum(sum),.c_out(c_out));
initial begin
A=8'b11001010;
B=8'b10101110;
c=1'b0;
#10;
end
endmodule
