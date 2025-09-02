`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 11:23:19 AM
// Design Name: 
// Module Name: fsm_1_tb
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


module fsm_1_tb();
 reg x;
  reg clk;
   reg rst; 
   wire y;
   //wire[2:0] state, next_state;
   fsm_1 uut(.clk(clk),.rst(rst),.x(x),.y(y));
   //initial begin
   //clk=1'b0;
  always #5 clk=~clk;
  //end
  reg [15:0]test_vec;
  integer i;
  initial begin
  clk=0;rst=1;x=0;
  #10 rst=0;
   test_vec = 16'b000111100011100;
        for (i = 15; i >= 0; i = i - 1) begin
            x = test_vec[i];
  #20;
  end
  
  //$monitor("t=%t x=%b clk=%b rst=%b y=%b ps=%b ns=%0b",$time,x,clk,rst,y,state,next_state);
  #40$finish;
  end

  
   
   

endmodule
