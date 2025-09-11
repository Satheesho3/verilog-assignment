`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 07:49:54 PM
// Design Name: 
// Module Name: test_10
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


module test_10;
integer rand_num;
integer i;
initial begin
for (i = 0; i < 10; i = i + 1) begin
rand_num = ($random % 100) - 100;
$display("Random number[%0d] = %0d", i, rand_num);
#10;
end
$finish;
end

endmodule
