`timescale 1ns/1ps
`default_nettype none

module sw_sel_regs(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire G1DV,
    input wire G1DVN,
    input wire G2DV,
    input wire G2DVN,
    input wire G3DV,
    input wire G3DVN,
    input wire G4DV,
    input wire G4DVN,
    input wire G5DV,
    input wire G5DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire G7DV,
    input wire G7DVN,
    input wire INFOV,
    input wire PAAV,
    input wire PABG1V,
    input wire PBG2V,
    input wire PCINFV,
    input wire SSRV,
    input wire Z1,

    output wire SSR1H,
    output wire SSR2H,
    output wire SSR3H,
    output wire SSR4H,
    output wire SSR5H,
    output wire SSR6H,
    output wire SSR7H,
    output wire SSR8H,
    output wire SSR9H,
    output wire SSR10H,
    output wire SSR11H,
    output wire SSR12H,
    output wire SSR13H,
    output wire SSR14H,
    output wire SSR15H
);

wire SSR1;
wire SSR1N;
wire SSR2;
wire SSR2N;
wire SSR3;
wire SSR3N;
wire SSR4;
wire SSR4N;
wire SSR5;
wire SSR5N;
wire SSR6;
wire SSR6N;
wire SSR7;
wire SSR7N;
wire SSR8;
wire SSR8N;
wire SSR9;
wire SSR9N;
wire SSR10;
wire SSR10N;
wire SSR11;
wire SSR11N;
wire SSR12;
wire SSR12N;
wire SSR13;
wire SSR13N;
wire SSR14;
wire SSR14N;
wire SSR15;
wire SSR15N;
wire SSRR;

wire na3a;
wire na3b;
wire na3d;
wire na3e;
wire na4a;
wire na4b;
wire na4b_a4b;
wire na4b_a10b;
assign na4b = na4b_a4b | na4b_a10b;
wire na4d;
wire na4e;
wire na4e_a4e;
wire na4e_a10d;
assign na4e = na4e_a4e | na4e_a10d;
wire na5a;
wire na5c;
wire na5d;
wire na8a;
wire na8b;
wire na8b_a8b;
wire na8b_a16b;
assign na8b = na8b_a8b | na8b_a16b;
wire na8d;
wire na8e;
wire na8e_a8e;
wire na8e_a16d;
assign na8e = na8e_a8e | na8e_a16d;
wire na9a;
wire na9b;
wire na9d;
wire na9e;
wire na11a;
wire na11b;
wire na11b_a11b;
wire na11b_a12b;
assign na11b = na11b_a11b | na11b_a12b;
wire na11d;
wire na11e;
wire na11e_a11e;
wire na11e_a12c;
assign na11e = na11e_a11e | na11e_a12c;
wire na12a;
wire na12d;
wire na13b;
wire na13e;
wire na14a;
wire na14b;
wire na14b_a14b;
wire na14b_a21a;
assign na14b = na14b_a14b | na14b_a21a;
wire na15a;
wire na15b;
wire na15d;
wire na15e;
wire na17a;
wire na17b;
wire na17b_a10a;
wire na17b_a17b;
assign na17b = na17b_a10a | na17b_a17b;
wire na17d;
wire na17e;
wire na17e_a10c;
wire na17e_a17e;
assign na17e = na17e_a10c | na17e_a17e;
wire na19a;
wire na19b;
wire na19b_a13a;
wire na19b_a19b;
assign na19b = na19b_a13a | na19b_a19b;
wire na19d;
wire na19e;
wire na19e_a13d;
wire na19e_a19e;
assign na19e = na19e_a13d | na19e_a19e;
wire na20c;
wire na21b;
wire na23a;
wire na23b;
wire na23d;
wire na23e;
wire na24a;
wire na24b;
wire na24b_a16a;
wire na24b_a24b;
assign na24b = na24b_a16a | na24b_a24b;
wire na24d;
wire na24e;
wire na24e_a16c;
wire na24e_a24e;
assign na24e = na24e_a16c | na24e_a24e;
wire na26a;
wire na26b;
wire na26b_a20a;
wire na26b_a26b;
assign na26b = na26b_a20a | na26b_a26b;
wire na26d;
wire na26e;
wire na26e_a20b;
wire na26e_a26e;
assign na26e = na26e_a20b | na26e_a26e;
wire na27a;
wire na27b;
wire na27d;
wire na27e;
wire na31a;
wire na31b;

