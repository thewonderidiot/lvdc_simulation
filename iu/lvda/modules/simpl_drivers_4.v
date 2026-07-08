`timescale 1ns/1ps
`default_nettype none

module simpl_drivers_4(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire BRD20H,
    input wire BRD21H,
    input wire BRD22H,
    input wire BRD23H,
    input wire RTR3H,
    input wire RTR4H,
    input wire TAGR5H,
    input wire TAGR6H,

    output wire BR20,
    output wire BR20X,
    output wire BR21,
    output wire BR21X,
    output wire BR22,
    output wire BR22X,
    output wire BR23,
    output wire BR23X,
    output wire RT3,
    output wire RT4,
    output wire TAG5,
    output wire TAG5X,
    output wire TAG6,
    output wire TAG6X
);

// 10-216
tdl tdl1(BR23, BRD23H);
tdl tdl2(BR22, BRD22H);
tdl tdl3(BR21, BRD21H);
tdl tdl4(BR20, BRD20H);
sdl sdl1(TAG6, TAGR6H);
sdl sdl2(TAG5, TAGR5H);
sdl sdl3(RT3, RTR3H);
sdl sdl4(RT4, RTR4H);
sdi sdi1(BR23X, BR23);
sdi sdi2(BR22X, BR22);
sdi sdi3(BR21X, BR21);
sdi sdi4(BR20X, BR20);
sdi sdi5(TAG5X, TAG5);
sdi sdi6(TAG6X, TAG6);

endmodule
`default_nettype wire
