`timescale 1ns/1ps
`default_nettype none

module tag_real_tm_regs(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire A1DV,
    input wire A3DV,
    input wire A4DV,
    input wire A5DV,
    input wire A6DV,
    input wire A7DV,
    input wire A8DV,
    input wire A9DV,
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
    input wire LTRV,
    input wire MODR1,
    input wire MODR2,
    input wire MODR3,
    input wire PAAV,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAVN,
    input wire PCG2V,
    input wire TCWN,
    input wire TLM,
    input wire W4,
    input wire X4,
    input wire Y6,
    input wire Z4,
    input wire Z6,

    output wire RTR1,
    output wire RTR2,
    output wire RTR3,
    output wire RTR4,
    output wire RTR5,
    output wire TAGR1,
    output wire TAGR2,
    output wire TAGR3,
    output wire TAGR4,
    output wire TAGR5,
    output wire TAGR6,
    output wire TAGR7,
    output wire TAGR8
);

wire ADI;
wire BDI;
wire RTR1N;
wire RTR2N;
wire RTR3N;
wire RTR4N;
wire RTR5N;
wire RTRR;
wire TAGR1N;
wire TAGR2N;
wire TAGR3N;
wire TAGR4N;
wire TAGR5N;
wire TAGR6N;
wire TAGR7N;
wire TAGR8N;
wire TAGRR;

wire na5a;
wire na5b;
wire na5b_a5b;
wire na5b_a6a;
wire na5b_a12a;
assign na5b = na5b_a5b | na5b_a6a | na5b_a12a;
wire na6b;
wire na8a;
wire na8b;
wire na8b_a8b;
wire na8b_a15a;
wire na8b_a15b;
assign na8b = na8b_a8b | na8b_a15a | na8b_a15b;
wire na8d;
wire na8e;
wire na8e_a8e;
wire na8e_a15c;
wire na8e_a15d;
assign na8e = na8e_a8e | na8e_a15c | na8e_a15d;
wire na11a;
wire na11b;
wire na11b_a11b;
wire na11b_a18a;
wire na11b_a18b;
assign na11b = na11b_a11b | na11b_a18a | na11b_a18b;
wire na12b;
wire na12b_a12b;
wire na12b_a13a;
assign na12b = na12b_a12b & na12b_a13a;
wire na14a;
wire na14b;
wire na16b;
wire na16e;
wire na17b;
wire na17b_a17b;
wire na17b_a31a;
assign na17b = na17b_a17b & na17b_a31a;
wire na17d;
wire na17d_a17d;
wire na17d_a31d;
assign na17d = na17d_a17d & na17d_a31d;
wire na18c;
wire na18d;
wire na19b;
wire na19d;
wire na19e;
wire na20b;
wire na20b_a20b;
wire na20b_a34a;
assign na20b = na20b_a20b & na20b_a34a;
wire na20c;
wire na20d;
wire na20d_a20d;
wire na20d_a28e;
assign na20d = na20d_a20d & na20d_a28e;
wire na21a;
wire na21b;
wire na21b_a13b;
wire na21b_a21b;
assign na21b = na21b_a13b | na21b_a21b;
wire na21e;
wire na21e_a21e;
wire na21e_a21f;
assign na21e = na21e_a21e & na21e_a21f;
wire na23a;
wire na23a_a23a;
wire na23a_a30a;
assign na23a = na23a_a23a & na23a_a30a;
wire na23c;
wire na23c_a16a;
wire na23c_a23c;
assign na23c = na23c_a16a & na23c_a23c;
wire na23d;
wire na23d_a23d;
wire na23d_a30d;
assign na23d = na23d_a23d & na23d_a30d;
wire na23f;
wire na23f_a16d;
wire na23f_a23f;
assign na23f = na23f_a16d & na23f_a23f;
wire na24a;
wire na24b;
wire na24b_a17a;
wire na24b_a23b;
wire na24b_a24b;
assign na24b = na24b_a17a | na24b_a23b | na24b_a24b;
wire na24d;
wire na24e;
wire na24e_a17c;
wire na24e_a23e;
wire na24e_a24e;
assign na24e = na24e_a17c | na24e_a23e | na24e_a24e;
wire na25c;
wire na25d;
wire na25d_a25d;
wire na25d_a32d;
wire na25d_a32e;
assign na25d = na25d_a25d | na25d_a32d | na25d_a32e;
wire na26a;
wire na26a_a26a;
wire na26a_a33a;
assign na26a = na26a_a26a & na26a_a33a;
wire na26c;
wire na26c_a19a;
wire na26c_a26c;
assign na26c = na26c_a19a & na26c_a26c;
wire na26e;
wire na27a;
wire na27b;
wire na27b_a20a;
wire na27b_a26b;
wire na27b_a27b;
assign na27b = na27b_a20a | na27b_a26b | na27b_a27b;
wire na27d;
wire na27e;
wire na27e_a27e;
wire na27e_a34e;
wire na27e_a35b;
assign na27e = na27e_a27e | na27e_a34e | na27e_a35b;
wire na28a;
wire na28c;
wire na28c_a21d;
wire na28c_a28c;
wire na28c_a35c;
assign na28c = na28c_a21d | na28c_a28c | na28c_a35c;
wire na29a;
wire na29b;
wire na29b_a22a;
wire na29b_a22b;
wire na29b_a29b;
assign na29b = na29b_a22a | na29b_a22b | na29b_a29b;
wire na29d;
wire na29e;
wire na29e_a22c;
wire na29e_a22d;
wire na29e_a29e;
assign na29e = na29e_a22c | na29e_a22d | na29e_a29e;
wire na30b;
wire na30e;
wire na31b;
wire na31e;
wire na32a;
wire na32b;
wire na32b_a25a;
wire na32b_a25b;
wire na32b_a32b;
assign na32b = na32b_a25a | na32b_a25b | na32b_a32b;
wire na33b;
wire na33d;
wire na33d_a26d;
wire na33d_a33d;
assign na33d = na33d_a26d & na33d_a33d;
wire na34b;
wire na34d;
wire na35a;

