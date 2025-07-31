`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/30/2025 10:17:16 AM
// Design Name: 
// Module Name: part_select_tb
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


module part_select_tb;
reg [7:0]a;
reg [3:0]y;
reg [7:4]y1;
initial begin
a=8'b11101101;#10;
 y=a[3:0];#10;
 y1=a[7:4];#10;
$display("time=%0t a=%0b y1=%0t ",$time,a,y,y1);
//$monitor("time=%0t a=%0b y=%0t",$time,a,y);
$finish;
end
endmodule

