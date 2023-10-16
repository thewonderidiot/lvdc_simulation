`timescale 1ns/1ps
`default_nettype none

module tmr_drivers_4(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire SSR9H,
    input wire SSR10H,
    input wire SSR11H,
    input wire SSR12H,
    input wire SSR13H,

    output wire SS9,
    output wire SS10,
    output wire SS11,
    output wire SS12,
    output wire SS13
);

// 10-50
tdm tdm1(SS9, SSR9H, SIM_CLK, SIM_RST);
tdm tdm2(SS12, SSR12H, SIM_CLK, SIM_RST);
tdm tdm3(SS13, SSR13H, SIM_CLK, SIM_RST);
tdm tdm4(SS10, SSR10H, SIM_CLK, SIM_RST);
tdm tdm5(SS11, SSR11H, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
