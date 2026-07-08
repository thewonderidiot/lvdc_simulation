`timescale 1ns/1ps
`default_nettype none

module simpl_drivers_5(
    input wire SIM_CLK,
    input wire SIM_RST,
    
    input wire BRD24H,
    input wire BRD25H,
    input wire BRD26H,
    input wire MODR1H,
    input wire MODR6H,
    input wire TAGR7H,
    input wire TAGR8H,

    output wire BR24,
    output wire BR24X,
    output wire BR25,
    output wire BR25X,
    output wire BR26,
    output wire BR26X,
    output wire MOD1,
    output wire MOD6,
    output wire TAG7,
    output wire TAG7X,
    output wire TAG8,
    output wire TAG8X
);

// 10-217
//tdl tdlX(OCR, OCRH);
tdl tdl1(BR26, BRD26H);
tdl tdl2(BR25, BRD25H);
tdl tdl3(BR24, BRD24H);
sdl sdl1(TAG8, TAGR8H);
sdl sdl2(TAG7, TAGR7H);
sdl sdl3(MOD1, MODR1H);
sdl sdl4(MOD6, MODR6H);
//sdi sdi1((60), OCR);
sdi sdi1(BR26X, BR26);
sdi sdi2(BR25X, BR25);
sdi sdi3(BR24X, BR24);
sdi sdi4(TAG7X, TAG7);
sdi sdi5(TAG8X, TAG8);

endmodule
`default_nettype wire
