`timescale 1ns/1ps
`default_nettype none

module id_sampler_3(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire ADV,
    input wire ADVN,
    input wire CES5,
    input wire CES6,
    input wire CES7,
    input wire CES8,
    input wire CES17,
    input wire CES18,
    input wire CODE,
    input wire DINFVN,
    input wire DO6,
    input wire DO7,
    input wire DO8,
    input wire DO9,
    input wire ECSA,
    input wire ECSB,
    input wire EM5N,
    input wire EM6N,
    input wire EM7N,
    input wire EM8N,
    input wire EM19N,
    input wire EM20N,
    input wire EM21N,
    input wire EM22N,
    input wire EMA,
    input wire ETCRN,
    input wire ETTS,
    input wire G1DV,
    input wire G2DV,
    input wire G1DVN,
    input wire G2DVN,
    input wire G3DV,
    input wire G4DV,
    input wire G6DV,
    input wire G7DV,
    input wire ICRV,
    input wire ICR6N,
    input wire ICR7N,
    input wire ICR8N,
    input wire ICR9N,
    input wire PAAV,
    input wire PBG2V,
    input wire PCAV,
    input wire PCG2V,
    input wire PS3A,
    input wire PS3B,
    input wire PS4A,
    input wire PS4B,
    input wire RESMV,
    input wire SS5,
    input wire SS6,
    input wire SS7,
    input wire SS8,
    input wire SSDO,
    input wire W5,
    input wire X5,
    input wire X8,
    input wire Y1,
    input wire Y7,
    input wire Z4,
    input wire Z8,

    output wire DM4B,
    output wire DM5B,
    output wire DM7A,
    output wire DM8A,
    output wire DM9A,
    output wire DM10A
);

wire DM4BN;
wire DM5BN;
wire DM7AN;
wire DM8AN;
wire DM9AN;
wire DM10AN;
wire DO6N;
wire DO7N;
wire DO8N;
wire DO9N;
wire PS3;
wire PS4;
wire PS3AN;
wire PS3BN;
wire PS4AN;
wire PS4BN;
wire SS5N;
wire SS6N;
wire SS7N;
wire SS8N;

wire na3a;
wire na3c;
wire na4a;
wire na4a_a4a;
wire na4a_a4b;
assign na4a = na4a_a4a | na4a_a4b;
wire na4d;
wire na4d_a4d;
wire na4d_a4e;
assign na4d = na4d_a4d | na4d_a4e;
wire na8a;
wire na8c;
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

// 10-84
and a12a(na26a_a12a, X8, CODE, PCG2V, PS3);
and a32a(na26a_a32a, Z4, ICRV, PCAV, ICR6N);
and a27a(na26a_a27a, Z4, EM5N, EMA, PBG2V);
and a27b(na26a_a27b, X8, EMA, EM19N, PCG2V);
and a34a(na34a_a34a, W5, DINFVN, PAAV);
and a34b(na34a_a34b, G6DV, G1DV);
and a34c(na26a_a34c, na34a, ADVN);
and a20a(na26a_a20a, Z8, SS5N, PBG2V, SSDO);
and a20b(na26a_a20b, X8, SSDO, PCG2V, DO6N);
and a25a(na26a_a25a, Z4, CES5, CODE, PBG2V);
and a26a(na26a_a26a, V1, DM7AN);
inv #(0) a26c(DM7A, na26a, SIM_CLK, SIM_RST);
inv a19c(DM7AN, na19a, SIM_CLK, SIM_RST);
and a19a(na19a_a19a, V1, DM7A);
and a19b(na19a_a19b, na26b, ETCRN);
and a26b(na26b, W5, RESMV);

and a12b(na24a_a12b, X8, CODE, PCG2V, CES17);
and a32b(na24a_a32b, Z4, ICRV, PCAV, ICR8N);
and a25b(na24a_a25b, Z4, EMA, EM7N, PBG2V);
and a16a(na24a_a16a, X8, EM21N, PCG2V, EMA);
and a23a(na23a_a23a, W5, DINFVN, PAAV);
and a23b(na23a_a23b, G3DV, G1DVN);
and a23c(na24a_a23c, na23a, ADVN);
and a16b(na24a_a16b, Z8, SSDO, PBG2V, SS7N);
and a30a(na24a_a30a, X8, SSDO, DO8N, PCG2V);
and a30b(na24a_a30b, Z4, CODE, PBG2V, CES7);
and a24a(na24a_a24a, V1, DM9AN);
inv #(0) a24c(DM9A, na24a, SIM_CLK, SIM_RST);
inv a17c(DM9AN, na17a, SIM_CLK, SIM_RST);
and a17a(na17a_a17a, V1, DM9A);
and a17b(na17a_a17b, na24b, ETCRN);
and a24b(na24b, W5, RESMV);

