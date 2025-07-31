`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 12:00:47 PM
// Design Name: 
// Module Name: register_tb
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


module register_tb;
reg [7:0]a;
wire[7:0]y;
assign y = a;
//assign y={a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0]};
initial begin
$monitor("time =%0d y = %0b a=%0b",$time ,y,a);
$display("time =%0d y = %0b a=%0b",$time ,y,a);

a=8'b10011101;#10;
a=8'b11011101;#10;

#2;$finish;
end
endmodule
