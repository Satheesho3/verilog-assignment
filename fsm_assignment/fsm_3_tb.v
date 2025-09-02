`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 09:55:52 AM
// Design Name: 
// Module Name: fsm_3_tb
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


module fsm_3_tb();
reg [7:0]a;
wire [3:0]x,y,z;
fms_3 uut(.a(a),.x(x),.y(y),.z(z));
initial begin
a=8'b0;#10;
a=8'd4;#10;
a=8'd22;#10;
a=8'd234;#10;
end

endmodule
