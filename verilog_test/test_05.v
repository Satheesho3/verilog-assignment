`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 10:13:10 AM
// Design Name: 
// Module Name: test_05
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


module test_05(input wire clk,rst,
output reg clk_out);
localparam divider =250000;
reg[18:0]counter;
always@(posedge clk or posedge rst)begin
if(rst)begin
counter<=0;
clk_out<=0;
end
else begin 
if(counter==divider-1)begin
counter<=0;
clk_out<=~clk_out;
end
else begin
counter<=counter+1;
end
end
end


endmodule
