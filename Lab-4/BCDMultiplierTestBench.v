`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 07:22:58 PM
// Design Name: 
// Module Name: BCDMultiplierTestBench
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


module BCDMultiplierTestBench();
    reg [2:0] A,B;
    wire [5:0] Product;
    wire [6:0] LedOnes;
    wire [6:0] LedTens;
    wire [3:0] Ones;
    wire [3:0] Tens;
    integer i, j;
    BCDMultiplier M1(A,B,Product,LedOnes,LedTens,Ones,Tens);
    initial
    begin
    for(i = 0; i<=7 ; i=i+1)begin
    for(j = 0 ; j<=7 ; j=j+1)begin
    A = i;
    B = j;
    #10;
    end
    end
    end
initial #800 $finish;
endmodule

