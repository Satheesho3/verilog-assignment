`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 12:26:45 PM
// Design Name: 
// Module Name: fsm_4_tb
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


module fsm_4_tb();
reg clk;
reg rst;
wire [4:0]light;
wire on;
 fsm_4 uut (
        .clk(clk),
        .rst(rst),
        .light(light),
        .on(on)
    );

    // Clock generation (10ns period = 100MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Reset and stimulus
    initial begin
        // Apply reset
        rst = 1;
        #20;
        rst = 0;

        // Let it run
        #2000;

        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | State(light)=%b | Ped_on=%b", $time, light, on);
    end

endmodule
 



