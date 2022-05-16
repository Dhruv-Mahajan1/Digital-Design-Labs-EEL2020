`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2022 10:58:27 PM
// Design Name: 
// Module Name: Test1
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

module MLSCountertest;
reg clk;
wire [7:0] LFSR;
MLSCounter mls(clk, LFSR);
initial begin
 clk = 0;
end
always #10 clk = ~clk;
initial #180 $finish;
endmodule 
