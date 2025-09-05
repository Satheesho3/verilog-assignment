`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 06:07:52 PM
// Design Name: 
// Module Name: fsm_7
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


module fsm_7(input  clk, rst, x,output reg y);
parameter
a=2'b00,
b=2'b01,
c=2'b10,
d=2'b11;
reg [1:0]state;
reg [1:0]n_state;
always @(posedge clk or posedge rst)begin
if(rst)
state<=a;
else
state<=n_state;
end
always @(*)begin
y=1'b0;

case(state)
a:begin
if(!x)begin
n_state=b;
end
else begin
n_state=c;
end
end
b:begin
if(!x)begin
n_state=a;
end
else begin
n_state=d;
end
end
c:begin
if(!x)begin
n_state=d;
end
else begin
n_state=a;
end
end
d:begin
if(!x)begin
n_state=c;
end
else begin
n_state=b;
y=1'b1;
end
end
default:n_state=a;
endcase
end



endmodule
