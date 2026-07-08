`timescale 1ns/1ps
`default_nettype none

module simpl_drivers_3(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire BRD9H,
    input wire BRD10H,
    input wire BRD11H,
    input wire RT1,
    input wire TPBH,

    output wire BR9,
    output wire BR9X,
    output wire BR10,
    output wire BR10X,
    output wire BR11,
    output wire BR11X,
    output wire RT1X,
    output wire TPBX
);

// 10-221
sdl sdl1(TPBX, TPBH);
sdl sdl2(BR11, BRD11H);
sdl sdl3(BR10, BRD10H);
sdl sdl4(BR9, BRD9H);
sdi sdi1(RT1X, RT1);
sdi sdi2(BR9X, BR9);
sdi sdi3(BR10X, BR10);
sdi sdi4(BR11X, BR11);

endmodule
`default_nettype wire
