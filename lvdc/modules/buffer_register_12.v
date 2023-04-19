`timescale 1ns/1ps
`default_nettype none

module buffer_register_12(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire V1,
    input wire AnCBRVN,
    input wire AnSBRYV,
    input wire AnSBRZV,
    input wire AnTR1V,
    input wire AnTR2V,
    input wire AnTR3V,
    input wire AnTR4V,
    input wire AnTR5V,
    input wire AnTR7V,
    input wire AnTR8V,
    input wire AnTR10V,
    input wire AnTR11V,
    input wire AnTR13V,
    input wire MaSA1,
    input wire MaSA2,
    input wire MaSA3,
    input wire MaSA4,
    input wire MaSA5,
    input wire MaSA7,
    input wire MaSA8,
    input wire MaSA10,
    input wire MaSA11,
    input wire MaSA13,
    input wire MbSA1,
    input wire MbSA2,
    input wire MbSA3,
    input wire MbSA4,
    input wire MbSA5,
    input wire MbSA7,
    input wire MbSA8,
    input wire MbSA10,
    input wire MbSA11,
    input wire MbSA13,
    input wire McSA1,
    input wire McSA2,
    input wire McSA3,
    input wire McSA4,
    input wire McSA5,
    input wire McSA7,
    input wire McSA8,
    input wire McSA10,
    input wire McSA11,
    input wire McSA13,
    input wire MdSA1,
    input wire MdSA2,
    input wire MdSA3,
    input wire MdSA4,
    input wire MdSA5,
    input wire MdSA7,
    input wire MdSA8,
    input wire MdSA10,
    input wire MdSA11,
    input wire MdSA13,
    output wire BRx1,
    output wire BRx1N,
    output wire BRx2,
    output wire BRx2N,
    output wire BRx3,
    output wire BRx3N,
    output wire BRx4,
    output wire BRx4N,
    output wire BRx5,
    output wire BRx5N,
    output wire BRx7,
    output wire BRx7N,
    output wire BRx8,
    output wire BRx8N,
    output wire BRx10,
    output wire BRx10N,
    output wire BRx11,
    output wire BRx11N,
    output wire BRx13,
    output wire BRx13N
);

wire na8a;
wire na8b;
wire na8d;
wire na8e;
wire na10a;
wire na10b;
wire na10b_a9b;
wire na10b_a9c;
wire na10b_a11a;
wire na10b_a11b;
wire na10b_a17a;
wire na10b_a10b;
assign na10b = na10b_a9b | na10b_a9c | na10b_a11a | na10b_a11b | na10b_a17a | na10b_a10b;
wire na10d;
wire na10e;
wire na10e_a9e;
wire na10e_afe;
wire na10e_a11d;
wire na10e_a11e;
wire na10e_a17d;
wire na10e_a10e;
assign na10e = na10e_a9e | na10e_afe | na10e_a11d | na10e_a11e | na10e_a17d | na10e_a10e;
wire na11c;
wire na11f;
wire na13a;
wire na13d;
wire na14b;
wire na14e;
wire na15a;
wire na15b;
wire na15b_a23c;
wire na15b_a16a;
wire na15b_a16b;
wire na15b_a16c;
wire na15b_a9a;
wire na15b_a15b;
assign na15b = na15b_a23c | na15b_a16a | na15b_a16b | na15b_a16c | na15b_a9a | na15b_a15b;
wire na15d;
wire na15e;
wire na15e_a23f;
wire na15e_a16d;
wire na15e_a16e;
wire na15e_a16f;
wire na15e_a9d;
wire na15e_a15e;
assign na15e = na15e_a23f | na15e_a16d | na15e_a16e | na15e_a16f | na15e_a9d | na15e_a15e;
wire na17b;
wire na17e;
wire na21a;
wire na21b;
wire na21b_a27c;
wire na21b_a20a;
wire na21b_a20b;
wire na21b_a20c;
wire na21b_a14a;
wire na21b_a21b;
assign na21b = na21b_a27c | na21b_a20a | na21b_a20b | na21b_a20c | na21b_a14a | na21b_a21b;
wire na21d;
wire na21e;
wire na21e_a27f;
wire na21e_a20d;
wire na21e_a20e;
wire na21e_a20f;
wire na21e_a14d;
wire na21e_a21e;
assign na21e = na21e_a27f | na21e_a20d | na21e_a20e | na21e_a20f | na21e_a14d | na21e_a21e;
wire na22b;
wire na22e;
wire na23b;
wire na23e;
wire na27b;
wire na27e;
wire na28b;
wire na28e;
wire na29a;
wire na29b;
wire na29b_a30a;
wire na29b_a30b;
wire na29b_a30c;
wire na29b_a23a;
wire na29b_a22a;
wire na29b_a29b;
assign na29b = na29b_a30a | na29b_a30b | na29b_a30c | na29b_a23a | na29b_a22a | na29b_a29b;
wire na29d;
wire na29e;
wire na29e_a30d;
wire na29e_a30e;
wire na29e_a30f;
wire na29e_a23d;
wire na29e_a22d;
wire na29e_a29e;
assign na29e = na29e_a30d | na29e_a30e | na29e_a30f | na29e_a23d | na29e_a22d | na29e_a29e;
wire na35a;
wire na35b;
wire na35b_a34a;
wire na35b_a34b;
wire na35b_a34c;
wire na35b_a27a;
wire na35b_a28a;
wire na35b_a35b;
assign na35b = na35b_a34a | na35b_a34b | na35b_a34c | na35b_a27a | na35b_a28a | na35b_a35b;
wire na35d;
wire na35e;
wire na35e_a34d;
wire na35e_a34e;
wire na35e_a34f;
wire na35e_a27d;
wire na35e_a28d;
wire na35e_a35e;
assign na35e = na35e_a34d | na35e_a34e | na35e_a34f | na35e_a27d | na35e_a28d | na35e_a35e;