// 10-85
and a18a(na18a, Z4, ETTS);
and a11a(na11b_a11a, na18a, ECSA);
and a11b(na11b_a11b, V1, DM4B);
inv a11c(DM4BN, na11b, SIM_CLK, SIM_RST);
inv #(0) a4c(DM4B, na4a, SIM_CLK, SIM_RST);
and a4a(na4a_a4a, V1, DM4BN);
and a4b(na4a_a4b, Y7, ETTS);

and a10a(na10a, PS3BN);
and a10b(na10b, V1, na10a, PS3AN);
inv #(0) a10c(PS3, na10b, SIM_CLK, SIM_RST);

and a8a(na8a, V1, PS3A);
inv a8b(PS3AN, na8a, SIM_CLK, SIM_RST);

and a3a(na3a, V1, PS3B);
inv a3b(PS3BN, na3a, SIM_CLK, SIM_RST);

dia dia1(SS7N, SS7, SIM_CLK, SIM_RST);
dia dia2(DO8N, DO8, SIM_CLK, SIM_RST);
dia dia3(SS5N, SS5, SIM_CLK, SIM_RST);
dia dia4(DO6N, DO6, SIM_CLK, SIM_RST);

// 10-82
and a12c(na26d_a12c, X8, CODE, PCG2V, PS4);
and a32c(na26d_a32c, Z4, ICRV, PCAV, ICR7N);
and a27c(na26d_a27c, Z4, EM6N, EMA, PBG2V);
and a27d(na26d_a27d, X5, EMA, EM20N, PCG2V);
and a34d(na34d_a34d, W5, DINFVN, PAAV);
and a34e(na34d_a34e, G7DV, G2DV);
and a34f(na26d_a34f, na34d, ADV);
and a20c(na26d_a20c, Z8, SS6N, PBG2V, SSDO);
and a20d(na26d_a20d, X8, SSDO, PCG2V, DO7N);
and a25c(na26d_a25c, Z4, CES6, CODE, PBG2V);
and a26d(na26d_a26d, V1, DM8AN);
inv #(0) a26f(DM8A, na26d, SIM_CLK, SIM_RST);
inv a19f(DM8AN, na19d, SIM_CLK, SIM_RST);
and a19d(na19d_a19d, V1, DM8A);
and a19e(na19d_a19e, na26e, ETCRN);
and a26e(na26e, W5, RESMV);

and a12d(na24d_a12d, X8, CODE, PCG2V, CES18);
and a32d(na24d_a32d, Z4, ICRV, PCAV, ICR9N);
and a25d(na24d_a25d, Z4, EMA, EM8N, PBG2V);
and a16c(na24d_a16c, X5, EM22N, PCG2V, EMA);
and a23d(na23d_a23d, W5, DINFVN, PAAV);
and a23e(na23d_a23e, G2DVN, G4DV);
and a23f(na24d_a23f, na23d, ADV);
and a16d(na24d_a16d, Z8, SSDO, PBG2V, SS8N);
and a30c(na24d_a30c, X8, SSDO, DO9N, PCG2V);
and a30d(na24d_a30d, Z4, CODE, PBG2V, CES8);
and a24d(na24d_a24d, V1, DM10AN);
inv #(0) a24f(DM10A, na24d, SIM_CLK, SIM_RST);
inv a17f(DM10AN, na17d, SIM_CLK, SIM_RST);
and a17d(na17d_a17d, V1, DM10A);
and a17e(na17d_a17e, na24e, ETCRN);
and a24e(na24e, W5, RESMV);

// 10-83
and a18b(na18b, Z4, ETTS);
and a11d(na11e_a11d, na18b, ECSB);
and a11e(na11e_a11e, V1, DM5B);
inv a11f(DM5BN, na11e, SIM_CLK, SIM_RST);
inv #(0) a4f(DM5B, na4d, SIM_CLK, SIM_RST);
and a4d(na4d_a4d, V1, DM5BN);
and a4e(na4d_a4e, Y1, ETTS);

and a10d(na10d, PS4BN);
and a10e(na10e, V1, na10d, SIM_CLK, SIM_RST);
inv #(0) a10f(PS4, na10e, SIM_CLK, SIM_RST);

and a8c(na8c, V1, PS4A);
inv a8d(PS4AN, na8c, SIM_CLK, SIM_RST);

and a3c(na3c, V1, PS4B);
inv a3d(PS4BN, na3c, SIM_CLK, SIM_RST);

dia dia5(SS8N, SS8, SIM_CLK, SIM_RST);
dia dia6(DO9N, DO9, SIM_CLK, SIM_RST);
dia dia7(SS6N, SS6, SIM_CLK, SIM_RST);
dia dia8(DO7N, DO7, SIM_CLK, SIM_RST);







endmodule
`default_nettype wire
