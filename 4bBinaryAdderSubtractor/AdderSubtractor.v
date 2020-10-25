`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 12:56:13 AM
// Design Name: 
// Module Name: AdderSubtractor
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


module AdderSubtractor(
    input [3:0]A,
    input [3:0]B,
    input K,
    output overflow,
    output [3:0]SUM
    );
    
    localparam ZERO = 1'b0;
    wire C0,C1,C2,S0,S1,S2,S3,cout;
    wire Y0,Y1,Y2,Y3;
    
    assign Y0 = B[0]^K;
    assign Y1 = B[1]^K;
    assign Y2 = B[2]^K;
    assign Y3 = B[3]^K;
    assign overflow = cout^C2;
    assign SUM = {S3, S2, S1, S0};
    
    FA
        FA_0(.A(A[0]), .B(Y0), .c_in(K), .c_out(C0), .sum(S0)),
        FA_1(.A(A[1]), .B(Y1), .c_in(C0), .c_out(C1), .sum(S1)),
        FA_2(.A(A[2]), .B(Y2), .c_in(C1), .c_out(C2), .sum(S2)),
        FA_3(.A(A[3]), .B(Y3), .c_in(C2), .c_out(cout), .sum(S3));
        
endmodule
