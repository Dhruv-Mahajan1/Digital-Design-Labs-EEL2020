`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 11:13:19 PM
// Design Name: 
// Module Name: CarrySelectAdder
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




module CarrySelectAdder(input [31:0] A, 
input[31:0]B, input cin,
output [31:0] S,
output cout);
wire [31:0] temp0,temp1,carry0,carry1;
genvar i;

Full_Adder F0(A[0],B[0],0,temp0[0],carry0[0]);
for(i = 1;i<32 ; i=i+1)
begin
Full_Adder F1(A[i],B[i],carry0[i-1],temp0[i],carry0[i]);
end

Full_Adder F2(A[0],B[0],1,temp1[0],carry1[0]);
for(i = 1;i<32 ; i=i+1)
begin
Full_Adder F0(A[i],B[i],carry1[i-1],temp1[i],carry1[i]);
end

multiplexer mux1(carry0[31],carry1[31],cin,cout);

for(i = 0; i<32 ; i=i+1)
begin
multiplexer mux2(temp0[i],temp1[i],cin,S[i]);
end
endmodule

module multiplexer(input i0,i1,s,output reg bitout);
always@(i0,i1,s)
begin
if(s == 0)
bitout = i0;
else
bitout = i1;
end
endmodule
