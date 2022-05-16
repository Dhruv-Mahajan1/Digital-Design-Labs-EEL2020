`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 09:24:21 PM
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
integer i,j;
BCDAdder B11(A,B,Cin,Sum,Cout);
initial
begin
A = 0;
B = 0;
Cin=1'b0;

for(i=0;i<10;i=i+1) begin
for(j=0;j<10;j=j+1) begin
A = i;
B = j;
#10;
end end
end
//initial # $finish;
endmodule

