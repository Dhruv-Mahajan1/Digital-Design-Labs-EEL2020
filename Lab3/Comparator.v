`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 10:16:37 PM
// Design Name: 
// Module Name: Comparator
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


module Comparator(A,B,Agreater,Bgreater,equal);
input [3:0] A,B;
output Agreater, Bgreater, equal;
wire [3:0]Sum;
wire C,Overflow,temp;

AdderSubtractorUnit A1(A,B,1,Sum,Overflow,C);

assign equal = (A == B)? 1 : 0;
xnor (temp,Overflow,Sum[3]);
assign Agreater = (equal == 0 & temp == 1)?1:0;
xor(Bgreater,Overflow,Sum[3]);


endmodule


