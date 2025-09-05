`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 03:06:53 PM
// Design Name: 
// Module Name: fsm_11
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


module fsm_11(input clk,rst,j,k,output y);
parameter
off=2'b00,
on=2'b01;
reg [1:0]state,n_state;
always @(posedge clk or posedge rst)begin
if (state)
state<=off;
else
state<=n_state;
end
always @(*)begin
case(state)
off:n_state=j?on:off;
on:n_state=k?off:on;
default
n_state=0;
endcase
end
assign y=(state==on);

endmodule