// 10-128, 10-132
and a30a(na29b_a30a, MaSA1);
and a30b(na29b_a30b, MbSA1);
and a30c(na29b_a30c, McSA1);
and a23a(na29b_a23a, MdSA1);
and a23b(na23b, V1, AnSBRZV);
and a22a(na29b_a22a, na23b, AnTR1V);
and a29a(na29a, AnCBRVN);
and a29b(na29b_a29b, V1, na29a, BRx1);
inv a29c(BRx1N, na29b, SIM_CLK, SIM_RST);
inv #(0) a22c(BRx1, na22b, SIM_CLK, SIM_RST);
and a22b(na22b, V1, BRx1N);

and a23c(na15b_a23c, MaSA2);
and a16a(na15b_a16a, MbSA2);
and a16b(na15b_a16b, McSA2);
and a16c(na15b_a16c, MdSA2);
and a9a(na15b_a9a, V1, na8a);
and a8a(na8a, AnTR2V, AnSBRZV);
and a15a(na15a, AnCBRVN);
and a15b(na15b_a15b, V1, na15a, BRx2);
inv a15c(BRx2N, na15b, SIM_CLK, SIM_RST);
inv #(0) a8c(BRx2, na8b, SIM_CLK, SIM_RST);
and a8b(na8b, V1, BRx2N);

and a9b(na10b_a9b, MaSA4);
and a9c(na10b_a9c, MbSA4);
and a11a(na10b_a11a, McSA4);
and a11b(na10b_a11b, MdSA4);
and a11c(na11c, V1, AnTR4V);
and a17a(na10b_a17a, na11c, AnSBRZV);
and a10a(na10a, AnCBRVN);
and a10b(na10b_a10b, V1, na10a, BRx4);
inv a10c(BRx4N, na10b, SIM_CLK, SIM_RST);
inv #(0) a17c(BRx4, na17b, SIM_CLK, SIM_RST);
and a17b(na17b, V1, BRx4N);

// 10-129, 10-133
and a34a(na35b_a34a, MaSA7);
and a34b(na35b_a34b, MbSA7);
and a34c(na35b_a34c, McSA7);
and a27a(na35b_a27a, MdSA7);
and a27b(na27b, V1, AnTR7V);
and a28a(na35b_a28a, na27b, AnSBRZV);
and a35a(na35a, AnCBRVN);
and a35b(na35b_a35b, V1, na35a, BRx7);
inv a35c(BRx7N, na35b, SIM_CLK, SIM_RST);
inv #(0) a28c(BRx7, na28b, SIM_CLK, SIM_RST);
and a28b(na28b, V1, BRx7N);

