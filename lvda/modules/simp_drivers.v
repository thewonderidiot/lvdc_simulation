`timescale 1ns/1ps
`default_nettype none

module simp_drivers(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire SSR1H,
    input wire SSR2H,
    input wire SSR3H,
    input wire SSR4H,
    input wire SSR5H,
    input wire SSR6H,
    input wire SSR7H,
    input wire SSR8H,
    input wire SSR14H,
    input wire SSR15H,

    output wire SS1,
    output wire SS2,
    output wire SS3,
    output wire SS4,
    output wire SS5,
    output wire SS6,
    output wire SS7,
    output wire SS8,
    output wire SS14,
    output wire SS15
);

// 10-51
sdh sdh1(SS6, SSR6H, SIM_CLK, SIM_RST);
sdh sdh2(SS5, SSR5H, SIM_CLK, SIM_RST);
sdh sdh3(SS8, SSR8H, SIM_CLK, SIM_RST);
sdh sdh4(SS7, SSR7H, SIM_CLK, SIM_RST);
sdh sdh5(SS4, SSR4H, SIM_CLK, SIM_RST);
sdh sdh6(SS3, SSR3H, SIM_CLK, SIM_RST);
sdh sdh7(SS2, SSR2H, SIM_CLK, SIM_RST);
sdh sdh8(SS1, SSR1H, SIM_CLK, SIM_RST);
tdh tdh1(SS15, SSR15H, SIM_CLK, SIM_RST);
tdh tdh2(SS14, SSR14H, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
