`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 06:51:06 PM
// Design Name: 
// Module Name: test_06
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



module test_06(
  input [7:0] a,
  output reg [3:0] y
);
  always @(*) begin
    casez(a)
      8'b1???????: y = 3'd7;
      8'b01??????: y = 3'd6;
      8'b001?????: y = 3'd5;
      8'b0001????: y = 3'd4;
       8'b00001???: y = 3'd3;
      8'b000001??: y = 3'd2;
      8'b0000001?: y = 3'd1;
      8'b00000001: y = 3'd0;
      default: y = 2'd0; 
    endcase
  end
endmodule