// 10-48
and a16a(na24b_a16a, Z1, na23a, SSRV, PCINFV, G4DVN);
and a23a(na23a, G5DV);
and a24a(na24a, SSRR);
and a24b(na24b_a24b, V1, na24a, SSR10);
inv a24c(SSR10N, na24b, SIM_CLK, SIM_RST);
inv #(0) a23c(SSR10, na23b, SIM_CLK, SIM_RST);
and a23b(na23b, V1, SSR10N);
idh idh1(SSR10H, SSR10, SIM_CLK, SIM_RST);

and a16b(na8b_a16b, Z1, na15a, SSRV, PCINFV, G3DVN);
and a15a(na15a, G4DV);
and a8a(na8a, SSRR);
and a8b(na8b_a8b, V1, na8a, SSR9);
inv a8c(SSR9N, na8b, SIM_CLK, SIM_RST);
inv #(0) a15c(SSR9, na15b, SIM_CLK, SIM_RST);
and a15b(na15b, V1, SSR9N);
idh idh2(SSR9H, SSR9, SIM_CLK, SIM_RST);

and a10a(na17b_a10a, Z1, na9a, SSRV, PCINFV, G5DVN);
and a9a(na9a, G6DV);
and a17a(na17a, SSRR);
and a17b(na17b_a17b, V1, na17a, SSR11);
inv a17c(SSR11N, na17b, SIM_CLK, SIM_RST);
inv #(0) a9c(SSR11, na9b, SIM_CLK, SIM_RST);
and a9b(na9b, V1, SSR11N);
idh idh3(SSR11H, SSR11, SIM_CLK, SIM_RST);

and a10b(na4b_a10b, Z1, na3a, SSRV, PCINFV, G6DVN);
and a3a(na3a, G7DV);
and a4a(na4a, SSRR);
and a4b(na4b_a4b, V1, na4a, SSR12);
inv a4c(SSR12N, na4b, SIM_CLK, SIM_RST);
inv #(0) a3c(SSR12, na3b, SIM_CLK, SIM_RST);
and a3b(na3b, V1, SSR12N);
idh idh4(SSR12H, SSR12, SIM_CLK, SIM_RST);

and a20a(na26b_a20a, Z1, na27a, SSRV, PCINFV, G1DVN);
and a27a(na27a, G7DVN);
and a26a(na26a, SSRR);
and a26b(na26b_a26b, V1, na26a, SSR13);
inv a26c(SSR13N, na26b, SIM_CLK, SIM_RST);
inv #(0) a27c(SSR13, na27b, SIM_CLK, SIM_RST);
and a27b(na27b, V1, SSR13N);
idh idh5(SSR13H, SSR13, SIM_CLK, SIM_RST);

and a13a(na19b_a13a, na12a, SSRV);
and a12a(na12a, Z1, G3DVN, G2DV, PAAV, INFOV);
and a19a(na19a, SSRR);
and a19b(na19b_a19b, V1, na19a, SSR15);
inv a19c(SSR15N, na19b, SIM_CLK, SIM_RST);
inv #(0) a13c(SSR15, na13b, SIM_CLK, SIM_RST);
and a13b(na13b, V1, SSR15N);
idh idh6(SSR15H, SSR15, SIM_CLK, SIM_RST);

// 10-49
and a12b(na11b_a12b, Z1, SSRV, PABG1V, INFOV);
and a11a(na11a, SSRR);
and a11b(na11b_a11b, V1, na11a, SSR14);
inv a11c(SSR14N, na11b, SIM_CLK, SIM_RST);
inv #(0) a5b(SSR14, na5a, SIM_CLK, SIM_RST);
and a5a(na5a, V1, SSR14N);
idh idh7(SSR14H, SSR14, SIM_CLK, SIM_RST);

and a31a(na31a, V1, na31b, SSRV);
and a31b(na31b, V1, PBG2V);
hci #(0) a32a(SSRR, na31a, SIM_CLK, SIM_RST);

