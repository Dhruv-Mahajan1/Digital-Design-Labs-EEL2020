`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2022 01:56:07 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    wire sum1,carry1,carry2;
    HalfAdder H1(b,c,sum1,carry1);
    HalfAdder H2(a,sum1,sum,carry2);
    assign #5 carry=carry1|carry2;
endmodule

