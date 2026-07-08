`timescale 1ns/1ps
`default_nettype none

module simpl_drivers_6(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire BRD16H,
    input wire BRD17H,
    input wire BRD18H,
    input wire BRD19H,
    input wire MODR4H,
    input wire MODR5H,
    input wire TAGR3H,
    input wire TAGR4H,

    output wire BR16,
    output wire BR16X,
    output wire BR17,
    output wire BR17X,
    output wire BR18,
    output wire BR18X,
    output wire BR19,
    output wire BR19X,
    output wire MOD4,
    output wire MOD5,
    output wire TAG3,
    output wire TAG3X,
    output wire TAG4,
    output wire TAG4X
);

// 10-218
tdl tdl1(BR19, BRD19H);
tdl tdl2(BR18, BRD18H);
tdl tdl3(BR17, BRD17H);
tdl tdl4(BR16, BRD16H);
sdl sdl1(TAG4, TAGR4H);
sdl sdl2(TAG3, TAGR3H);
sdl sdl3(MOD5, MODR5H);
sdl sdl4(MOD4, MODR4H);
sdi sdi1(BR19X, BR19);
sdi sdi2(BR18X, BR18);
sdi sdi3(BR17X, BR17);
sdi sdi4(BR16X, BR16);
sdi sdi5(TAG3X, TAG3);
sdi sdi6(TAG4X, TAG4);

endmodule
`default_nettype wire
