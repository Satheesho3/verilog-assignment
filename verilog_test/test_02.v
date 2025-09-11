`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:07:21 PM
// Design Name: 
// Module Name: test_02
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


module test_02 (input a,b,cin,output sum,carry);
assign sum=a^b^cin;
assign carry=(a&b)|(b&cin)|(cin&a);
endmodule
module ripple_carry #(parameter n=8)(input [n-1:0]A,B,input c,output [n-1:0]sum,output c_out);
wire [n:0]w;
assign w[0]=c;
genvar i;
generate
for (i = 0; i < n; i = i + 1) begin 
test_02 uut (.a(A[i]),.b(B[i]),.cin(c),.sum(sum[i]),.carry(w[i+1]));
end
endgenerate
assign c_out=w[n];
endmodule