// 10-44
and a16c(na24e_a16c, Z1, na23d, SSRV, PCINFV, G2DV);
and a23d(na23d, G3DVN);
and a24d(na24d, SSRR);
and a24e(na24e_a24e, V1, na24d, SSR1);
inv a24f(SSR1N, na24e, SIM_CLK, SIM_RST);
inv #(0) a23f(SSR1, na23e, SIM_CLK, SIM_RST);
and a23e(na23e, V1, SSR1N);
idl idl1(SSR1H, SSR1, SIM_CLK, SIM_RST);

and a16d(na8e_a16d, Z1, na15d, SSRV, PCINFV, G3DV);
and a15d(na15d, G4DVN);
and a8d(na8d, SSRR);
and a8e(na8e_a8e, V1, na8d, SSR2);
inv a8f(SSR2N, na8e, SIM_CLK, SIM_RST);
inv #(0) a15f(SSR2, na15e, SIM_CLK, SIM_RST);
and a15e(na15e, V1, SSR2N);
idl idl2(SSR2H, SSR2, SIM_CLK, SIM_RST);

and a10c(na17e_a10c, Z1, na9d, SSRV, PCINFV, G4DV);
and a9d(na9d, G5DVN);
and a17d(na17d, SSRR);
and a17e(na17e_a17e, V1, na17d, SSR3);
inv a17f(SSR3N, na17e, SIM_CLK, SIM_RST);
inv #(0) a9f(SSR3, na9e, SIM_CLK, SIM_RST);
and a9e(na9e, V1, SSR3N);
idl idl3(SSR3H, SSR3, SIM_CLK, SIM_RST);

and a10d(na4e_a10d, Z1, na3d, SSRV, PCINFV, G5DV);
and a3d(na3d, G6DVN);
and a4d(na4d, SSRR);
and a4e(na4e_a4e, V1, na4d, SSR4);
inv a4f(SSR4N, na4e, SIM_CLK, SIM_RST);
inv #(0) a3f(SSR4, na3e, SIM_CLK, SIM_RST);
and a3e(na3e, V1, SSR4N);
idl idl4(SSR4H, SSR4, SIM_CLK, SIM_RST);

and a20b(na26e_a20b, Z1, na27d, SSRV, PCINFV, G6DV);
and a27d(na27d, G7DVN);
and a26d(na26d, SSRR);
and a26e(na26e_a26e, V1, na26d, SSR5);
inv a26f(SSR5N, na26e, SIM_CLK, SIM_RST);
inv #(0) a27f(SSR5, na27e, SIM_CLK, SIM_RST);
and a27e(na27e, V1, SSR5N);
idl idl5(SSR5H, SSR5, SIM_CLK, SIM_RST);

and a20c(na20c, Z1, SSRV, PCINFV, G1DV, G7DV);
and a21a(na14b_a21a, na20c);
and a14a(na14a, SSRR);
and a14b(na14b_a14b, V1, na4a, SSR6);
inv a14c(SSR6N, na14b, SIM_CLK, SIM_RST);
inv #(0) a21c(SSR6, na21b, SIM_CLK, SIM_RST);
and a21b(na21b, V1, SSR6N);
idl idl6(SSR6H, SSR6, SIM_CLK, SIM_RST);

// 10-45
and a12c(na11e_a12c, Z1, na5c, SSRV, G1DVN);
and a5c(na5c, G2DV, PCINFV);
and a11d(na11d, SSRR);
and a11e(na11e_a11e, V1, na11d, SSR7);
inv a11f(SSR7N, na11e, SIM_CLK, SIM_RST);
inv #(0) a5e(SSR7, na5d, SIM_CLK, SIM_RST);
and a5d(na5d, V1, SSR7N);
idl idl7(SSR7H, SSR7, SIM_CLK, SIM_RST);

and a12d(na12d, Z1, G3DV, PCINFV, G2DVN);
and a13d(na19e_a13d, na12d, SSRV);
and a19d(na19d, SSRR);
and a19e(na19e_a19e, V1, na19d, SSR8);
inv a19f(SSR8N, na19e, SIM_CLK, SIM_RST);
inv #(0) a13f(SSR8, na13e, SIM_CLK, SIM_RST);
and a13e(na13e, V1, SSR8N);
idl idl8(SSR8H, SSR8, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
