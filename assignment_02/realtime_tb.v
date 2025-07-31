`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 04:07:53 PM
// Design Name: 
// Module Name: realtime_tb
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


module realtime_tb;
realtime current_time;
real a,b;
initial begin
current_time=#5$realtime;
$display("time=%0t current_time=%0d a=%0d b=%0d",$time,current_time,a,b);
$monitor("time=%0t current_time=%0d a=%0d b=%0d",$time,current_time,a,b);
a=410;#10;
b=2.18;#20;
$finish;
end
endmodule
