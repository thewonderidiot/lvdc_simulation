`timescale 1ns/1ps
`default_nettype none

module osc_buf(
    input wire SIM_CLK,
    input wire SIM_RST,
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
osc osc1(CLK, SIM_CLK, SIM_RST);

bfr_shp bfr_shp1(TP16, CLK);
ia1 ia11(BOT1, TP16);

bfr_shp bfr_shp2(TP6, CLK);
ia1 ia12(BOT2, TP6);

bfr_shp bfr_shp3(TP18, CLK);
ia1 ia13(BOT3, TP18);

// 10-95
ia2 ia21(TP9, BOT1);
bfr_pa bfr_pa1(BO1N, TP9);
vi vi1(BO1, TP9);

ia2 ia22(TP15, BOT2);
bfr_pa bfr_pa2(BO2N, TP15);
vi vi2(BO2, TP15);

ia2 ia23(TP4, BOT3);
bfr_pa bfr_pa3(BO3N, TP4);
vi vi3(BO3, TP4);

endmodule
`default_nettype wire
