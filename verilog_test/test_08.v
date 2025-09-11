`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:49:40 PM
// Design Name: 
// Module Name: test_08
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


module test_08(input wire clk,
input wire rst,
input wire x,
output reg y );
parameter
s=3'b000,
a=3'b001,
b=3'b010,
c=3'b011,
a1=3'b100,
b1=3'b101,
c1=3'b110;
reg [2:0]state;
reg [2:0]n_state;
always @(posedge clk or posedge rst)begin
if(rst)
state<=s;
else
state<=n_state;
end
always @(*)begin
        n_state = state;
        y = 1'b0;  
        case (state)
            s: begin
                if (x) n_state = a;   
                else  n_state = a1;   
            end
            a: begin
                if (x) n_state = b;
                else  n_state = a1;
            end
            b: begin
                if (x) n_state = c;   
                else  n_state = a1;
            end
            c: begin
                y = 1'b1;               
                if (x) n_state = c;   
                else  n_state = a1;
            end
            a1: begin
                if (~x) n_state = a1;
                else    n_state = a;
            end
            b1: begin
                if (~x) n_state = c1;   
                else    n_state = a;
   end
            c1: begin
                y = 1'b1;                 
                if (~x) n_state = c1;   
                else    n_state = a;
            end
        endcase
    end

endmodule
