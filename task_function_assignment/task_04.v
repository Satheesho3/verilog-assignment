`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:09:09 PM
// Design Name: 
// Module Name: task_04
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


module task_04();
integer i;
reg [7:0]a[19:0];
reg even;
function [7:0]out;
input integer index;
input even;
begin
if(even)
out=2*index;
else
out=2*index+1;
end
endfunction
initial begin
even=1;
for(i=0;i<20;i=i+1)begin
a[i]=out(i,even);
end
even=0;
for(i=0;i<20;i=i+1)begin
a[i]=out(i,even);
end
end

endmodule
