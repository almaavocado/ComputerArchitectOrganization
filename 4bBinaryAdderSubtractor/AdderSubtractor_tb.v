`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2020 01:14:34 AM
// Design Name: 
// Module Name: AdderSubtractor_tb
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

module AdderSubtractor_tb();
    reg [3:0]A;
    reg [3:0]B;
    reg K;

    wire cout;
    wire [3:0]Sum;
    
    AdderSubtractor uut(
        .A(A),
        .B(B),
        .K(K),
        .overflow(cout),
        .SUM(Sum)
        );
        
    initial begin
        $timeformat(-9, 1, " ns",9);
        $display(" ");        
        $display(" ");        
        $display(" ");
        A=4'b0010; B=4'b0001;K=1'b0;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0011; B=4'b0001;K=1'b0;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0011; B=4'b0011;K=1'b0;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0010; B=4'b0101;K=1'b0;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0010; B=4'b0001;K=1'b0;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0010; B=4'b0001;K=1'b1;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0011; B=4'b0001;K=1'b1;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0011; B=4'b0011;K=1'b1;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0010; B=4'b0101;K=1'b1;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0010; B=4'b0111;K=1'b1;   
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0001; B=4'b0111;K=1'b1;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0010; B=4'b0011;K=1'b1;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);
        A=4'b0000; B=4'b0111;K=1'b1;
        #5 $display("Time=%t, A=%4b, B=%4b, K=%0b, Cout=%0b, Sum=%4b",$time,A,B,K,cout,Sum);  
        $finish;
        end
endmodule

