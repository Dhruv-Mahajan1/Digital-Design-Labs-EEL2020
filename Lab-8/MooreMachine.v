`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 09:40:02 PM
// Design Name: 
// Module Name: MooreMachine
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


module moore_machine(clk, reset, a, out, state);
parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;
integer i;
input clk, reset, a;
output reg out;
output reg [1:0] state;


always @(posedge clk, negedge reset)
begin
 if(!reset)
 state<=s0;
 else
 begin
 case(state)
 s0:if(!a)
 state<=s0;
 else
 state<=s1;
 s1:if(!a)
 state<=s1;
 else
 state<=s2;
 s2:if(!a)
 state<=s1;
 else
 state<=s2;
 endcase
 end
end
always @(state)
 begin
 case(state)
 s0: out<=0;
 s1: out<=1;
 s2: out<=0;
 endcase
 end
endmodule 