and a27c(na21b_a27c, MaSA10);
and a20a(na21b_a20a, MbSA10);
and a20b(na21b_a20b, McSA10);
and a20c(na21b_a20c, MdSA10);
and a13a(na13a, V1, AnTR10V);
and a14a(na21b_a14a, na13a, AnSBRZV);
and a21a(na21a, AnCBRVN);
and a21b(na21b_a21b, V1, na21a, BRx10);
inv a21c(BRx10N, na21b, SIM_CLK, SIM_RST);
inv #(0) a14c(BRx10, na14b, SIM_CLK, SIM_RST);
and a14b(na14b, V1, BRx10N);

// 10-130, 10-134
and a30d(na29e_a30d, MaSA3);
and a30e(na29e_a30e, MbSA3);
and a30f(na29e_a30f, McSA3);
and a23d(na29e_a23d, MdSA3);
and a23e(na23e, V1, AnSBRYV);
and a22d(na29e_a22d, na23e, AnTR3V);
and a29d(na29d, AnCBRVN);
and a29e(na29e_a29e, V1, na29d, BRx3);
inv a29f(BRx3N, na29e, SIM_CLK, SIM_RST);
inv #(0) a22f(BRx3, na22e, SIM_CLK, SIM_RST);
and a22e(na22e, V1, BRx3N);

and a23f(na15e_a23f, MaSA5);
and a16d(na15e_a16d, MbSA5);
and a16e(na15e_a16e, McSA5);
and a16f(na15e_a16f, MdSA5);
and a9d(na15e_a9d, V1, na8d);
and a8d(na8d, AnTR5V, AnSBRYV);
and a15d(na15d, AnCBRVN);
and a15e(na15e_a15e, V1, na15d, BRx5);
inv a15f(BRx5N, na15e, SIM_CLK, SIM_RST);
inv #(0) a8f(BRx5, na8e, SIM_CLK, SIM_RST);
and a8e(na8e, V1, BRx5N);

and a9e(na10e_a9e, MaSA8);
and afe(na10e_afe, MbSA8);
and a11d(na10e_a11d, McSA8);
and a11e(na10e_a11e, MdSA8);
and a11f(na11f, V1, AnTR8V);
and a17d(na10e_a17d, na11f, AnSBRYV);
and a10d(na10d, AnCBRVN);
and a10e(na10e_a10e, V1, na10d, BRx8);
inv a10f(BRx8N, na10e, SIM_CLK, SIM_RST);
inv #(0) a17f(BRx8, na17e, SIM_CLK, SIM_RST);
and a17e(na17e, V1, BRx8N);

// 10-131, 10-135
and a34d(na35e_a34d, MaSA11);
and a34e(na35e_a34e, MbSA11);
and a34f(na35e_a34f, McSA11);
and a27d(na35e_a27d, MdSA11);
and a27e(na27e, V1, AnTR11V);
and a28d(na35e_a28d, na27e, AnSBRYV);
and a35d(na35d, AnCBRVN);
and a35e(na35e_a35e, V1, na35d, BRx11);
inv a35f(BRx11N, na35e, SIM_CLK, SIM_RST);
inv #(0) a28f(BRx11, na28e, SIM_CLK, SIM_RST);
and a28e(na28e, V1, BRx11N);

and a27f(na21e_a27f, MaSA13);
and a20d(na21e_a20d, MbSA13);
and a20e(na21e_a20e, McSA13);
and a20f(na21e_a20f, MdSA13);
and a13d(na13d, V1, AnTR13V);
and a14d(na21e_a14d, na13d, AnSBRYV);
and a21d(na21d, AnCBRVN);
and a21e(na21e_a21e, V1, na21d, BRx13);
inv a21f(BRx13N, na21e, SIM_CLK, SIM_RST);
inv #(0) a14f(BRx13, na14e, SIM_CLK, SIM_RST);
and a14e(na14e, V1, BRx13N);

endmodule
`default_nettype wire
