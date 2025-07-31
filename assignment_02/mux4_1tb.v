`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 03:56:08 PM
// Design Name: 
// Module Name: mux4_1tb
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


module mux4_1tb;
reg s,s0,a,b,c,d;
wire y;
mux4_1 uut(.s(s),.s0(s0),.a(a),.b(b),.c(c),.d(d),.y(y));
initial begin
$display("time/ts/ts0/ta/tb/tc/td/ty");
$monitor("%0t/t%b/t%b",$time,s,s0,a,b,c,d,y);
s=1;s0=1;a=1;b=0;c=1;d=1;#10;
$finish;
end
endmodule
