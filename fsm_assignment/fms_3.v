`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 04:38:25 PM
// Design Name: 
// Module Name: fms_3
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


module fms_3(input [7:0]a,output [3:0]x,y,z);
reg [19:0]shift;
reg [3:0]h,t,o;
integer i;
always @(*)begin
shift=20'b0;
shift[7:0]=a;
for(i=0;i<8;i=i+1)begin
if(shift[11:8]>=5)
shift[11:8]=shift[11:8]+3;
if(shift[15:12]>=5)
shift[15:12]=shift[15:12]+3;
if(shift[19:16]>=5)
shift[19:16]=shift[19:16]+3;
shift=shift<<1;
end
h=shift[19:16];
t=shift[15:12];
o=shift[11:8];
end
assign x=h;
assign y=t;
assign z=o;

endmodule
