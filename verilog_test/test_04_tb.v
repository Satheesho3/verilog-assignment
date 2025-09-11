`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 12:15:16 PM
// Design Name: 
// Module Name: test_04_tb
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


module test_04_tb();
reg a,b,c,d,e;
wire y;

test_04 uut(.a(a),.b(b),.c(c),.d(d),.e(e),.y(y));
initial begin
        $monitor("t=%0t | a=%b b=%b c=%b d=%b e=%b | y=%b", $time, a,b,c,d,e,y);     
         {a,b,c,d,e} = 5'b00000;#10
        #10 {a,b,c,d,e} = 5'b10101;
        #10 {a,b,c,d,e} = 5'b11011;
        #10 {a,b,c,d,e} = 5'b11111;
        #10 $monitoroff;
        #50 $monitoron;
        #20 {a,b,c,d,e} = 5'b01010;
        #20 {a,b,c,d,e} = 5'b11100;

        #50 $finish;

  
 $finish;

end

endmodule
