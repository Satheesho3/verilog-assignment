`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 07:28:39 PM
// Design Name: 
// Module Name: test_09_tb
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


module test_09_tb();
reg clk;
reg rst;
reg x;
wire y;
test_09 uut(.clk(clk),.rst(rst),.x(x),.y(y));
always #5 clk=~clk;
    reg [15:0]test_ip;
    integer i;
    initial begin
        clk=0;rst=1;x=0;
        #12 rst=0;
        test_ip= 16'b1001011010101100;
        for (i=15;i>=0;i=i-1) begin
            x=test_ip[i];
            #10;
        end
        #20 $finish;
    end

endmodule
