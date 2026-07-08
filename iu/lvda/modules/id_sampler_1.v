`timescale 1ns/1ps
`default_nettype none

module id_sampler_1(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire ADV,
    input wire ADVN,
    input wire CES1,
    input wire CES2,
    input wire CES3,
    input wire CES4,
    input wire CES15,
    input wire CES16,
    input wire CODE,
    input wire DINFVN,
    input wire DO2,
    input wire DO3,
    input wire DO4,
    input wire DO5,
    input wire EM1N,
    input wire EM2N,
    input wire EM3N,
    input wire EM4N,
    input wire EM15N,
    input wire EM16N,
    input wire EM17N,
    input wire EM18N,
    input wire EMA,
    input wire ETCRN,
    input wire ETTS,
    input wire G2DV,
    input wire G3DV,
    input wire G4DV,
    input wire G4DVN,
    input wire G5DV,
    input wire G5DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire G7DV,
    input wire G7DVN,
    input wire ICRV,
    input wire ICR2N,
    input wire ICR3N,
    input wire ICR4N,
    input wire ICR5N,
    input wire PAAV,
    input wire PBG2V,
    input wire PCAV,
    input wire PCG2V,
    input wire PS1A,
    input wire PS1B,
    input wire PS2A,
    input wire PS2B,
    input wire RESMV,
    input wire SS1,
    input wire SS2,
    input wire SS3,
    input wire SS4,
    input wire SSDO,
    input wire W5,
    input wire X5,
    input wire Y7,
    input wire Y8,
    input wire Z6,
    input wire Z8,

    output wire DM2B,
    output wire DM3A,
    output wire DM3B,
    output wire DM4A,
    output wire DM5A,
    output wire DM6A
);

wire DM2BN;
wire DM3AN;
wire DM3BN;
wire DM4AN;
wire DM5AN;
wire DM6AN;
wire DO2N;
wire DO3N;
wire DO4N;
wire DO5N;
wire PS1N;
wire PS2N;
wire SS1N;
wire SS2N;
wire SS3N;
wire SS4N;

wire na4a;
wire na4a_a4a;
wire na4a_a4b;
assign na4a = na4a_a4a | na4a_a4b;
wire na4d;
wire na4d_a4d;
wire na4d_a4e;
assign na4d = na4d_a4d | na4d_a4e;
wire na10a;
wire na10b;
wire na10d;
wire na10e;
wire na11b;
wire na11b_a11a;
wire na11b_a11b;
assign na11b = na11b_a11a | na11b_a11b;
wire na11e;
wire na11e_a11d;
wire na11e_a11e;
assign na11e = na11e_a11d | na11e_a11e;
wire na17a;
wire na17a_a17a;
wire na17a_a17b;
assign na17a = na17a_a17a | na17a_a17b;
wire na17d;
wire na17d_a17d;
wire na17d_a17e;
assign na17d = na17d_a17d | na17d_a17e;
wire na18a;
wire na18b;
wire na19a;
wire na19a_a19a;
wire na19a_a19b;
assign na19a = na19a_a19a | na19a_a19b;
wire na19d;
wire na19d_a19d;
wire na19d_a19e;
assign na19d = na19d_a19d | na19d_a19e;
wire na23a;
wire na23a_a23a;
wire na23a_a23b;
assign na23a = na23a_a23a & na23a_a23b;
wire na23d;
wire na23d_a23d;
wire na23d_a23e;
assign na23d = na23d_a23d & na23d_a23e;
wire na24a;
wire na24a_a12b;
wire na24a_a16a;
wire na24a_a16b;
wire na24a_a23c;
wire na24a_a24a;
wire na24a_a25b;
wire na24a_a30a;
wire na24a_a30b;
wire na24a_a32b;
assign na24a = na24a_a12b | na24a_a16a | na24a_a16b | na24a_a23c | na24a_a24a | na24a_a25b | na24a_a30a | na24a_a30b | na24a_a32b;
wire na24b;
wire na24d;
wire na24d_a12d;
wire na24d_a16c;
wire na24d_a16d;
wire na24d_a23f;
wire na24d_a24d;
wire na24d_a25d;
wire na24d_a30c;
wire na24d_a30d;
wire na24d_a32d;
assign na24d = na24d_a12d | na24d_a16c | na24d_a16d | na24d_a23f | na24d_a24d | na24d_a25d | na24d_a30c | na24d_a30d | na24d_a32d;
wire na24e;
wire na26a;
wire na26a_a12a;
wire na26a_a20a;
wire na26a_a20b;
wire na26a_a25a;
wire na26a_a26a;
wire na26a_a27a;
wire na26a_a27b;
wire na26a_a32a;
wire na26a_a34c;
assign na26a = na26a_a12a | na26a_a20a | na26a_a20b | na26a_a25a | na26a_a26a | na26a_a27a | na26a_a27b | na26a_a32a | na26a_a34c;
wire na26b;
wire na26d;
wire na26d_a12c;
wire na26d_a20c;
wire na26d_a20d;
wire na26d_a25c;
wire na26d_a26d;
wire na26d_a27c;
wire na26d_a27d;
wire na26d_a32c;
wire na26d_a34f;
assign na26d = na26d_a12c | na26d_a20c | na26d_a20d | na26d_a25c | na26d_a26d | na26d_a27c | na26d_a27d | na26d_a32c | na26d_a34f;
wire na26e;
wire na34a;
wire na34a_a34a;
wire na34a_a34b;
assign na34a = na34a_a34a & na34a_a34b;
wire na34d;
wire na34d_a34d;
wire na34d_a34e;
assign na34d = na34d_a34d & na34d_a34e;

