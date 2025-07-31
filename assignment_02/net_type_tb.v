`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 10:30:28 AM
// Design Name: 
// Module Name: net_type_tb
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


module net_type_tb;
reg a,b,c;
wand x;
wor y;
tri z;
triand w;


assign x=a;
assign x=b;
assign y=c;
assign y=a;
assign z=b;

assign w=a;
assign w=b;
assign w=c;
initial begin
a=0;b=1;c=1;#10;
$display("time/ta/tb/tc/tx/ty/tz/tw");
$monitor("%0t/t%b/t%b",$time,a,b,c,x,y,z,w,);
$finish;

end
endmodule
