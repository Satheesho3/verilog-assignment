`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 10:13:14 AM
// Design Name: 
// Module Name: fulladdertb
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


module fulladdertb;
reg a,b,cin;
wire sum,carry;
fulladder_1 uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
$display("time/ta/tb/tcin/tsum/tcarry");
$monitor("%0t/t%b/t%b",$time,a,b,cin,sum,carry);
a=0;b=0;cin=0;#10;
a=0;b=1;cin=0;#10;
a=1;b=1;cin=0;#10;
a=1;b=1;cin=1;#10;
$finish;
end
endmodule
