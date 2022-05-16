`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2022 10:36:51 PM
// Design Name: 
// Module Name: AdderSubtractorUnit
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


module AdderSubtractorUnit(a,b,M,Output,Overflow,Carry);
    input [3:0] a,b;
    input M;
    output [3:0] Output;
    output Overflow,Carry;
    wire c1,c2,c3,c4,b0,b1,b2,b3;
    assign b0=b[0]^M;
    assign b1=b[1]^M;
    assign b2=b[2]^M;
    assign b3=b[3]^M;
    
    Full_Adder F1(a[0],b0,M,Output[0],c1);
    Full_Adder F2(a[1],b1,c1,Output[1],c2);
    Full_Adder F3(a[2],b2,c2,Output[2],c3);
    Full_Adder F4(a[3],b3,c3,Output[3],c4);
    assign Carry=c4;
    assign Overflow =c3^c4;
endmodule
