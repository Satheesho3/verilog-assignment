`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 03:06:22 PM
// Design Name: 
// Module Name: time_tb
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


module time_tb;
time t,t1,t2,t3;
initial begin
t=1;#5;
t1=0;#10;
t2=1;#15;
t3=1;#20;
$display("time=%0d t=%0b t1=%0b t2=%0b t3=%0b",$time,t,t1,t2,t3);
$finish;
end

endmodule
