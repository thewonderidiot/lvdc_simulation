`timescale 1ns/1ps
`default_nettype none

module lvda(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire WDA,
    input wire XDA,
    input wire YDA,
    input wire ZDA
);

timing_1 a3a11(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .WDA(WDA),
    .XDA(XDA),
    .YDA(YDA),
    .ZDA(ZDA)
);

endmodule
`default_nettype wire
