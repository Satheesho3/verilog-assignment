`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 10:54:47 AM
// Design Name: 
// Module Name: not_gate_tb
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


module not_gate_tb;
reg a;
wire y;
not_gate_cmos uut(.a(a),.y(y));
initial begin
$display("time/ta/ty");
$monitor("%0t/t%b/t%b",$time,a,y);
a=0;#10;
a=1;#10;
$finish;
end
endmodule
