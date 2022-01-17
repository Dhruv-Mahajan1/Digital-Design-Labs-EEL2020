`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2022 11:50:54 PM
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
    Half_Adder H1(b,c,sum1,carry1);
    Half_Adder H2(a,sum1,sum,carry2);
    assign carry=carry1|carry2; 
endmodule
