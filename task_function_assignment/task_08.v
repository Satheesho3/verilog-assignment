`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 06:06:01 PM
// Design Name: 
// Module Name: task_08
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


module automatic_fucn;
  task  display_task;
  integer i;
  begin
  for (i = 0; i < 5; i = i + 1) begin
   #1;
  $display("Automatic: time = %0t, i = %0d", $time, i);
      end
    end
  endtask

  initial begin
    fork
      display_task();#10;
      display_task();#10;
    join
  end
endmodule
