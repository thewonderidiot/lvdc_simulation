`timescale 1ns/1ps
`default_nettype none

module id_sampler_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire A3DVN,
    input wire A4DVN,
    input wire A5DVN,
    input wire CES9,
    input wire CES10,
    input wire CES11,
    input wire CES12,
    input wire CES19,
    input wire CODE,
    input wire DO10,
    input wire DO11,
    input wire DO12,
    input wire DO13,
    input wire EM9N,
    input wire EM10N,
    input wire EM11N,
    input wire EM12N,
    input wire EM23N,
    input wire EM24N,
    input wire EM25N,
    input wire EM26N,
    input wire EMA,
    input wire ETCCN,
    input wire ETTS,
    input wire G1DVN,
    input wire G2DVN,
    input wire G3DVN,
    input wire G4DV,
    input wire G4DVN,
    input wire ICRV,
    input wire ICR10N,
    input wire ICR11N,
    input wire ICR12N,
    input wire ICR13N,
    input wire LGAV,
    input wire PAAV,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAV,
    input wire PCG2V,
    input wire PS5A,
    input wire PS5B,
    input wire PS6A,
    input wire PS6B,
    input wire RESMV,
    input wire SS9,
    input wire SS10,
    input wire SS11,
    input wire SS12,
    input wire SSDO,
    input wire W5,
    input wire X5,
    input wire Y6,
    input wire Z8,

    output wire DM6B,
    output wire DM7B,
    output wire DM11A,
    output wire DM12A,
    output wire DM13A,
    output wire DM14A
);

wire DM6BN;
wire DM7BN;
wire DM11AN;
wire DM12AN;
wire DM13AN;
wire DM14AN;
wire DO10N;
wire DO11N;
wire DO12N;
wire DO13N;
wire PS5N;
wire PS6N;
wire SS9N;
wire SS10N;
wire SS11N;
wire SS12N;

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
wire na17a_a18b;
assign na17a = na17a_a17a | na17a_a17b | na17a_a18b;
wire na17d;
wire na17d_a17d;
wire na17d_a17e;
wire na17d_a18e;
assign na17d = na17d_a17d | na17d_a17e | na17d_a18e;
wire na18c;
wire na18f;
wire na19a;
wire na19a_a18a;
wire na19a_a19a;
wire na19a_a19b;
assign na19a = na19a_a18a | na19a_a19a | na19a_a19b;
wire na19d;
wire na19d_a18d;
wire na19d_a19d;
wire na19d_a19e;
assign na19d = na19d_a18d | na19d_a19d | na19d_a19e;
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
wire na24a_a31b;
wire na24a_a32a;
assign na24a = na24a_a12b | na24a_a16a | na24a_a16b | na24a_a23c | na24a_a24a | na24a_a25b | na24a_a30a | na24a_a30b | na24a_a31b | na24a_a32a;
wire na24b;
wire na24d;
wire na24d_a16c;
wire na24d_a16d;
wire na24d_a23f;
wire na24d_a24d;
wire na24d_a25d;
wire na24d_a30c;
wire na24d_a30d;
wire na24d_a31e;
wire na24d_a32c;
assign na24d = na24d_a16c | na24d_a16d | na24d_a23f | na24d_a24d | na24d_a25d | na24d_a30c | na24d_a30d | na24d_a31e | na24d_a32c;
wire na24e;
wire na26a;
wire na26a_a12a;
wire na26a_a20a;
wire na26a_a20b;
wire na26a_a25a;
wire na26a_a26a;
wire na26a_a27a;
wire na26a_a27b;
wire na26a_a33b;
wire na26a_a34c;
assign na26a = na26a_a12a | na26a_a20a | na26a_a20b | na26a_a25a | na26a_a26a | na26a_a27a | na26a_a27b | na26a_a33b | na26a_a34c;
wire na26b;
wire na26d;
wire na26d_a12c;
wire na26d_a20c;
wire na26d_a20d;
wire na26d_a25c;
wire na26d_a26d;
wire na26d_a27c;
wire na26d_a27d;
wire na26d_a32b;
wire na26d_a33e;
wire na26d_a34f;
assign na26d = na26d_a12c | na26d_a20c | na26d_a20d | na26d_a25c | na26d_a26d | na26d_a27c | na26d_a27d | na26d_a32b | na26d_a33e | na26d_a34f;
wire na26e;
wire na31a;
wire na31c;
wire na31d;
wire na31f;
wire na33a;
wire na33c;
wire na33d;
wire na33f;
wire na34a;
wire na34a_a34a;
wire na34a_a34b;
assign na34a = na34a_a34a & na34a_a34b;
wire na34d;
wire na34d_a34d;
wire na34d_a34e;
assign na34d = na34d_a34d & na34d_a34e;

