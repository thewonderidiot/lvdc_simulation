`timescale 1ns/1ps
`default_nettype none

module dis_tran_prot(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire DIN4X,
    input wire DIN5X,
    input wire DIN6X,
    input wire DIN7X,
    input wire DIN8X,
    input wire DIN9X,
    input wire DIS1X,
    input wire DIS2X,
    input wire DIS3X,
    input wire DIS4X,
    input wire DIS5X,
    input wire DIS6X,
    input wire DIS7X,
    input wire DIS8X,
    input wire GCSYNCX,
    input wire HLTX,
    input wire INTR1X,
    input wire INTR2X,
    input wire INTR3X,
    input wire INTR4X,
    input wire INTR5X,
    input wire INTR6X,
    input wire INTR7X,
    input wire SSFB1X,
    input wire SSFB2X,
    input wire SSFB3X,
    input wire SSFB4X,
    input wire SSFB5X,
    input wire SSFB6X,
    input wire SSFB7X,
    input wire SSFB8X,

    output wire DIN4,
    output wire DIN5,
    output wire DIN6,
    output wire DIN7,
    output wire DIN8,
    output wire DIN9,
    output wire DIS1,
    output wire DIS2,
    output wire DIS3,
    output wire DIS4,
    output wire DIS5,
    output wire DIS6,
    output wire DIS7,
    output wire DIS8,
    output wire GCSYNC,
    output wire HLT,
    output wire INTR1,
    output wire INTR2,
    output wire INTR3,
    output wire INTR4,
    output wire INTR5,
    output wire INTR6,
    output wire INTR7,
    output wire SSFB1,
    output wire SSFB2,
    output wire SSFB3,
    output wire SSFB4,
    output wire SSFB5,
    output wire SSFB6,
    output wire SSFB7,
    output wire SSFB8
);

// 10-92
dtp a5a(DIS5, DIS5X);
dtp a5b(DIS6, DIS6X);
dtp a5c(GCSYNC, GCSYNCX);
dtp a5d(HLT, HLTX);
dtp a6a(DIS3, DIS3X);
dtp a6b(DIS4, DIS4X);
dtp a6c(DIS1, DIS1X);

dtp a6d(DIS2, DIS2X);
dtp a7a(DIN9, DIN9X);
dtp a7b(DIN8, DIN8X);
dtp a7c(DIN4, DIN4X);
dtp a1a(SSFB6, SSFB6X);
dtp a1b(SSFB3, SSFB3X);
dtp a1c(SSFB4, SSFB4X);

// 10-93
dtp a1d(INTR7, INTR7X);
dtp a2a(SSFB1, SSFB1X);
dtp a2b(INTR5, INTR5X);
dtp a2c(INTR6, INTR6X);
dtp a2d(INTR3, INTR3X);
dtp a3a(INTR4, INTR4X);
dtp a3b(INTR1, INTR1X);
dtp a3c(DIS7, DIS7X);

// 10-94
dtp a1e(DIN5, DIN5X);
dtp a1f(DIN7, DIN7X);
dtp a1g(DIN6, DIN6X);
dtp a2e(SSFB8, SSFB8X);

dtp a5e(DIS8, DIS8X);
dtp a5f(INTR2, INTR2X);

// 10-95
dtp a6e(SSFB2, SSFB2X);
dtp a7d(SSFB5, SSFB5X);
dtp a7e(SSFB7, SSFB7X);

endmodule
`default_nettype wire
