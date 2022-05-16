`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2022 10:09:59 PM
// Design Name: 
// Module Name: TestBinaryToGray
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


module TestBinaryToGray();
reg [0:3] Binary;
wire [0:3] Graycode;
    BinaryToGray bg( .Binary(Binary),.Graycode(Graycode));
    initial
    begin
    #0 Binary = 4'b0000;
    #10 Binary = 4'b001;
    #10 Binary = 4'b0010;
    #10 Binary = 4'b0011;
    #10 Binary = 4'b0100;
    end
    initial #50 $finish;
endmodule
