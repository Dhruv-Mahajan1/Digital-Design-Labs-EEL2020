`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2022 10:53:16 PM
// Design Name: 
// Module Name: MLSCounter
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

module MLSCounter(clk, LFSR);
input clk;
output reg [7:0] LFSR = 42;
wire w1 = LFSR[3];
wire w2 = LFSR[2];
wire w3 = LFSR[1];
wire w4 = LFSR[7];
always@(posedge clk)
 begin
 LFSR[7:1] <= LFSR[6:0];
 LFSR[0] <= LFSR[3]^LFSR[4]^LFSR[5]^LFSR[7];
end
endmodule