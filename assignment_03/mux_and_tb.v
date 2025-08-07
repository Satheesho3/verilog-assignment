`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2025 02:02:01 PM
// Design Name: 
// Module Name: mux_and_tb
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


module mux_and_tb;
reg a,b;
wire y,y1,y2,y3,y4,y5;
mux_and uut(.a(a),.b(b),.y(y),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5));
initial begin
a=1'b0;b=1'b0;#10;
a=1'b0;b=1'b1;#10;
a=1'b1;b=1'b0;#10;
a=1'b1;b=1'b1;#10;
$finish;
end
endmodule
