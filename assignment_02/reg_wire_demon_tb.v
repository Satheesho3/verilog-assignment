`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 09:39:42 AM
// Design Name: 
// Module Name: reg_wire_demon_tb
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


module reg_wire_demon_tb;
wire a,b;
assign {a,b}=1'b1;
initial begin
$display("time/ta,tb");
$finish;
end
endmodule
module reg_demon;
reg a,b;
assign {a,b}=1'b1;
initial begin
$display("time/ta/tb");
$finish;
end
endmodule

