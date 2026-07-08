`timescale 1ns/1ps
`default_nettype none

module int_drivers_1(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire BRD1,
    input wire BRD2,
    input wire BRD3,
    input wire BRD4,
    input wire BRD5,
    input wire BRD6,
    input wire BRD7,
    input wire BRD8,
    input wire BRD9,
    input wire BRD10,
    input wire BRD11,
    input wire BRD12,
    input wire BRD13,
    input wire BRD14,
    input wire BRD15,
    input wire BRD16,
    input wire BRD17,
    input wire BRD18,
    input wire BRD19,
    input wire BRD20,
    input wire BRD21,
    input wire BRD22,
    input wire BRD23,
    input wire BRD24,
    input wire BRD25,
    input wire BRD26,
    input wire MODR6,
    input wire RTR1,
    input wire RTR2,
    input wire RTR3,
    input wire RTR4,
    input wire RTR5,
    input wire TAGR1,
    input wire TAGR2,
    input wire TAGR5,
    input wire TAGR6,
    input wire TAGR7,
    input wire TAGR8,
    input wire TPB,

    output wire BRD1H,
    output wire BRD2H,
    output wire BRD3H,
    output wire BRD4H,
    output wire BRD5H,
    output wire BRD6H,
    output wire BRD7H,
    output wire BRD8H,
    output wire BRD9H,
    output wire BRD10H,
    output wire BRD11H,
    output wire BRD12H,
    output wire BRD13H,
    output wire BRD14H,
    output wire BRD15H,
    output wire BRD16H,
    output wire BRD17H,
    output wire BRD18H,
    output wire BRD19H,
    output wire BRD20H,
    output wire BRD21H,
    output wire BRD22H,
    output wire BRD23H,
    output wire BRD24H,
    output wire BRD25H,
    output wire BRD26H,
    output wire MODR6H,
    output wire RTR1H,
    output wire RTR2H,
    output wire RTR3H,
    output wire RTR4H,
    output wire RTR5H,
    output wire TAGR1H,
    output wire TAGR2H,
    output wire TAGR5H,
    output wire TAGR6H,
    output wire TAGR7H,
    output wire TAGR8H,
    output wire TPBH
);

// 10-212
idl idl1(RTR3H, RTR3, SIM_CLK, SIM_RST);
idl idl2(BRD22H, BRD22, SIM_CLK, SIM_RST);
idl idl3(BRD24H, BRD24, SIM_CLK, SIM_RST);
idl idl4(BRD12H, BRD12, SIM_CLK, SIM_RST);
idl idl5(TAGR2H, TAGR2, SIM_CLK, SIM_RST);
idl idl6(BRD18H, BRD18, SIM_CLK, SIM_RST);
idl idl7(BRD21H, BRD21, SIM_CLK, SIM_RST);
idl idl8(TAGR6H, TAGR6, SIM_CLK, SIM_RST);
idl idl9(BRD23H, BRD23, SIM_CLK, SIM_RST);
idl idl10(BRD25H, BRD25, SIM_CLK, SIM_RST);
//idl idl11(OCRH, OCR, SIM_CLK, SIM_RST);
idl idl12(BRD26H, BRD26, SIM_CLK, SIM_RST);
idl idl13(BRD16H, BRD16, SIM_CLK, SIM_RST);
idl idl14(BRD20H, BRD20, SIM_CLK, SIM_RST);
idl idl15(BRD15H, BRD15, SIM_CLK, SIM_RST);
idl idl16(BRD19H, BRD19, SIM_CLK, SIM_RST);
idl idl17(BRD17H, BRD17, SIM_CLK, SIM_RST);
idl idl18(BRD14H, BRD14, SIM_CLK, SIM_RST);
idl idl19(TAGR1H, TAGR1, SIM_CLK, SIM_RST);
idl idl20(BRD13H, BRD13, SIM_CLK, SIM_RST);

// 10-213
idl idl21(RTR1H, RTR1, SIM_CLK, SIM_RST);
idl idl22(BRD9H, BRD9, SIM_CLK, SIM_RST);
idl idl23(BRD10H, BRD10, SIM_CLK, SIM_RST);
idl idl24(BRD6H, BRD6, SIM_CLK, SIM_RST);
idl idl25(RTR4H, RTR4, SIM_CLK, SIM_RST);
idl idl26(BRD8H, BRD8, SIM_CLK, SIM_RST);
idl idl27(BRD11H, BRD11, SIM_CLK, SIM_RST);
idl idl28(RTR2H, RTR2, SIM_CLK, SIM_RST);
idl idl29(BRD1H, BRD1, SIM_CLK, SIM_RST);
idl idl30(BRD3H, BRD3, SIM_CLK, SIM_RST);
idl idl31(BRD4H, BRD4, SIM_CLK, SIM_RST);
idl idl32(BRD2H, BRD2, SIM_CLK, SIM_RST);
idl idl33(RTR5H, RTR5, SIM_CLK, SIM_RST);
idl idl34(TPBH, TPB, SIM_CLK, SIM_RST);
idl idl35(BRD5H, BRD5, SIM_CLK, SIM_RST);
idl idl36(BRD7H, BRD7, SIM_CLK, SIM_RST);
idl idl37(TAGR8H, TAGR8, SIM_CLK, SIM_RST);
idl idl38(TAGR7H, TAGR7, SIM_CLK, SIM_RST);
idl idl39(TAGR5H, TAGR5, SIM_CLK, SIM_RST);
idl idl40(MODR6H, MODR6, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
