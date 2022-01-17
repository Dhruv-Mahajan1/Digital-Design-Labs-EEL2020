`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2022 12:01:44 AM
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(a0,b0,a1,b1,a2,b2,a3,b3,SumFirst,SumSecond,SumThird,SumFourth,Carry);
    input a0,b0,a1,b1,a2,b2,a3,b3;
    output SumFirst,SumSecond,SumThird,SumFourth,Carry;
    wire Carry1,Carry2,Carry3;
    Full_Adder f1(a0,b0,0,SumFirst,Carry1);
    Full_Adder f2(a1,b1,Carry1,SumSecond,Carry2);
    Full_Adder f3(a2,b2,Carry2,SumThird,Carry3);
    Full_Adder f4(a3,b3,Carry3,SumFourth,Carry);
endmodule
