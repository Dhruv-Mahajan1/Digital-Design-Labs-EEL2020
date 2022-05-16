`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2022 09:33:17 PM
// Design Name: 
// Module Name: SerialAdder
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


module SerialAdder(
input [7:0]A,B,
input clk,reset,
output reg cout,
output reg [8:0]sum
);

    reg [7:0]Atemp;
    reg [7:0]Btemp;
    reg cin;
    always@(posedge reset)begin
    if(reset == 1) begin
    cin = 0;
    Atemp[7:0] = A[7:0];
    Btemp[7:0] = B[7:0];
    end
    end
        always@(posedge clk)
        begin
        sum[7] = Atemp[0] ^ Btemp[0] ^ cin;
        sum = sum >> 1;
        cout = (Atemp[0] & Btemp[0]) | (cin & Atemp[0]) | (  cin  &Btemp[0] );
        Atemp = Atemp>>1;
        Btemp = Btemp>>1;
        cin = cout;
    end
endmodule