// 10-86
and a12a(na26a_a12a, X5, CODE, PCG2V, PS1N);
and a32a(na26a_a32a, Z6, ICRV, PCAV, ICR2N);
and a27a(na26a_a27a, Z6, EM1N, EMA, PBG2V);
and a27b(na26a_a27b, X5, EMA, EM15N, PCG2V);
and a34a(na34a_a34a, W5, DINFVN, PAAV);
and a34b(na34a_a34b, G4DVN, G2DV);
and a34c(na26a_a34c, na34a, ADVN);
and a20a(na26a_a20a, Z8, SS1N, PBG2V, SSDO);
and a20b(na26a_a20b, X5, SSDO, PCG2V, DO2N);
and a25a(na26a_a25a, Z6, CES1, CODE, PBG2V);
and a26a(na26a_a26a, V1, DM3AN);
inv #(0) a26c(DM3A, na26a, SIM_CLK, SIM_RST);
inv a19c(DM3AN, na19a, SIM_CLK, SIM_RST);
and a19a(na19a_a19a, V1, DM3A);
and a19b(na19a_a19b, na26b, ETCRN);
and a26b(na26b, W5, RESMV);

and a12b(na24a_a12b, X5, CODE, PCG2V, CES15);
and a32b(na24a_a32b, Z6, ICRV, PCAV, ICR4N);
and a25b(na24a_a25b, Z6, EMA, EM3N, PBG2V);
and a16a(na24a_a16a, X5, EM17N, PCG2V, EMA);
and a23a(na23a_a23a, W5, DINFVN, PAAV);
and a23b(na23a_a23b, G4DV, G6DVN);
and a23c(na24a_a23c, na23a, ADVN);
and a16b(na24a_a16b, Z8, SSDO, PBG2V, SS3N);
and a30a(na24a_a30a, X5, SSDO, DO4N, PCG2V);
and a30b(na24a_a30b, Z6, CODE, PBG2V, CES3);
and a24a(na24a_a24a, V1, DM5AN);
inv #(0) a24c(DM5A, na24a, SIM_CLK, SIM_RST);
inv a17c(DM5AN, na17a, SIM_CLK, SIM_RST);
and a17a(na17a_a17a, V1, DM5A);
and a17b(na17a_a17b, na24b, ETCRN);
and a24b(na24b, W5, RESMV);

