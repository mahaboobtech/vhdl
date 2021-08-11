`timescale 10ns/10ns
`include "mux_data.v"
module top;
wire out;
reg a;
reg b;
reg c;
reg d;
reg s0, s1;
m41 name(.out(out), .a(a), .b(b), .c(c),
.d(d), .s0(s0), .s1(s1));
initial
begin
    $dumpfile("mux_wave.vcd");
    $dumpvars(0,top);
    a=1'b0; b=1'b0; c=1'b0; d=1'b0;
    s0=1'b0; s1=1'b0;
    #500 $finish;
    end
    always #40 a=~a;
    always #20 b=~b;
    always #10 c=~c;
    always #5 d=~d;
    always #80 s0=~s0;
    always #160 s1=~s1;
    always@(a or b or c or d or s0 or s1)
    $monitor("At time = %t, Output = %d", $time, out);
endmodule;