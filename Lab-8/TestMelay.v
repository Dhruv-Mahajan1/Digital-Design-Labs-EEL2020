`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 09:36:12 PM
// Design Name: 
// Module Name: TestMelay
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


module test_melay2_complement;
reg clk, reset;
reg a;
wire out;
wire ps, ns;
melay_machine mc(clk, reset, a, out, ps, ns);
always #5 clk = ~clk;
initial
 begin
 clk = 0;
 reset = 0;
 a = 1;
 #10 reset = 1;
 #10 a = 0;
 #10 a = 1;
 #10 a = 1;
 #10 a = 0;
 #10 a = 1;
 #10 a = 0;
 #10 a = 1;
 #10 a = 1;
 #10 a = 1;
 end

initial #110 $finish;
endmodule