// 10-198
and a22a(na29b_a22a, X4, PCG2V, TLM, A8DV);
and a22b(na29b_a22b, na23a, LTRV, INFOV);
and a23a(na23a_a23a, TCWN, G3DV);
and a30a(na23a_a30a, Z6, G4DVN, PAAV);
and a29a(na29a, TAGR1);
and a29b(na29b_a29b, V1, na29a, TAGRR);
inv a29c(TAGR1N, na29b, SIM_CLK, SIM_RST);
inv #(0) a30c(TAGR1, na30b, SIM_CLK, SIM_RST);
and a30b(na30b, V1, TAGR1N);

and a17a(na24b_a17a, X4, TLM, A9DV, PCG2V);
and a17b(na17b_a17b, LTRV, G4DV, INFOV);
and a23b(na24b_a23b, na17b, TCWN);
and a31a(na17b_a31a, Z6, G5DVN, PAAV);
and a24a(na24a, TAGR2);
and a24b(na24b_a24b, V1, na24a, TAGRR);
inv a24c(TAGR2N, na24b, SIM_CLK, SIM_RST);
inv #(0) a31c(TAGR2, na31b, SIM_CLK, SIM_RST);
and a31b(na31b, V1, TAGR2N);

and a15a(na8b_a15a, X4, TLM, A3DV, PCG2V);
and a15b(na8b_a15b, na23c, LTRV, G6DVN);
and a23c(na23c_a23c, PAAV, TCWN);
and a16a(na23c_a16a, Z6, INFOV, G5DV);
and a8a(na8a, TAGR3);
and a8b(na8b_a8b, V1, na8a, TAGRR);
inv a8c(TAGR3N, na8b, SIM_CLK, SIM_RST);
inv #(0) a16c(TAGR3, na16b, SIM_CLK, SIM_RST);
and a16b(na16b, V1, TAGR3N);

and a25a(na32b_a25a, X4, TLM, A4DV, PCG2V);
and a25b(na32b_a25b, na26a, G6DV, INFOV);
and a26a(na26a_a26a, LTRV, TCWN);
and a33a(na26a_a33a, Z6, G7DVN, PAAV);
and a32a(na32a, TAGR4);
and a32b(na32b_a32b, V1, na32a, TAGRR);
inv a32c(TAGR4N, na32b, SIM_CLK, SIM_RST);
inv #(0) a33c(TAGR4, na33b, SIM_CLK, SIM_RST);
and a33b(na33b, V1, TAGR4N);

and a20a(na27b_a20a, X4, TLM, A5DV, PCG2V);
and a20b(na20b_a20b, LTRV, G7DV, TCWN);
and a26b(na27b_a26b, na20b, INFOV);
and a34a(na20b_a34a, Z6, G1DV, PAAV);
and a27a(na27a, TAGR5);
and a27b(na27b_a27b, V1, na27a, TAGRR);
inv a27c(TAGR5N, na27b, SIM_CLK, SIM_RST);
inv #(0) a34c(TAGR5, na34b, SIM_CLK, SIM_RST);
and a34b(na34b, V1, TAGR5N);

and a18a(na11b_a18a, X4, TLM, A6DV, PCG2V);
and a18b(na11b_a18b, na26c, LTRV, G2DV);
and a26c(na26c_a26c, PAAV, TCWN);
and a19a(na26c_a19a, Z6, INFOV, G1DVN);
and a11a(na11a, TAGR6);
and a11b(na11b_a11b, V1, na11a, TAGRR);
inv a11c(TAGR6N, na11b, SIM_CLK, SIM_RST);
inv #(0) a19c(TAGR6, na19b, SIM_CLK, SIM_RST);
and a19b(na19b, V1, TAGR6N);

// 10-199
and a35a(na35a, PBAV, LTRV, G5DVN);
and a28a(na28a, V1, na35a, G4DV);
inv a28b(TAGRR, na28a, SIM_CLK, SIM_RST);

