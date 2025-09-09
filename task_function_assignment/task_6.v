`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 02:48:46 PM
// Design Name: 
// Module Name: task_6
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


module task_6();
    reg a;

    task delay;
        integer i;
        for(i=0;i<10;i=i+1) begin
            #10 a = ~a;
            $display("Time = %0t, sig = %b", $time, a); 
        end
    endtask

    initial begin
        a = 0;
        delay();
    end
endmodule


