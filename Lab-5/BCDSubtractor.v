`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 10:06:48 PM
// Design Name: 
// Module Name: BCDSubtractor
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


module BCDSubtractor(
    input [3:0]A,B,
    input Cin,
    output reg [3:0]out,
    output reg Postive
    );
   
    always @(A,B)
    if(A>=B)
    begin
    out=A-B;
    Postive = 1;
    end
    else
    begin
    out= B-A;
    Postive = 0;
    end
endmodule

