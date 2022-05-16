`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 03:56:30 PM
// Design Name: 
// Module Name: BCDSubtractorTest
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


module BCDSubtractorTest();
    reg[3:0]A,B;
    reg Cin;
    wire [3:0]Sum;
    wire SignPositive;
    integer i;
    BCDSubtractor B11(A,B,Cin,Sum,SignPositive);
    initial
    begin
       
    for (i = 1; i<10;i=i+1)begin
        A=2*i;
        B=i;
        Cin=0;
        #10;
    end
    end
    
endmodule
