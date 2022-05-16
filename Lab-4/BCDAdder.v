`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 12:43:28 AM
// Design Name: 
// Module Name: BCDAdder
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







module FourBitAdder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0]Sum,
    output Cout
);
    wire [3:0] carry;
    
    assign carry[0]=Cin;
    Full_Adder F1(A[0],B[0],carry[0],Sum[0],carry[1]);
    Full_Adder F2(A[1],B[1],carry[1],Sum[1],carry[2]);
    Full_Adder F3(A[2],B[2],carry[2],Sum[2],carry[3]);
    Full_Adder F4(A[3],B[3],carry[3],Sum[3],Cout);
//    SevenSegmentDisplay s1(Sum,led);
endmodule




module BCDAdder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0]Sum,
    output Cout,
    output [6:0] led
);
    reg [3:0] SixOrZero;
    wire temp1,temp2,temp3,temp4,temp5;  
    wire [3:0] sum1 ;
    FourBitAdder F11(A,B,Cin,sum1,temp1);
    assign temp2=sum1[3]&sum1[2];
    assign temp3=sum1[3]&sum1[1];
    assign temp4=temp1|temp2|temp3;
    assign Cout=temp4;
    always @(temp4)
    begin
        if (temp4==1) SixOrZero=4'b0110;
        else SixOrZero=4'b0000;
    end
    FourBitAdder F12(sum1,SixOrZero,0,Sum,temp5);
    

    SevenSegmentDisplay s1(Sum,led);
    
    
    
endmodule


