`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 12:13:27 PM
// Design Name: 
// Module Name: fsm_2
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


module fsm_2(input wire clk,wire rst,wire x,output reg y);
parameter
 s0=3'b000,
 s1=3'b001,
 s2=3'b010,
 s3=3'b011,
 s4=3'b100;
 reg [2:0]ps,ns;
 always @(posedge clk or posedge rst)begin
 if(rst)
 ps<=s0;
 else
 ps<=ns;
 end
 always @(*)begin
 y=1'b0;
 case(ps)

 s0:begin
  y=1'b1;
 ns=x?s1:s0;
 end
 s1:ns=x?s4:s2;
 s2:ns=x?s0:s4;
 s3:ns=x?s3:s4;
 s4:ns=x?s2:s0;
 endcase
 end
 
endmodule
