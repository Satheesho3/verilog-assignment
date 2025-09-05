`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 09:50:41 AM
// Design Name: 
// Module Name: fsm_8_tb
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


module fsm_8_tb();
 reg clk;
    reg reset;
    reg din;
    wire detected;

    fsm_8 uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );

    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        reset = 1;
        din = 0;

        #12 reset = 0;

       
        #10 din = 1;
        #10 din = 1;
        #10 din = 1; 
        #10 din = 0;
        #10 din = 1;
        #10 din = 1;
        #10 din = 1; 
        #10 din = 1;
        #10 din = 0;
           #20 $finish;
    end


endmodule
