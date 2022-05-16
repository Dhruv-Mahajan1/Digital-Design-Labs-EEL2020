`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2022 08:00:42 PM
// Design Name: 
// Module Name: Blocking
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


module Blocking(
input p,clk,
output reg q);
   
reg D1;
always@(posedge clk)
begin
D1 = p;
q = D1;
end
endmodule
