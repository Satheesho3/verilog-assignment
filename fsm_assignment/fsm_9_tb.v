`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 11:51:16 AM
// Design Name: 
// Module Name: fsm_9_tb
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


module fsm_9_tb();
  reg clk;
    reg rst;
    reg x;
    wire y,y1;

    fsm_9 dut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y),.y1(y1)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;   
    end

    initial begin
            rst = 1;
        x  = 0;
        #12;                
        rst = 0;

        
        x= 1; #10;
        x = 0; #10;
        x= 1; #10;
        x = 1; #10;
        x = 0; #10;
        x = 0; #10;
        x = 1; #10;
           x = 0; #10;

        #40;
        $finish;
    end



endmodule
