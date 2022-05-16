`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 07:52:26 PM
// Design Name: 
// Module Name: TestALU
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


module TestALU();

reg [31:0] A,B;
reg  [2:0] inp;
wire [31:0] out;

ALU A1(A,B,inp,out);
initial 
    begin   
        assign A =20;
        assign B = 10;
        inp = 0; #10;
        inp = 1; #10;
        inp = 2; #10;
        inp = 3; #10;
        inp = 4; #10;
        inp = 5; #10;
        inp= 6; #10;
        inp = 7; #10;
    end
    
initial #80 $finish;
endmodule
