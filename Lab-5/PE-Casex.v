`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 08:08:33 PM
// Design Name: 
// Module Name: PE-Casex
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


module PECasex(
input [3:0] A,
output reg [1:0] out
);
   

always@(A)
    begin
    case(A)
        4'b1XXX:out=2'b11;
        4'b01XX:out=2'b10;
        4'b001X:out=2'b01;
        4'b0001:out=2'b00;
        default:out=2'bX;
           
        endcase
    end
endmodule
