`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 03:26:18 PM
// Design Name: 
// Module Name: floating_tb
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


module floating_tb;
real a,b;
integer i,i1;
initial begin
a=4e10;
b=2.18;
$display("time=%0d a=%0d b=%0d i=%0d i1=%0d",$time,a,b,i,i1);
$monitor("time=%0d a=%0d b=%0d i=%0d i1=%0d",$time,a,b,i,i1);
i=a;
i1=b;#10;
$finish;
end
endmodule
