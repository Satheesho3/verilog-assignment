`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 03:12:18 PM
// Design Name: 
// Module Name: tristate_mux_2_1_tb
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


module tristate_mux_2_1_tb;
reg a,b,s;
wire f;
tristate_mux_2_1 uut(.a(a),.b(b),.s(s),.f(f));
initial begin

$display("time=%0t a=%0b b=%0b s=%0b f=%0b",$time,a,b,s,f);
$monitor("time=%0t a=%0b b=%0b s=%0b f=%0b",$time,a,b,s,f);
a=1'b0;b=1'b1;s=1'b0;#10;
b=1'b1;s=1'b1;#10;
$finish;
end
endmodule
