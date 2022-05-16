`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 08:45:54 PM
// Design Name: 
// Module Name: TestPEFor
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


module TestPEFor();
     wire[1:0]out;
     wire v;
     reg[3:0]A;
    PEFor PE1(A,v,out);
    initial
    begin
        A=4'b0000;
        A = 4'b1XXX; #10;
        A = 4'b001X; #10;
        A = 4'b0001; #10;
        
        A = 4'b01XX; #10;
       
    end
 initial #90 $finish;
endmodule
