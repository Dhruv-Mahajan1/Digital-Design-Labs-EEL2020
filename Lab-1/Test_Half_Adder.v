`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2022 11:29:22 PM
// Design Name: 
// Module Name: Test_Half_Adder
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


module Test_Half_Adder();
wire s,c;
reg a,b;
Half_Adder H(a,b,s,c);
initial
    begin
        a=1'b0;b=1'b0;
        #10 a=1'b1;
        #10 b=1'b1; a=1'b0;
        #10 a=1'b1;
     end
initial #50 $finish;
endmodule
