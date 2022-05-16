`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2022 11:05:19 PM
// Design Name: 
// Module Name: MelayMachine
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

module melay_machine(clk, reset, a, out, ps, ns);
input a;
input clk, reset;

output reg out;
output reg ps, ns;
parameter s0 = 1'b0;
parameter s1 = 1'b1;
always@(posedge clk, negedge reset)
begin
 if(!reset)
 ps <= s0;
 else
 ps <= ns;
end
always@(ps, a)
begin
 case(ps)
 s0: if(a)
 begin
 ns <= s1;
 out <= 1;
 end
 else
 begin
 ns<=s0;
 out<=0;
 end
 s1: if(a)
 begin
 out <= 0;
 ns <= s1;
 end
 else
 begin
 out <= 1;
 ns <= s1;
 end
 endcase
end
endmodule
