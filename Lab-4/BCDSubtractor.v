`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 02:47:51 AM
// Design Name: 
// Module Name: BCDSubtractor
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

module TensComplement(A,complement);
input [3:0] A;
output [3:0] complement;
assign complement[0] = A[0];
assign complement[1] = A[1]&A[0]|A[3]&(~A[0])|A[2]&(~A[1])&(~A[0]);
assign complement[2] = A[2]&(~A[1])|A[2]&(~A[0])|(~A[2])&A[1]&A[0];
assign complement[3] = (~A[2])&A[1]&(~A[0])|(~A[3])&(~A[2])&(~A[1])&A[0];
endmodule

module SevenSegmentDisplay(Hex,Led);
    input [0:3] Hex;
    output reg [1:7] Led;
    always@(Hex)
        begin
            case(Hex)
                0 : Led = 7'b1111110;
                1 :  Led = 7'b0110000;
                2 :  Led  = 7'b1101101;
                3 :  Led = 7'b1111001;
                4 :  Led  = 7'b0110011;
                5 :  Led  = 7'b1011011;
                6 :  Led   = 7'b1011111;
                7 :  Led  = 7'b1110000;
                8 :  Led   = 7'b1111111;
                9 :  Led   = 7'b1111011;
                default: Led = 7'b0000000; 
            endcase
        end  
endmodule

module BCDSubtractor(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output reg [3:0]Sum,
    output reg SignPositive
);
wire temp4;
wire [3:0] Output,NB,NSum;
wire [6:0] templed;

TensComplement  A1(B,NB);
BCDAdder BCD1(A,NB,Cin,Output,temp4,templed);
TensComplement A22(Output,NSum);
always @(temp4)
    begin
        if (temp4==1) begin 
        SignPositive=1'b1;
        assign Sum=Output;
        end
        else begin 
        assign SignPositive=1'b0;
        assign Sum=NSum;
        end
    end


endmodule
