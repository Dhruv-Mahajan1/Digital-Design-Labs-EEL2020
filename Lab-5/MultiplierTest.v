`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 09:32:20 PM
// Design Name: 
// Module Name: MultiplierTest
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


module MultiplierTest();
wire[6:0]out;
reg[3:0]A;
Multiplier M1(A,out);
initial
begin
    
    #10 A=4'b0000;
    #10 A=4'b0001;
    #10 A=4'b0010;
    #10 A=4'b0011;
    #10 A=4'b0100;
    #10 A=4'b0101;
    #10 A =4'b0110;
    #10 A=4'b0111;
end
initial #100 $finish;
endmodule