// 10-78
and a12a(na26a_a12a, X5, CODE, PCG2V, PS5N);
and a27a(na26a_a27a, Z8, EM9N, EMA, PBG2V);
and a27b(na26a_a27b, X5, EMA, EM23N, PCG2V);
and a33b(na26a_a33b, Z8, na33c, ETTS);
and a33c(na33c, G1DVN);
and a34a(na34a_a34a, Z8, G4DV, PCAV);
and a34b(na34a_a34b, ICR10N, ICRV);
and a34c(na26a_a34c, na34a, ETCCN);
and a20a(na26a_a20a, Z8, SS9N, PBG2V, SSDO);
and a20b(na26a_a20b, X5, SSDO, PCG2V, DO10N);
and a25a(na26a_a25a, Z8, CES9, CODE, PBG2V);
and a26a(na26a_a26a, V1, DM11AN);
inv #(0) a26c(DM11A, na26a, SIM_CLK, SIM_RST);
inv a19c(DM11AN, na19a, SIM_CLK, SIM_RST);
and a19a(na19a_a19a, V1, DM11A);
and a19b(na19a_a19b, na26b, ETCCN);
and a26b(na26b, W5, RESMV);
and a18a(na19a_a18a, Y6, ETTS);

and a12b(na24a_a12b, X5, CODE, PCG2V, CES19);
and a32a(na24a_a32a, Z8, na31a, LGAV, PBAV, A3DVN);
and a31a(na31a, ETCCN);
and a25b(na24a_a25b, Z8, EMA, EM10N, PBG2V);
and a16a(na24a_a16a, X5, EM24N, PCG2V, EMA);
and a31b(na24a_a31b, Z8, na31c, ETTS);
and a31c(na31c, G2DVN);
and a23a(na23a_a23a, Z8, G4DV, PCAV);
and a23b(na23a_a23b, ICRV, ICR11N);
and a23c(na24a_a23c, na23a, ETCCN);
and a16b(na24a_a16b, Z8, SSDO, PBG2V, SS10N);
and a30a(na24a_a30a, X5, SSDO, DO11N, PCG2V);
and a30b(na24a_a30b, Z8, CODE, PBG2V, CES10);
and a24a(na24a_a24a, V1, DM12AN);
inv #(0) a24c(DM12A, na24a, SIM_CLK, SIM_RST);
inv a17c(DM12AN, na17a, SIM_CLK, SIM_RST);
and a17a(na17a_a17a, V1, DM12A);
and a17b(na17a_a17b, na24b, ETCCN);
and a24b(na24b, W5, RESMV);
and a18b(na17a_a18b, Y6, ETTS);

// 10-79
and a18c(na18c, Z8, ETTS);
and a11a(na11b_a11a, na18c, PAAV);
and a11b(na11b_a11b, V1, DM6B);
inv a11c(DM6BN, na11b, SIM_CLK, SIM_RST);
inv #(0) a4c(DM6B, na4a, SIM_CLK, SIM_RST);
and a4a(na4a_a4a, V1, DM6BN);
and a4b(na4a_a4b, Y6, ETTS);

and a10a(na10a, PS5B);
and a10b(na10b, V1, na10a, PS5A);
inv a10c(PS5N, na10b, SIM_CLK, SIM_RST);

