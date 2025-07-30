`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:14:42 PM
// Design Name: 
// Module Name: twohalfaddertb
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


module twohalfaddertb;
reg a,b,c;
wire sum,carry;
twohalfadder_1 uut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin
$display("time/ta/tb/tc/tsum/tcarry");
$monitor("%0t/t%b/t%b",$time,a,b,c,sum,carry);
a=0;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=0;b=1;c=1;#10;
a=1;b=1;c=1;#10;
$finish;
end
endmodule
