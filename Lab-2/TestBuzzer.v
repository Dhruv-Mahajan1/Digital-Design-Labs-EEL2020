`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2022 10:29:56 PM
// Design Name: 
// Module Name: TestBuzzer
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


module TestBuzzer();
    wire WinnerA,WinnerB;
    reg  A,B,Control;
    
    TwoPlayerBuzzer c(.A(A),.B(B),.WinnerA(WinnerA),.WinnerB(WinnerB),.Control(Control));
    initial
    begin
    A = 0; B= 0; Control = 0;
    #10 A = 1; B= 1; Control = 0;
    #10 A = 1; B= 0; Control = 0;
    #10 A = 0; B= 1; Control = 0;
    #10 A = 1; B= 0; Control = 1;
    #10 A = 0; B= 1; Control = 1;
    end
    initial #60 $finish;
endmodule


