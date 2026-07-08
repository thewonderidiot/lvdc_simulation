`timescale 1ns/1ps
`default_nettype none

module int_drivers_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire MODR1,
    input wire MODR2,
    input wire MODR3,
    input wire MODR4,
    input wire MODR5,
    input wire TAGR3,
    input wire TAGR4,

    output wire MODR1H,
    output wire MODR2H,
    output wire MODR3H,
    output wire MODR4H,
    output wire MODR5H,
    output wire TAGR3H,
    output wire TAGR4H
);

// 10-214
idl idl1(MODR5H, MODR5, SIM_CLK, SIM_RST);
//idl idlX(BRD18H, BRD18, SIM_CLK, SIM_RST);
//idl idlX(BRD12H, BRD12, SIM_CLK, SIM_RST);
//idl idlX(BRD23H, BRD23, SIM_CLK, SIM_RST);
idl idl2(MODR3H, MODR3, SIM_CLK, SIM_RST);
//idl idlX(BRD22H, BRD22, SIM_CLK, SIM_RST);
//idl idlX(BRD17H, BRD17, SIM_CLK, SIM_RST);
idl idl3(TAGR4H, TAGR4, SIM_CLK, SIM_RST);
//idl idlX(BRD14H, BRD14, SIM_CLK, SIM_RST);
//idl idlX(BRD13H, BRD13, SIM_CLK, SIM_RST);
//idl idlX(BRD15H, BRD15, SIM_CLK, SIM_RST);
//idl idlX(BRD19H, BRD19, SIM_CLK, SIM_RST);
//idl idlX(BRD20H, BRD20, SIM_CLK, SIM_RST);
//idl idlX(BRD16H, BRD16, SIM_CLK, SIM_RST);
//idl idlX(OCRH, OCR, SIM_CLK, SIM_RST);
//idl idlX(BRD24H, BRD24, SIM_CLK, SIM_RST);
//idl idlX(BRD26H, BRD26, SIM_CLK, SIM_RST);
//idl idlX(BRD21H, BRD21, SIM_CLK, SIM_RST);
idl idl4(MODR1H, MODR1, SIM_CLK, SIM_RST);
//idl idlX(BRD25H, BRD25, SIM_CLK, SIM_RST);

// 10-215
//idl idlX(BRD25H, BRD25, SIM_CLK, SIM_RST);
//idl idlX(BRD20H, BRD20, SIM_CLK, SIM_RST);
//idl idlX(BRD16H, BRD16, SIM_CLK, SIM_RST);
idl idl5(MODR4H, MODR4, SIM_CLK, SIM_RST);
//idl idlX(BRD14H, BRD14, SIM_CLK, SIM_RST);
//idl idlX(BRD26H, BRD26, SIM_CLK, SIM_RST);
idl idl6(MODR2H, MODR2, SIM_CLK, SIM_RST);
//idl idlX(BRD22H, BRD22, SIM_CLK, SIM_RST);
//idl idlX(BRD21H, BRD21, SIM_CLK, SIM_RST);
//idl idlX(BRD23H, BRD23, SIM_CLK, SIM_RST);
//idl idlX(OCRH, OCR, SIM_CLK, SIM_RST);
//idl idlX(BRD12H, BRD12, SIM_CLK, SIM_RST);
//idl idlX(BRD24H, BRD24, SIM_CLK, SIM_RST);
//idl idlX(BRD19H, BRD19, SIM_CLK, SIM_RST);
//idl idlX(BRD15H, BRD15, SIM_CLK, SIM_RST);
//idl idlX(BRD18H, BRD18, SIM_CLK, SIM_RST);
//idl idlX(BRD13H, BRD13, SIM_CLK, SIM_RST);
idl idl7(TAGR3H, TAGR3, SIM_CLK, SIM_RST);
//idl idlX(BRD17H, BRD17, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
