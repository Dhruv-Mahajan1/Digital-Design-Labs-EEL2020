`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 11:02:50 PM
// Design Name: 
// Module Name: EVM
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
//////////////////////////////////////////////////////////////////////////////////




module EVM(Admin,Candidate1,Candidate2,reset,led1,led2,led,invalid,X1,Y1,Z1,X2,Y2,Z2);
input Admin,Candidate1,Candidate2,reset;
output reg led1=0,led2=0,led=0,invalid=0;
reg ctrl=0;
reg [7:0] CA=0,CB=0;
output [3:0] X1,Y1,Z1,X2,Y2,Z2;

always @(posedge Admin)
begin
    ctrl=1;
    invalid=0;
end

always @(posedge Candidate1 or posedge Candidate2)
begin
    if(Candidate1 & !Candidate2 & ctrl)
    begin
        led1=1;
        ctrl=0;
        led=1;
        invalid=0;
        CA=CA+1;
    end
    else if(Candidate2 & !Candidate1 & ctrl)
    begin
        led2=1;
        ctrl=0;
        led=1;
        invalid=0;
        CB=CB+1;
    end
    else if((Candidate1 & Candidate2 & ctrl) | (!ctrl))
        invalid=1;      
end

assign Z1=CA%(4'd10);
assign Y1=(CA%7'd100)/(4'd10);
assign X1=CA/(7'd100);
assign Z2=CB%(4'd10);
assign Y2=(CB%7'd100)/(4'd10);
assign X2=CB/(7'd100);

always @(posedge reset)
begin
    led1=0;
    led2=0;
    led=0;
    invalid=0;
    ctrl=0;
end

endmodule

