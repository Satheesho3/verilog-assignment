`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 09:44:06 AM
// Design Name: 
// Module Name: task_08_2
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


module task_08_2();
task nonautomatic_display_task();
integer i;
begin
for(i=0;i<5;i=i+1)begin
#1;
$display("non automatic:time=0%t,i=%0d",$time,i);
end
end 
endtask
initial begin
nonautomatic_display_task();
nonautomatic_display_task();
end

endmodule
