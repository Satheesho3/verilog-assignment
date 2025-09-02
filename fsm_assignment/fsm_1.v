`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 10:53:23 AM
// Design Name: 
// Module Name: fsm_1
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


module fsm_1(input wire x,input wire clk,input wire rst,output reg y);
parameter 
         s=3'b000,
         a=3'b001,
         b=3'b010,
         c=3'b011,
         a1=3'b100,
         b1=3'b101,
         c1=3'b110;
        reg [2:0]state;
        reg [2:0]next_state;
         always @(posedge clk or posedge rst)begin
         if (rst)
         state<=s;
         else 
         state<=next_state;
         end
         always @(*)begin
         case (state)
         s:next_state=(x==0)?a:a1;
         a:next_state=(x==0)?b:a1;
         b:next_state=(x==0)?c:a1;
         c:next_state=(x==0)?c:a1;
         s:next_state=(x==1)?a1:a;
          a1:next_state=(x==1)?b1:a;
           b1:next_state=(x==1)?c1:a;
            c1:next_state=(x==1)?c1:a;
           
            default  begin
            next_state=s;
            end
            endcase
            end
            always @(*)begin
           if(state ==3'b011 || state ==3'b110)
                y =1'b1;
           else
               y=1'b0;
            
           
            end
           
            
          
endmodule
