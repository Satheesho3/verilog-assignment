`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 07:09:52 PM
// Design Name: 
// Module Name: test_09
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


module test_09(input  x,
input clk,
input rst,
output  y);
parameter
s=3'b000,
s1=3'b001,
s2=3'b010,
s3=3'b011,
s4=3'b100,
s5=3'b101;
reg [2:0]state;
reg [2:0]n_state;
always@(posedge clk)begin
if(rst)
state<=s;
else
state<=n_state;
end
always @(*)begin
case(state)
s:n_state=(x)?s1:s;
s1:n_state=(x)?s1:s2;
s2:n_state=(x)?s3:s2;
s3:n_state=(x)?s4:s2;
s4:n_state=(x)?s2:s5;
s5:n_state=(x)?s2:s;
endcase
end
assign y=(state==3'b101);




endmodule
