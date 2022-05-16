`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2022 10:52:37 PM
// Design Name: 
// Module Name: AdderSubtractorUnit_TestBench
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


module AdderSubtractorUnit_TestBench();
    reg [3:0] a,b;
    reg M;
    wire Overflow,Carry;
    wire [3:0] Output;
    integer i;
    AdderSubtractorUnit A1(a,b,M,Output,Overflow,Carry);
    initial 
    begin
        for(i = 1; i<9; i=i+1)
            begin
                 a = i+1;
                 b = i;
                assign M = 0;#10;
                assign M = 1; #10;                  
            end
    end
initial #100 $finish;
endmodule
