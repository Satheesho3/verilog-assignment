`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 06:16:38 PM
// Design Name: 
// Module Name: test_08_tb
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


module test_08_tb();
reg x;
  reg clk;
   reg rst; 
   wire y;
  
   test_08 uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );

    always #5 clk = ~clk;

    reg [15:0] test_vec;
    integer i;

    initial begin
        clk = 0; rst = 1; x = 0;
        #12 rst = 0;
        test_vec = 16'b0001111000111001;
        for (i = 15; i >= 0; i = i - 1) begin
            x = test_vec[i];
            #10;
        end
        #20 $finish;
    end


  
   
   

endmodule
