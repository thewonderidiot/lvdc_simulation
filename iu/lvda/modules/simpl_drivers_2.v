`timescale 1ns/1ps
`default_nettype none

module simpl_drivers_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire BRD1H,
    input wire BRD2H,
    input wire BRD3H,
    input wire BRD4H,
    input wire BRD5H,
    input wire BRD6H,
    input wire BRD7H,
    input wire BRD8H,
    input wire MODR2H,
    input wire MODR3H,
    input wire RTR5H,

    output wire BR1,
    output wire BR1X,
    output wire BR2,
    output wire BR2X,
    output wire BR3,
    output wire BR3X,
    output wire BR4,
    output wire BR4X,
    output wire BR5,
    output wire BR5X,
    output wire BR6,
    output wire BR6X,
    output wire BR7,
    output wire BR7X,
    output wire BR8,
    output wire BR8X,
    output wire MOD2,
    output wire MOD3,
    output wire RT5
);

// 10-220
sdl sdl1(BR8, BRD8H);
sdl sdl2(BR7, BRD7H);
sdl sdl3(BR6, BRD6H);
sdl sdl4(BR5, BRD5H);
sdl sdl5(BR4, BRD4H);
sdl sdl6(BR3, BRD3H);
sdl sdl7(BR2, BRD2H);
sdl sdl8(BR1, BRD1H);
sdi sdi1(BR8X, BR8);
sdi sdi2(BR7X, BR7);
sdi sdi3(BR6X, BR6);
sdi sdi4(BR5X, BR5);
sdi sdi5(BR4X, BR4);
sdi sdi6(BR3X, BR3);
sdi sdi7(BR2X, BR2);
sdi sdi8(BR1X, BR1);
sdh sdh1(MOD3, MODR3H);
sdh sdh2(MOD2, MODR2H);
sdh sdh3(RT5, RTR5H);

endmodule
`default_nettype wire
