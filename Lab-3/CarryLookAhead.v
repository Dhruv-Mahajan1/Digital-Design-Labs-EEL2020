`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 06:12:42 PM
// Design Name: 
// Module Name: CarryLookAhead
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


module CarryLookAhead(A,B,Cin,OutputSum,out);
input [31:0] A,B;
input Cin;
output wire [31:0] OutputSum;
output out;
wire [8:0] Carry;

CarryLookAhead4Bit A1(A[3:0],B[3:0],Cin,OutputSum[3:0],Carry[0]);
CarryLookAhead4Bit A2(A[7:4],B[7:4],Cin,OutputSum[7:4],Carry[1]);
CarryLookAhead4Bit A3(A[11:8],B[11:8],Cin,OutputSum[11:8],Carry[2]);
CarryLookAhead4Bit A4(A[15:12],B[15:12],Cin,OutputSum[15:12],Carry[3]);
CarryLookAhead4Bit A5(A[19:16],B[19:16],Cin,OutputSum[19:16],Carry[4]);
CarryLookAhead4Bit A6(A[23:20],B[23:20],Cin,OutputSum[23:20],Carry[5]);
CarryLookAhead4Bit A7(A[27:24],B[27:24],Cin,OutputSum[27:24],Carry[6]);
CarryLookAhead4Bit A8(A[31:28],B[31:28],Cin,OutputSum[31:28],Carry[7]);



endmodule

module CarryLookAhead4Bit(A,B,Cin,OutputSum,out);
input [3:0] A,B;
input Cin;
output [3:0] OutputSum;
output out;
wire [3:0] C;
wire [3:0] G, P;
wire tempCarry;

assign  P=A^B;
assign  G=A&B;


assign  C[0]=G[0]|(P[0]&Cin);
assign  C[1]=G[1]|(P[1]&G[0])|(P[1]&Cin&P[0]);
assign  C[2]=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&Cin);
assign  C[3]=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&Cin);


assign OutputSum=C^P;
endmodule
