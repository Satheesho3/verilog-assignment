`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 06:53:31 PM
// Design Name: 
// Module Name: test_06_tb
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


module test_06_tb();
  reg [7:0] a;
  wire [2:0] y;

  test_06 uut(.a(a), .y(y));

  initial begin
    a = 8'b00010000; #10;
    a = 8'b10000000; #10;
    a = 8'b01000000; #10;
    a = 8'b00000100; #10;
    $finish;
  end
endmodule
