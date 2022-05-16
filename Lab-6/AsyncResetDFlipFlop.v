`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2022 06:26:27 PM
// Design Name: 
// Module Name: AsyncResetDFlipFlop
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


module AsyncResetDFlipFlop(
input D,Reset,clk,
output reg Q
);
always @(posedge clk,Reset)
    begin
        if(Reset) begin 
       assign  Q=1'b0;
        end 
        else
        begin 
        assign Q=D;
        end 
    end
endmodule
