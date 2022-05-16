`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 02:19:00 PM
// Design Name: 
// Module Name: TwoPlayerBuzzer
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


module TwoPlayerBuzzer(A,B,WinnerA,WinnerB,Control);
    input A,B,Control;
    output WinnerA,WinnerB;
    wire tempa,tempb;
    assign tempa=A&&Control;    // when control is 0 host has not aksed the q yet so tempa and tempv is 0
    assign tempb=B&&Control;
    
    bufif0 C(WinnerA,tempa,tempb);
    bufif0 D(WinnerB,tempb,tempa);
endmodule
