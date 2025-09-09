`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 02:37:40 PM
// Design Name: 
// Module Name: task_5
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


module task_5();
reg [7:0]a,b,x,y;
task add_sub(input [7:0]a,b,output [7:0]x,y);
begin
x=a+b;
y=a-b;
end
endtask
initial begin
a=8'b01101110;
b=8'b10101100;
add_sub(a,b,x,y);
$display("x=%b y=%b",x,y);
end

endmodule
