`timescale 1ns/1ps
`default_nettype none

module osc_buf(
    output wire BO1,
    output wire BO1N,
    output wire BO2,
    output wire BO2N,
    output wire BO3,
    output wire BO3N
);

wire BOT1;
wire BOT2;
wire BOT3;
wire CLK;
wire TP4;
wire TP6;
wire TP9;
wire TP15;
wire TP16;
wire TP18;

// 10-94
osc osc1(CLK);

bfr_shp bfr_shp1(CLK, TP16);
ia1 ia11(TP16, BOT1);

bfr_shp bfr_shp2(CLK, TP6);
ia1 ia12(TP6, BOT2);

bfr_shp bfr_shp3(CLK, TP18);
ia1 ia13(TP18, BOT3);

// 10-95
ia2 ia21(BOT1, TP9);
bfr_pa bfr_pa1(TP9, BO1N);
vi vi1(TP9, BO1);

ia2 ia22(BOT2, TP15);
bfr_pa bfr_pa2(TP15, BO2N);
vi vi2(TP15, BO2);

ia2 ia23(BOT3, TP4);
bfr_pa bfr_pa3(TP4, BO3N);
vi vi3(TP4, BO3);

endmodule
`default_nettype wire
