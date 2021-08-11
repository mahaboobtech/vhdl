`timescale 10ns / 10ns
`include "ripple_adder.v"

module Adder4bit_tb;
reg [3:0] X;
reg [3:0] Y;
reg Ci;
wire [3:0] S;
wire Co;
rippe_adder n1 (X, Y, S, Co);
initial
begin
    $dumpfile("rippleAdderwave.vcd");
    $dumpvars(0,Adder4bit_tb);
    X = 4'b0;
    Y = 4'b0;
    Ci = 4'b0;
    #100;
    X = 4'b1011;
    Y = 4'b0100;
    Ci = 4'b0;
    #20;
    X = 4'd1111;
    Y = 4'd1101;
    Ci = 4'b1;
end
endmodule