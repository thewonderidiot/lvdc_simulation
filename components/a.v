`timescale 1ns/1ps
`default_nettype none

module a(
    input wire clk,
    input wire a1,
    input wire a2,
    input wire a3,
    input wire a4,
    input wire exp,
    output wire y
);
parameter iv = 0;

wire int_a1;
assign int_a1 = a1;
pullup r1(int_a1);

wire int_a2;
assign int_a2 = a2;
pullup r2(int_a2);

wire int_a3;
assign int_a3 = a3;
pullup r3(int_a3);

wire int_a4;
assign int_a4 = a4;
pullup r4(int_a4);

wire int_exp;
assign int_exp = exp;
pullup r5(int_exp);

wire int_clk;
assign int_clk = clk;
pullup r6(int_clk);

reg rst = 1;

assign y = rst ? iv : (int_clk & int_a1 & int_a2 & int_a3 & int_a4 & int_exp);

initial begin
    #100 rst = 0;
end

endmodule
`default_nettype wire
