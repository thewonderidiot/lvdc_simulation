`timescale 1ns/1ps
`default_nettype none

module simpl_drivers_7(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire BRD12H,
    input wire BRD13H,
    input wire BRD14H,
    input wire BRD15H,
    input wire RTR1H,
    input wire RTR2H,
    input wire TAGR1H,
    input wire TAGR2H,

    output wire BR12,
    output wire BR12X,
    output wire BR13,
    output wire BR13X,
    output wire BR14,
    output wire BR14X,
    output wire BR15,
    output wire BR15X,
    output wire RT1,
    output wire RT2,
    output wire TAG1,
    output wire TAG1X,
    output wire TAG2,
    output wire TAG2X
);

// 10-219
tdl tdl1(BR15, BRD15H);
tdl tdl2(BR14, BRD14H);
tdl tdl3(BR13, BRD13H);
tdl tdl4(BR12, BRD12H);
sdl sdl1(TAG2, TAGR2H);
sdl sdl2(TAG1, TAGR1H);
sdl sdl3(RT2, RTR2H);
sdl sdl4(RT1, RTR1H);
sdi sdi1(BR15X, BR15);
sdi sdi2(BR14X, BR14);
sdi sdi3(BR13X, BR13);
sdi sdi4(BR12X, BR12);
sdi sdi5(TAG1X, TAG1);
sdi sdi6(TAG2X, TAG2);

endmodule
`default_nettype wire