dia dia1(SS10N, SS10, SIM_CLK, SIM_RST);
dia dia2(DO11N, DO11, SIM_CLK, SIM_RST);
dia dia3(SS9N, SS9, SIM_CLK, SIM_RST);
dia dia4(DO10N, DO10, SIM_CLK, SIM_RST);

// 10-80
and a12c(na26d_a12c, X5, CODE, PCG2V, PS6N);
and a32b(na26d_a32b, Z8, na33d, LGAV, PBAV, A4DVN);
and a33d(na33d, ETCCN);
and a27c(na26d_a27c, Z8, EM11N, EMA, PBG2V);
and a27d(na26d_a27d, X5, EMA, EM25N, PCG2V);
and a33e(na26d_a33e, Z8, na33f, ETTS);
and a33f(na33f, G3DVN);
and a34d(na34d_a34d, Z8, ICRV, PCAV);
and a34e(na34d_a34e, ICR12N, G4DV);
and a34f(na26d_a34f, na34d, ETCCN);
and a20c(na26d_a20c, Z8, SS11N, PBG2V, SSDO);
and a20d(na26d_a20d, X5, SSDO, PCG2V, DO12N);
and a25c(na26d_a25c, Z8, CES11, CODE, PBG2V);
and a26d(na26d_a26d, V1, DM13AN);
inv #(0) a26f(DM13A, na26d, SIM_CLK, SIM_RST);
inv a19f(DM13AN, na19d, SIM_CLK, SIM_RST);
and a19d(na19d_a19d, V1, DM13A);
and a19e(na19d_a19e, na26e, ETCCN);
and a26e(na26e, W5, RESMV);
and a18d(na19d_a18d, Y6, ETTS);

and a32c(na24d_a32c, Z8, na31d, LGAV, PBAV, A5DVN);
and a31d(na31d, ETCCN);
and a25d(na24d_a25d, Z8, EMA, EM12N, PBG2V);
and a16c(na24d_a16c, X5, EM26N, PCG2V, EMA);
and a31e(na24d_a31e, Z8, na31f, ETTS);
and a31f(na31f, G4DVN);
and a23d(na23d_a23d, Z8, ICRV, PCAV);
and a23e(na23d_a23e, G4DV, ICR13N);
and a23f(na24d_a23f, na23d, ETCCN);
and a16d(na24d_a16d, Z8, SSDO, PBG2V, SS12N);
and a30c(na24d_a30c, X5, SSDO, DO13N, PCG2V);
and a30d(na24d_a30d, Z8, CODE, PBG2V, CES12);
and a24d(na24d_a24d, V1, DM14AN);
inv #(0) a24f(DM14A, na24d, SIM_CLK, SIM_RST);
inv a17f(DM14AN, na17d, SIM_CLK, SIM_RST);
and a17d(na17d_a17d, V1, DM14A);
and a17e(na17d_a17e, na24e, ETCCN);
and a24e(na24e, W5, RESMV);
and a18e(na17d_a18e, Y6, ETTS);

// 10-81
and a18f(na18f, Z8, ETTS);
and a11d(na11e_a11d, na18f, PBAV);
and a11e(na11e_a11e, V1, DM7B);
inv a11f(DM7BN, na11e, SIM_CLK, SIM_RST);
inv #(0) a4f(DM7B, na4d, SIM_CLK, SIM_RST);
and a4d(na4d_a4d, V1, DM7BN);
and a4e(na4d_a4e, Y6, ETTS);

and a10d(na10d, PS6B);
and a10e(na10e, V1, na10d, PS6A);
inv a10f(PS6N, na10e, SIM_CLK, SIM_RST);

dia dia5(SS12N, SS12, SIM_CLK, SIM_RST);
dia dia6(DO13N, DO13, SIM_CLK, SIM_RST);
dia dia7(SS11N, SS11, SIM_CLK, SIM_RST);
dia dia8(DO12N, DO12, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
