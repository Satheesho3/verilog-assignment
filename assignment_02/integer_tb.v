`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 02:39:29 PM
// Design Name: 
// Module Name: integer_tb
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


module integer_tb;
integer i,i1;
initial begin

$monitor("time=%0d i=%0d i1=%0d",$time ,i,i1);
i=44;#10;
i1=-25;#10;
$finish;#25;
end
endmodule
