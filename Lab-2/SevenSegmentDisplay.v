`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 01:12:26 PM
// Design Name: 
// Module Name: SevenSegmentDisplay
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