and a12a(na5b_a12a, X4, TLM, A7DV, PCG2V);
and a12b(na12b_a12b, Z6, LTRV, INFOV, G3DV);
and a13a(na12b_a13a, PAAV, TCWN);
and a6a(na5b_a6a, na12b, G2DVN);
and a5a(na5a, TAGR7);
and a5b(na5b_a5b, V1, na5a, TAGRR);
inv a5c(TAGR7N, na5b, SIM_CLK, SIM_RST);
inv #(0) a6c(TAGR7, na6b, SIM_CLK, SIM_RST);
and a6b(na6b, V1, TAGR7N);

and a13b(na21b_a13b, X4, na14a);
and a14a(na14a, PCG2V, TLM);
and a21a(na21a, TAGR8);
and a21b(na21b_a21b, V1, na21a, TAGRR);
inv a21c(TAGR8N, na21b, SIM_CLK, SIM_RST);
inv #(0) a14c(TAGR8, na14b, SIM_CLK, SIM_RST);
and a14b(na14b, V1, TAGR8N);

// 10-196
and a22c(na29e_a22c, W4, PCG2V, A1DV, TLM);
and a22d(na29e_a22d, na23d, G4DV, INFOV);
and a23d(na23d_a23d, TCWN, LTRV);
and a30d(na23d_a30d, Y6, G3DVN, PAAV);
and a29d(na29d, RTR1);
and a29e(na29e_a29e, V1, na29d, RTRR);
inv a29f(RTR1N, na29e, SIM_CLK, SIM_RST);
inv #(0) a30f(RTR1, na30e, SIM_CLK, SIM_RST);
and a30e(na30e, V1, RTR1N);

and a17c(na24e_a17c, W4, MODR1, PCG2V, TLM);
and a17d(na17d_a17d, LTRV, TCWN, INFOV);
and a23e(na24e_a23e, na17d, G4DVN);
and a31d(na17d_a31d, Y6, PAAV, G5DV);
and a24d(na24d, RTR2);
and a24e(na24e_a24e, V1, na24d, RTRR);
inv a24f(RTR2N, na24e, SIM_CLK, SIM_RST);
inv #(0) a31f(RTR2, na31e, SIM_CLK, SIM_RST);
and a31e(na31e, V1, RTR2N);

and a15c(na8e_a15c, W4, MODR2, PCG2V, TLM);
and a15d(na8e_a15d, na23f, LTRV, G6DV);
and a23f(na23f_a23f, TCWN, PAAV);
and a16d(na23f_a16d, Y6, INFOV, G5DVN);
and a8d(na8d, RTR3);
and a8e(na8e_a8e, V1, na8d, RTRR);
inv a8f(RTR3N, na8e, SIM_CLK, SIM_RST);
inv #(0) a16f(RTR3, na16e, SIM_CLK, SIM_RST);
and a16e(na16e, V1, RTR3N);

and a32d(na25d_a32d, W4, MODR3, PCG2V, TLM);
and a32e(na25d_a32e, Y6, na33d, INFOV, G7DV);
and a33d(na33d_a33d, PAAV, G6DVN);
and a26d(na33d_a26d, TCWN, LTRV);
and a25c(na25c, RTR4);
and a25d(na25d_a25d, V1, na25c, RTRR);
inv a25e(RTR4N, na25d, SIM_CLK, SIM_RST);
inv #(0) a26f(RTR4, na26e, SIM_CLK, SIM_RST);
and a26e(na26e, V1, RTR4N);

// 10-197
and a34d(na34d, Y6, LTRV, TCWN, INFOV);
and a34e(na27e_a34e, na34d, PAAV, G7DVN, G1DVN);
and a35b(na27e_a35b, Y6, na27d, G1DV, TLM, PCAVN);
and a27d(na27d, G2DVN, PBAV);
and a27e(na27e_a27e, V1, RTR5);
inv a27f(RTR5N, na27e, SIM_CLK, SIM_RST);
inv #(0) a28d(RTR5, na28c, SIM_CLK, SIM_RST);
and a28c(na28c_a28c, V1, RTR5N);
and a21d(na28c_a21d, na21e, PAAV);
and a21e(na21e_a21e, TLM);
and a21f(na21e_a21f, Y6, G3DV, G4DVN);
and a35c(na28c_a35c, Z4, LTRV, TCWN, PBG2V);

and a20c(na20c, V1, na20d, LTRV);
and a20d(na20d_a20d, G4DV, PBAV);
and a28e(na20d_a28e, G5DVN);
inv a20e(RTRR, na20c, SIM_CLK, SIM_RST);

and a18c(na18c, V1, na18d, PAAV);
and a18d(na18d, G2DVN, G5DV);
inv #(0) a18e(ADI, na18c, SIM_CLK, SIM_RST);

and a19d(na19d, V1, na19e, PBAV);
and a19e(na19e, G1DV, G6DVN);
inv #(0) a19f(BDI, na19d, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