// 10-87
and a18a(na18a, Z6, ETTS);
and a11a(na11b_a11a, na18a, G6DV);
and a11b(na11b_a11b, V1, DM2B);
inv a11c(DM2BN, na11b, SIM_CLK, SIM_RST);
inv #(0) a4c(DM2B, na4a, SIM_CLK, SIM_RST);
and a4a(na4a_a4a, V1, DM2BN);
and a4b(na4a_a4b, Y8, ETTS);

and a10a(na10a, PS1B);
and a10b(na10b, V1, na10a, PS1A);
inv a10c(PS1N, na10b, SIM_CLK, SIM_RST);

dia dia1(SS3N, SS3, SIM_CLK, SIM_RST);
dia dia2(DO4N, DO4, SIM_CLK, SIM_RST);
dia dia3(SS1N, SS1, SIM_CLK, SIM_RST);
dia dia4(DO2N, DO2, SIM_CLK, SIM_RST);

// 10-76
and a12c(na26d_a12c, X5, CODE, PCG2V, PS2N);
and a32c(na26d_a32c, Z6, ICRV, PCAV, ICR3N);
and a27c(na26d_a27c, Z6, EM2N, EMA, PBG2V);
and a27d(na26d_a27d, X5, EMA, EM16N, PCG2V);
and a34d(na34d_a34d, W5, DINFVN, PAAV);
and a34e(na34d_a34e, G5DVN, G3DV);
and a34f(na26d_a34f, na34d, ADV);
and a20c(na26d_a20c, Z8, SS2N, PBG2V, SSDO);
and a20d(na26d_a20d, X5, SSDO, PCG2V, DO3N);
and a25c(na26d_a25c, Z6, CES2, CODE, PBG2V);
and a26d(na26d_a26d, V1, DM4AN);
inv #(0) a26f(DM4A, na26d, SIM_CLK, SIM_RST);
inv a19f(DM4AN, na19d, SIM_CLK, SIM_RST);
and a19d(na19d_a19d, V1, DM4A);
and a19e(na19d_a19e, na26e, ETCRN);
and a26e(na26e, W5, RESMV);

and a12d(na24d_a12d, X5, CODE, PCG2V, CES16);
and a32d(na24d_a32d, Z6, ICRV, PCAV, ICR5N);
and a25d(na24d_a25d, Z6, EMA, EM4N, PBG2V);
and a16c(na24d_a16c, X5, EM18N, PCG2V, EMA);
and a23d(na23d_a23d, W5, DINFVN, PAAV);
and a23e(na23d_a23e, G5DV, G7DVN);
and a23f(na24d_a23f, na23d, ADV);
and a16d(na24d_a16d, Z8, SSDO, PBG2V, SS4N);
and a30c(na24d_a30c, X5, SSDO, DO5N, PCG2V);
and a30d(na24d_a30d, Z6, CODE, PBG2V, CES4);
and a24d(na24d_a24d, V1, DM6AN);
inv #(0) a24f(DM6A, na24d, SIM_CLK, SIM_RST);
inv a17f(DM6AN, na17d, SIM_CLK, SIM_RST);
and a17d(na17d_a17d, V1, DM6A);
and a17e(na17d_a17e, na24e, ETCRN);
and a24e(na24e, W5, RESMV);

// 10-77
and a18b(na18b, Z6, ETTS);
and a11d(na11e_a11d, na18b, G7DV);
and a11e(na11e_a11e, V1, DM3B);
inv a11f(DM3BN, na11e, SIM_CLK, SIM_RST);
inv #(0) a4f(DM3B, na4d, SIM_CLK, SIM_RST);
and a4d(na4d_a4d, V1, DM3BN);
and a4e(na4d_a4e, Y7, ETTS);

and a10d(na10d, PS2B);
and a10e(na10e, V1, na10d, PS2A);
inv a10f(PS2N, na10e, SIM_CLK, SIM_RST);

dia dia5(SS4N, SS4, SIM_CLK, SIM_RST);
dia dia6(DO5N, DO5, SIM_CLK, SIM_RST);
dia dia7(SS2N, SS2, SIM_CLK, SIM_RST);
dia dia8(DO3N, DO3, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
