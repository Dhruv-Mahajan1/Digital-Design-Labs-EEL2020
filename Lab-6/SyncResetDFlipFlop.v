`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2022 07:11:06 PM
// Design Name: 
// Module Name: SyncResetDFlipFlop
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


module SyncResetDFlipFlop(
input D,clk,reset,
output reg Q);

always@(posedge clk)
    begin
        if(!reset)
        begin
             Q <=1'd0;
        end
        else
        begin
             Q<=D;
        end
    end

endmodule
