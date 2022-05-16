`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 09:49:22 PM
// Design Name: 
// Module Name: testmooremachine
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


module test_moore_machine_2_complement();
reg clk ,reset;
reg a;
wire out;
wire [1:0] state;
moore_machine mo(clk, reset, a, out, state);
always #5 clk = ~clk;
initial begin
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
end
initial #80 $finish;
endmodule 
