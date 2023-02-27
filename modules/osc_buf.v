`timescale 1ns/1ps
`default_nettype none

module osc_buf(
    output wire bo1,
    output wire bo1n,
    output wire bo2,
    output wire bo2n,
    output wire bo3,
    output wire bo3n
);

wire bot1;
wire bot2;
wire bot3;
wire clk;
wire tp4;
wire tp6;
wire tp9;
wire tp15;
wire tp16;
wire tp18;

// 10-94
osc osc1(clk);

bfr_shp bfr_shp1(clk, tp16);
ia1 ia11(tp16, bot1);

bfr_shp bfr_shp2(clk, tp6);
ia1 ia12(tp6, bot2);

bfr_shp bfr_shp3(clk, tp18);
ia1 ia13(tp18, bot3);

// 10-95
ia2 ia21(bot1, tp9);
bfr_pa bfr_pa1(tp9, bo1n);
vi vi1(tp9, bo1);

ia2 ia22(bot2, tp15);
bfr_pa bfr_pa2(tp15, bo2n);
vi vi2(tp15, bo2);

ia2 ia23(bot3, tp4);
bfr_pa bfr_pa3(tp4, bo3n);
vi vi3(tp4, bo3);

endmodule
`default_nettype wire
