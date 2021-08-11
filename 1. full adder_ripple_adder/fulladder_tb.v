`timescale 10ns / 10ns
`include "fulladder.v"

module fa_tb(); 
reg a,b,cin; 
wire sum,cout; 
fa n1(a,b,cin,sum,cout); 
initial
begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0,fa_tb);
    a = 0;b = 0;cin = 0;
    #10 a = 0;b = 0;cin = 1;
    #10 a = 0;b = 1;cin = 0;
    #10 a = 0;b = 1;cin = 1;
    #10 a = 1;b = 0;cin = 1;
    #10 a = 1;b = 1;cin = 0;
    #10 a = 1;b = 1;cin = 1;
    #10 $finish;
end
endmodule