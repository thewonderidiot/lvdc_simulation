`timescale 1ns/1ps
`default_nettype none

module transient_prot(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire CRI1X,
    input wire CRI2X,
    input wire DIN1X,
    input wire DIN2AX,
    input wire DIN2BX,
    input wire DIN3X,
    input wire DIN10X,
    input wire DIN11X,
    input wire DIN12X,
    input wire DIN13X,
    input wire DIN14X,
    input wire DIN15X,
    input wire DIN16X,
    input wire DIN17X,
    input wire DIN18X,
    input wire DIN19X,
    input wire DIN20X,
    input wire DIN21X,
    input wire DIN22X,
    input wire DIN23X,
    input wire DIN24X,

    output wire CRI1,
    output wire CRI2,
    output wire DIN1,
    output wire DIN2A,
    output wire DIN2B,
    output wire DIN3,
    output wire DIN10,
    output wire DIN11,
    output wire DIN12,
    output wire DIN13,
    output wire DIN14,
    output wire DIN15,
    output wire DIN16,
    output wire DIN17,
    output wire DIN18,
    output wire DIN19,
    output wire DIN20,
    output wire DIN21,
    output wire DIN22,
    output wire DIN23,
    output wire DIN24
);

// 10-90
dtp a1a(DIN3, DIN3X);
dtp a1b(DIN23, DIN23X);
dtp a1c(DIN24, DIN24X);
dtp a1d(DIN21, DIN21X);
dtp a2a(DIN22, DIN22X);
dtp a2b(DIN20, DIN20X);
dtp a2c(DIN2A, DIN2AX);
dtp a3a(DIN2B, DIN2BX);
dtp a3b(DIN19, DIN19X);
dtp a3c(DIN18, DIN18X);
dtp a5a(DIN17, DIN17X);
dtp a5b(DIN16, DIN16X);

// 10-91
dtp a5c(DIN14, DIN14X);
dtp a5d(DIN15, DIN15X);
dtp a6a(DIN12, DIN12X);
dtp a6b(DIN13, DIN13X);
dtp a6c(DIN10, DIN10X);
dtp a6d(DIN11, DIN11X);
dtp a7a(DIN1, DIN1X);
dtp a7b(CRI2, CRI2X);
dtp a7c(CRI1, CRI1X);
























endmodule
`default_nettype wire
