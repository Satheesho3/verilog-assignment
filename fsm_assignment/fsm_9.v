`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 10:41:52 AM
// Design Name: 
// Module Name: fsm_9
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


module fsm_9(input wire x,wire clk,wire rst,output reg y ,y1);
parameter 
a=2'b00,
b=2'b01,
c=2'b10,
d=2'b11;
reg [1:0]state,n_state;
always @(posedge clk or posedge rst)begin
if (rst)
state<=a;
else
         state<=n_state;
      end
   always @(*)begin
       n_state = state;
      y = 0;
       case (state)
       a:begin
       if(x)
       n_state=b;
        else
       n_state=c;
       end
       b:begin
       if(x)
       n_state=a;
        else
       n_state=d;
       end
       c:begin
       if(x)
       n_state=d;
       else
       n_state=a;
       end
       d:begin
       if(x)
       n_state=c;
      else
       n_state=b;
       
       end
       endcase
       end
       always @(*)begin
       y=(state==a||state==b);
       
      y1= (state==b||state==d);
       
      
       end


endmodule
