`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 06:50:34 PM
// Design Name: 
// Module Name: BCDMultiplier
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

module bcd_conv(
input [5:0] Product, 
output reg [3:0] Tens,Ones);
wire [3:0] k;
wire [5:0]c;
wire [3:0]temp;

always @(Product)
    begin
        if ((Product <= 6'b001001 )==1) begin 
        assign Tens=4'b0000;
        end
        else if ((Product >= 6'b001010 & Product < 6'b010100)==1) begin 
        assign Tens=4'b0001;
        end
        else if ((Product >= 6'b010100& Product < 6'b011110)==1) begin 
        assign Tens=4'b0010;
        end
        else if ((Product >= 6'b011110& Product < 6'b101000)==1) begin 
        assign Tens=4'b0011;
        end
        else if ((Product >= 6'b101000& Product < 6'b110010)==1) begin 
        assign Tens=4'b0100;
        end
        assign Ones=Product%10;

end

//assign k[0]=( (s >= 6'b001010 && s < 6'b010100) | (s >= 6'b011110 && s < 6'b101000) ? 1'b1 : 1'b0);
//assign k[1]=(s >= 6'b001010 && s < 6'b011110 ? 1'b1 : 1'b0);
//assign k[2]=((s >= 6'b010100 && s < 6'b011110) | s >= 6'b101000 ? 1'b1 :1'b0);
//assign k[3]=( s >= 6'b011110 ? 1'b1 : 1'b0);
// full_adder f1(s[0], 1'b0, c[0], o[0], c[1]);
// full_adder f2(s[1], k[0], c[1], o[1], c[2]);
// full_adder f3(s[2], k[1], c[2], o[2], c[3]);
// full_adder f4(s[3], k[2], c[3], o[3], c[4]);
// full_adder f5(s[4], k[3], c[4], t[0], c[5]);
// full_adder f6(s[5], 1'b0, c[5], t[1], t[2]);
endmodule 







module BCDMultiplier(
input [2:0] A,B,
output[5:0] Product,
output [6:0] LedTens,
output [6:0] LedOnes,
output[3:0] Ones,
output[3:0] Tens
);

wire[3:0] FirstProduct;
assign FirstProduct[0]=A[0]&B[0];
assign FirstProduct[1]=A[1]&B[0];
assign FirstProduct[2]=A[2]&B[0];
assign FirstProduct[3]=0;

wire[3:0] SecondProduct;
assign SecondProduct[0]=0;
assign SecondProduct[1]=A[0]&B[1];
assign SecondProduct[2]=A[1]&B[1];
assign SecondProduct[3]=A[2]&B[1];

wire [3:0] FirstSum;
wire FirstCarry;
FourBitAdder F1(FirstProduct,SecondProduct,0,FirstSum,FirstCarry);

wire[3:0] FirstProduct2;
assign FirstProduct2[0]=FirstSum[1];
assign FirstProduct2[1]=FirstSum[2];
assign FirstProduct2[2]=FirstSum[3];
assign FirstProduct2[3]=FirstCarry;

wire[3:0] SecondProduct2;
assign SecondProduct2[0]=0;
assign SecondProduct2[1]=A[0]&B[2];
assign SecondProduct2[2]=A[1]&B[2];
assign SecondProduct2[3]=A[2]&B[2];

wire [3:0] FirstSum2;
wire FirstCarry2;
FourBitAdder F2(FirstProduct2,SecondProduct2,0,FirstSum2,FirstCarry2);

assign Product[0]=FirstSum[0];
assign Product[1]=FirstSum2[0];
assign Product[2]=FirstSum2[1];
assign Product[3]=FirstSum2[2];
assign Product[4]=FirstSum2[3];
assign Product[5]=FirstCarry2;

//wire [3:0] Tens,Ones;
bcd_conv cnv(Product,Tens,Ones);
SevenSegmentDisplay s1(Tens,LedTens);
SevenSegmentDisplay s2(Ones,LedOnes);
endmodule
