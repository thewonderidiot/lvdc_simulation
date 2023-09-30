`timescale 1ns/1ps
`default_nettype none

module tmr_drivers_1(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire DOR6H,
    input wire DOR8H,
    input wire DOR9H,
    input wire DOR10H,

    output wire DO6,
    output wire DO8,
    output wire DO9,
    output wire DO10
);

// 10-38
tdm tdm1(DO6, DOR6H, SIM_CLK, SIM_RST);
tdm tdm2(DO8, DOR8H, SIM_CLK, SIM_RST);
tdm tdm3(DO9, DOR9H, SIM_CLK, SIM_RST);
tdm tdm4(DO10, DOR10H, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
