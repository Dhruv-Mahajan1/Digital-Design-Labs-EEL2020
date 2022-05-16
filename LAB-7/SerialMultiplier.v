`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 04:53:36 PM
// Design Name: 
// Module Name: SerialMultiplier
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
module Half_Adder(a,b,sum,carry );
input a,b;
output sum ,carry;
assign sum=a^b;
assign carry=a&b;
endmodule

module Full_Adder(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    wire sum1,carry1,carry2;
    Half_Adder H1(b,c,sum1,carry1);
    Half_Adder H2(a,sum1,sum,carry2);
    assign carry=carry1|carry2; 
endmodule



module FourBitAdder(A,B,Sum,Carry);
input [3:0] A,B;
output [3:0] Sum;
output Carry;
wire [3:1] D;
Full_Adder F1(A[0],B[0],0,Sum[0],D[1]);
Full_Adder F2(A[1],B[1],D[1],Sum[1],D[2]);
Full_Adder F3(A[2],B[2],D[2],Sum[2],D[3]);
Full_Adder F4(A[3],B[3],D[3],Sum[3],Carry);
endmodule



module SerialMultiplier(A,B,clk,ctrl,load,P,Q,M,Product);

input clk,ctrl,load;
input [3:0] A,B;
output [7:0] Product;
output reg [3:0] P,Q,M;
wire V;
wire [3:0] temp1,temp2,temp3,R,S,U;


assign temp2[3]=load?B[3]:M[3];
assign temp2[2]=load?B[2]:M[2];
assign temp2[1]=load?B[1]:M[1];
assign temp2[0]=load?B[0]:M[0];

assign temp3[3]=load?0:V;
assign temp3[2]=load?0:U[3];
assign temp3[1]=load?0:U[2];
assign temp3[0]=load?0:U[1];

assign temp1[3]=load?A[3]:Q[3];
assign temp1[2]=load?A[2]:Q[2];
assign temp1[1]=load?A[1]:Q[1];
assign temp1[0]=load?A[0]:Q[0];
always @(posedge clk)
begin
    Q[0]=temp1[0];
    Q[1]=temp1[1];
    Q[2]=temp1[2];
    Q[3]=temp1[3];
    
    M[0]=temp2[0];
    M[1]=temp2[1];
    M[2]=temp2[2];
    M[3]=temp2[3];
end

assign R[3]=M[3]&Q[0];
assign R[2]=M[2]&Q[0];
assign R[1]=M[1]&Q[0];
assign R[0]=M[0]&Q[0];

FourBitAdder FBA(R,P,U,V);

always @(posedge clk)
begin
    if(ctrl)
    begin
        Q[0]=Q[1];
        Q[1]=Q[2];
        Q[2]=Q[3];
        Q[3]=U[0];
    end
    
    P[0]=temp3[0];
    P[1]=temp3[1];
    P[2]=temp3[2];
    P[3]=temp3[3];
end

assign Product[0]=Q[0];
assign Product[1]=Q[1];
assign Product[2]=Q[2];
assign Product[3]=Q[3];
assign Product[4]=P[0];
assign Product[5]=P[1];
assign Product[6]=P[2];
assign Product[7]=P[3];

endmodule




