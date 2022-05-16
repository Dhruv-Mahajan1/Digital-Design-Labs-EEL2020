`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2022 10:38:21 PM
// Design Name: 
// Module Name: TestGrayToBinary
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


module TestGrayToBinary();
    reg [0:3] Gray;
    wire [0:3] Bcd;
    GraytoBinary B(.Gray(Gray),.Bcd(Bcd));
    initial
    begin
    #0  Gray = 4'b0000;
    #10 Gray = 4'b0001;
    #10 Gray  = 4'b0010;
    #10 Gray  = 4'b0011;
    #10 Gray  = 4'b0100;
    #10 Gray  = 4'b0101;
    #10 Gray = 4'b0110;
    end
    initial #60 $finish;


endmodule
