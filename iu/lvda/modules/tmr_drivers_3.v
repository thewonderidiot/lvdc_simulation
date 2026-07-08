`timescale 1ns/1ps
`default_nettype none

module tmr_drivers_3(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire DOR1H,
    input wire DOR2H,
    input wire DOR11H,
    input wire DOR12H,
    input wire DOR13H,

    output wire DO1,
    output wire DO1RCA,
    output wire DO2,
    output wire DO2RCA,
    output wire DO11,
    output wire DO12,
    output wire DO13
);

// 10-40
tdm tdm1(DO11, DOR11H);
tdm tdm2(DO13, DOR13H);
tdl tdl1(DO2, DOR2H);
sdi sdi1(DO2RCA, DO2);
tdl tdl2(DO1, DOR1H);
sdi sdi2(DO1RCA, DO1);

// 10-41
tdm tdm3(DO12, DOR12H);

endmodule
`default_nettype wire
