`timescale 1ns/1ps
`default_nettype none

module tmr_drivers_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire DOR3H,
    input wire DOR4H,
    input wire DOR5H,
    input wire DOR7H,

    output wire DO3,
    output wire DO4,
    output wire DO5,
    output wire DO7
);

// 10-39
tdm tdm1(DO7, DOR7H, SIM_CLK, SIM_RST);
tdm tdm2(DO4, DOR4H, SIM_CLK, SIM_RST);
tdm tdm3(DO3, DOR3H, SIM_CLK, SIM_RST);
tdm tdm4(DO5, DOR5H, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
