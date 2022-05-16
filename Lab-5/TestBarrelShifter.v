`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 07:28:21 PM
// Design Name: 
// Module Name: TestBarrelShifter
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


module TestBarrelShifter;

wire [3:0]y;
reg s0,s1;
reg [3:0]w;

BarrelShifter B(w,s0,s1,y);
initial
begin
assign w = 4'b1001; 
s0 = 1'b0; s1 = 1'b0;
#10 s0 = 1'b0; s1 = 1'b1;
#10 s0 = 1'b1; s1 = 1'b0;
#10 s0 = 1'b1; s1 = 1'b1;
assign w = 4'b1000;
#10 s0 = 1'b0; s1 = 1'b0;
#10 s0 = 1'b0; s1 = 1'b1;
#10 s0 = 1'b1; s1 = 1'b0;
#10 s0 = 1'b1; s1 = 1'b1; 
end
initial #90 $finish;
endmodule
