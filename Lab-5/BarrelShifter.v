`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 07:04:59 PM
// Design Name: 
// Module Name: BarrelShifter
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

module Mux(
input a,b,c,d,
input s0, s1,
output out);
assign out = s1 ? (s0 ? d : c) : (s0 ? b : a); 
endmodule



module BarrelShifter(
input [3:0] w,

input s0,s1,
output [3:0] y
    );

Mux M1(w[3], w[0], w[1], w[2], s0, s1, y[3]);
Mux M2(w[2], w[3], w[0], w[1], s0, s1, y[2]);
Mux M3(w[1], w[2], w[3], w[0], s0, s1, y[1]);
Mux M4(w[0], w[1], w[2], w[3], s0,s1, y[0]);
endmodule
