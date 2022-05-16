`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 12:56:46 AM
// Design Name: 
// Module Name: BCDAdderTestBench
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


module BCDAdderTestBench();
    reg[3:0]A,B;
    reg Cin;
    wire [3:0]Sum;
    wire Cout;
    wire [6:0] led;
    integer i,j;
    
     BCDAdder B11(A,B,Cin,Sum,Cout,led);
    initial
    
    begin
        A = 0;
        B = 0;
        Cin=1'b0;
//        A=4'b0000;B=4'b0000;
//        #10 A=4'b0000;B=4'b0000;
//        #10 A=4'b0001;B=4'b0101;
//        #10 A=4'b1000;B=4'b1000;
            for(i=0;i<10;i=i+1) begin
            for(j=0;j<10;j=j+1) begin
            A = i;
            B = j;
            #10;
            end end
     end
//initial # $finish;


endmodule
