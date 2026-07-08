`timescale 1ns/1ps
`default_nettype none

module id_sampler_4(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire ADV,
    input wire ADVN,
    input wire C1GT1,
    input wire C1GT2,
    input wire C1GT3,
    input wire C2GT1,
    input wire C2GT2,
    input wire C2GT3,
    input wire C3GT1,
    input wire C3GT2,
    input wire C3GT3,
    input wire C4GT1,
    input wire C4GT2,
    input wire C4GT3,
    input wire CES13,
    input wire CES14,
    input wire CODE,
    input wire DC3R,
    input wire DC4R,
    input wire DDC1R,
    input wire DDC2R,
    input wire DM2B,
    input wire DM3A,
    input wire DM3B,
    input wire DM4A,
    input wire DM4B,
    input wire DM5A,
    input wire DM5B,
    input wire DM6A,
    input wire DM6B,
    input wire DM7A,
    input wire DM7B,
    input wire DM8A,
    input wire DM9A,
    input wire DM10A,
    input wire DM11A,
    input wire DM12A,
    input wire DM13A,
    input wire DM14A,
    input wire DO1,
    input wire EM13N,
    input wire EM14N,
    input wire EMA,
    input wire ETCCN,
    input wire ETCR,
    input wire ETCRN,
    input wire ETTS,
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
    input wire ICRV,
    input wire ICR1N,
    input wire PAAVN,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAV,
    input wire PCG2V,
    input wire RESMV,
    input wire SS13,
    input wire SSDO,
    input wire W8,
    input wire X8,
    input wire Y6,
    input wire Z2,
    input wire Z5,
    input wire Z7,
    input wire Z8,

    output wire DCALN,
    output wire DOMC1,
    output wire DOMC1N,
    output wire DOMC2,
    output wire DOMC2N,
    output wire DOMD,
    output wire DOMDN,
    output wire DOMS,
    output wire DSD
);

wire DCAL;
wire DDC1;
wire DDC1N;
wire DDC2;
wire DDC2N;
wire DM1_2;
wire DM1_2N;
wire DM8B;
wire DM8BN;
wire DO1N;
wire DSAN;
wire DSBN;
wire DSDN;
wire SS13N;

wire na2a;
wire na2a_a2a;
wire na2a_a2b;
assign na2a = na2a_a2a | na2a_a2b;
wire na3b;
wire na3b_a3a;
wire na3b_a3b;
assign na3b = na3b_a3a | na3b_a3b;
wire na4b;
wire na5a;
wire na5c;
wire na6b;
wire na6b_a6a;
wire na6b_a6b;
assign na6b = na6b_a6a | na6b_a6b;
wire na9b;
wire na10b;
wire na10c;
wire na11a;
wire na11b;
wire na11b_a4a;
wire na11b_a5b;
wire na11b_a11b;
wire na11b_a12a;
wire na11b_a12b;
assign na11b = na11b_a4a | na11b_a5b | na11b_a11b | na11b_a12a | na11b_a12b;
wire na12c;
wire na12d;
wire na13a;
wire na13a_a13a;
wire na13a_a13b;
assign na13a = na13a_a13a | na13a_a13b;
wire na14b;
wire na14b_a14a;
wire na14b_a14b;
assign na14b = na14b_a14a | na14b_a14b;
wire na14d;
wire na14d_a14d;
wire na14d_a21e;
assign na14d = na14d_a14d | na14d_a21e;
wire na14e;
wire na15c;
wire na15c_a15c;
wire na15c_a15d;
assign na15c = na15c_a15c | na15c_a15d;
wire na16b;
wire na16b_a8a;
wire na16b_a8b;
wire na16b_a9a;
wire na16b_a15a;
wire na16b_a15b;
wire na16b_a16a;
wire na16b_a16b;
wire na16b_a23a;
wire na16b_a23b;
assign na16b = na16b_a8a | na16b_a8b | na16b_a9a | na16b_a15a | na16b_a15b | na16b_a16a | na16b_a16b | na16b_a23a | na16b_a23b;
wire na16e;
wire na16f;
wire na17a;
wire na17a_a10a;
wire na17a_a17a;
wire na17a_a17b;
assign na17a = na17a_a10a | na17a_a17a | na17a_a17b;
wire na17e;
wire na18a;
wire na18a_a18a;
wire na18a_a18b;
assign na18a = na18a_a18a | na18a_a18b;
wire na19a;
wire na19a_a19a;
wire na19a_a19b;
assign na19a = na19a_a19a | na19a_a19b;
wire na19d;
wire na19e;
wire na19f;
wire na20a;
wire na20a_a20a;
wire na20a_a20b;
assign na20a = na20a_a20a | na20a_a20b;
wire na20e;
wire na20f;
wire na21a;
wire na21b;
wire na21c;
wire na21d;
wire na21d_a13d;
wire na21d_a13e;
wire na21d_a20d;
wire na21d_a21d;
wire na21d_a27d;
wire na21d_a27e;
wire na21d_a28d;
wire na21d_a28e;
assign na21d = na21d_a13d | na21d_a13e | na21d_a20d | na21d_a21d | na21d_a27d | na21d_a27e | na21d_a28d | na21d_a28e;
wire na22c;
wire na23d;
wire na23d_a9c;
wire na23d_a9d;
wire na23d_a16d;
wire na23d_a17d;
wire na23d_a22a;
wire na23d_a22b;
wire na23d_a23c;
wire na23d_a23d;
wire na23d_a30a;
wire na23d_a31a;
wire na23d_a31b;
assign na23d = na23d_a9c | na23d_a9d | na23d_a16d | na23d_a17d | na23d_a22a | na23d_a22b | na23d_a23c | na23d_a23d | na23d_a30a | na23d_a31a | na23d_a31b;
wire na24b;
wire na25c;
wire na25d;
wire na25d_a18d;
wire na25d_a18e;
wire na25d_a24a;
wire na25d_a25d;
wire na25d_a26d;
wire na25d_a26e;
wire na25d_a32a;
wire na25d_a32b;
assign na25d = na25d_a18d | na25d_a18e | na25d_a24a | na25d_a25d | na25d_a26d | na25d_a26e | na25d_a32a | na25d_a32b;
wire na26a;
wire na26a_a25a;
wire na26a_a25b;
wire na26a_a26a;
wire na26a_a33a;
wire na26a_a33b;
assign na26a = na26a_a25a | na26a_a25b | na26a_a26a | na26a_a33a | na26a_a33b;
wire na27a;
wire na27b;
wire na27b_a26c;
wire na27b_a27b;
assign na27b = na27b_a26c | na27b_a27b;
wire na28a;
wire na28a_a28a;
wire na28a_a28b;
assign na28a = na28a_a28a | na28a_a28b;
wire na29a;
wire na29b;
wire na30b;
wire na30c;
wire na33c;
wire na33d;
wire na33e;
wire na34b;
wire na34b_a34a;
wire na34b_a34b;
assign na34b = na34b_a34a | na34b_a34b;
wire na34d;
wire na34e;
wire na34f;
wire na35a;
wire na35a_a35a;
wire na35a_a35b;
assign na35a = na35a_a35a | na35a_a35b;


// 10-188
and a15a(na16b_a15a, Z2, PBG2V, EM13N, EMA);
and a15b(na16b_a15b, W8, EMA, EM14N, PCG2V);
and a9a(na16b_a9a, Z2, ETTS, G5DVN);
and a9b(na9b, W8, PCG2V, ETCCN, ICRV, ICR1N);
and a16a(na16b_a16a, na9b);
and a23a(na16b_a23a, Z8, SSDO, PBG2V, SS13N);
and a23b(na16b_a23b, W8, SSDO, PCG2V, DO1N);
and a8a(na16b_a8a, Z2, CODE, PBG2V, CES13);
and a8b(na16b_a8b, W8, CODE, CES14, PCG2V);
and a16b(na16b_a16b, V1, DM1_2N);
inv #(0) a16c(DM1_2, na16b, SIM_CLK, SIM_RST);
inv a17c(DM1_2N, na17a, SIM_CLK, SIM_RST);
and a17a(na17a_a17a, V1, DM1_2);
and a10a(na17a_a10a, Z2, na10b, RESMV);
and a10b(na10b, ETCCN);
and a17b(na17a_a17b, Y6, ETTS);

and a4a(na11b_a4a, Z8, na5a, DDC1R, C1GT2, C1GT1);
and a5a(na5a, DOMC2N, DOMC1);
and a4b(na4b, Z8, DOMC2, DDC2R, C2GT2, C2GT1);
and a5b(na11b_a5b, na4b, DOMC1N);
and a12a(na11b_a12a, Z5, na5c, DC3R, DOMC1, DOMC2);
and a5c(na5c, C3GT2, C3GT1);
and a12b(na11b_a12b, Z5, na11a, C4GT1, DOMC1N, DOMC2N);
and a11a(na11a, C4GT2, DC4R);
and a11b(na11b_a11b, V1, DOMD);
inv a11c(DOMDN, na11b, SIM_CLK, SIM_RST);
inv #(0) a18c(DOMD, na18a, SIM_CLK, SIM_RST);
and a18a(na18a_a18a, V1, DOMDN);
and a18b(na18a_a18b, X8);

and a10c(na10c, Z2, PCAV);
and a3a(na3b_a3a, na10c, ETTS);
and a3b(na3b_a3b, V1, DM8B);
inv a3c(DM8BN, na3b, SIM_CLK, SIM_RST);
inv #(0) a2c(DM8B, na2a, SIM_CLK, SIM_RST);
and a2a(na2a_a2a, V1, DM8BN);
and a2b(na2a_a2b, Y6, ETTS);

and a33a(na26a_a33a, Z7, C3GT3, DOMC1, DOMC2);
and a33b(na26a_a33b, Z7, DOMC1N, DOMC2, C2GT3);
and a25a(na26a_a25a, Z7, DOMC2N, C1GT3, DOMC1);
and a25b(na26a_a25b, Z7, DOMC1N, DOMC2N, C4GT3);
and a26a(na26a_a26a, V1, DCAL);
inv a26b(DCALN, na26a, SIM_CLK, SIM_RST);
inv #(0) a19c(DCAL, na19a, SIM_CLK, SIM_RST);
and a19a(na19a_a19a, V1, DCALN);
and a19b(na19a_a19b, Y6);

// 10-189
and a34a(na34b_a34a, Y6, DOMC1N);
and a34b(na34b_a34b, V1, DDC1N);
inv #(0) a34c(DDC1, na34b, SIM_CLK, SIM_RST);
inv a35c(DDC1N, na35a, SIM_CLK, SIM_RST);
and a35a(na35a_a35a, V1, DDC1);
and a35b(na35a_a35b, Y6, DOMC1);

and a26c(na27b_a26c, W8, na27a);
and a27a(na27a, DCAL, DDC1);
and a27b(na27b_a27b, V1, DOMC1N);
inv #(0) a27c(DOMC1, na27b, SIM_CLK, SIM_RST);
inv a28c(DOMC1N, na28a, SIM_CLK, SIM_RST);
and a28a(na28a_a28a, V1, DOMC1);
and a28b(na28a_a28b, W8, na21a, DDC1N);
and a21a(na21a, DCAL);

and a6a(na6b_a6a, Y6, DOMC2N);
and a6b(na6b_a6b, V1, DDC2N);
inv #(0) a6c(DDC2, na6b, SIM_CLK, SIM_RST);
inv a13c(DDC2N, na13a, SIM_CLK, SIM_RST);
and a13a(na13a_a13a, V1, DDC2);
and a13b(na13a_a13b, Y6, DOMC2);

and a21b(na21b, X8, DOMC1N, DCAL);
and a14a(na14b_a14a, na21b, DDC2);
and a14b(na14b_a14b, V1, DOMC2N);
inv #(0) a14c(DOMC2, na14b, SIM_CLK, SIM_RST);
inv a20c(DOMC2N, na20a, SIM_CLK, SIM_RST);
and a20a(na20a_a20a, V1, DOMC2);
and a21c(na21c, DDC2N, DCAL);
and a20b(na20a_a20b, X8, na21c, DOMC1N);

dia dia1(SS13N, SS13, SIM_CLK, SIM_RST);
dia dia2(DO1N, DO1, SIM_CLK, SIM_RST);

// 10-88
and a32a(na25d_a32a, X8, na33c, DM9A, ADVN, G3DV);
and a33c(na33c, G1DVN);
and a32b(na25d_a32b, W8, na33d, G2DVN, G4DV, DM10A);
and a33d(na33d, ADV);
and a26d(na25d_a26d, W8, na33e, DM11A, G3DVN, ADVN);
and a33e(na33e, G5DV);
and a26e(na25d_a26e, W8, na19d, ADV, G4DVN, G6DV);
and a19d(na19d, DM12A);
and a18d(na25d_a18d, W8, na19e, DM13A, G5DVN, G7DV);
and a19e(na19e, ADVN);
and a18e(na25d_a18e, W8, na19f, DM14A, ADV, G1DVN);
and a19f(na19f, G6DVN);
and a24a(na25d_a24a, W8, na25c, G2DVN, G7DVN, ADVN);
and a25c(na25c, DM1_2);
and a25d(na25d_a25d, V1, DOMS);
inv a25e(DSBN, na25d, SIM_CLK, SIM_RST);

and a20d(na21d_a20d, X8, na20e, PCG2V);
and a20e(na20e, DM1_2);
and a28d(na21d_a28d, X8, na20f, DM3A, ADVN, G4DVN);
and a20f(na20f, G2DV);
and a28e(na21d_a28e, W8, na34d, ADV, G3DV, G5DVN);
and a34d(na34d, DM4A);
and a27d(na21d_a27d, X8, na34e, DM5A, G4DV, ADVN);
and a34e(na34e, G6DVN);
and a27e(na21d_a27e, X8, na34f, DM6A, G5DV, ADV);
and a34f(na34f, G7DVN);
and a13d(na21d_a13d, X8, na12c, ADVN, G6DV, G1DV);
and a12c(na12c, DM7A);
and a13e(na21d_a13e, X8, na12d, G7DV, G2DV, ADV);
and a12d(na12d, DM8A);
and a21d(na21d_a21d, V1, DOMS);
inv a21f(DSAN, na21d, SIM_CLK, SIM_RST);
inv #(0) a14f(DOMS, na14d, SIM_CLK, SIM_RST);
and a14d(na14d_a14d, V1, na14e, DSAN);
and a14e(na14e, DSBN);
and a21e(na14d_a21e, Z2);

// 10-89
and a29a(na29a, Z2, ETCR, DM4B, G4DV, PCAV);
and a22a(na23d_a22a, na29a, G5DVN);
and a22b(na23d_a22b, Y6, na22c, PBAV);
and a22c(na22c, DOMS);
and a29b(na29b, Z2, DM5B, G5DV, PCAV, ETCR);
and a30a(na23d_a30a, na29b, G6DVN);
and a31a(na23d_a31a, Y6, na30b, DOMS, G1DV, G2DVN);
and a30b(na30b, PAAVN, PCAV);
and a31b(na23d_a31b, Z2, na30c, PCAV, G6DV, G7DVN);
and a30c(na30c, ETCR, DM6B);
and a17d(na23d_a17d, Y6, ETCRN, PCAV, DOMS);
and a17e(na17e, Z2, ETCR, PCAV, G7DV, G1DV);
and a16d(na23d_a16d, na17e, DM7B);
and a9c(na23d_a9c, Y6, na16e, DM2B, G2DV, G3DVN);
and a16e(na16e, ETCR, PCAV);
and a9d(na23d_a9d, Z2, na16f, G1DVN, G2DV, DM8B);
and a16f(na16f, ETCR, PCAV);
and a24b(na24b, Y6, ETCR, PCAV, G3DV, G4DVN);
and a23c(na23d_a23c, na24b, DM3B);
and a23d(na23d_a23d, V1, DSD);
inv a23e(DSDN, na23d, SIM_CLK, SIM_RST);
inv #(0) a15e(DSD, na15c, SIM_CLK, SIM_RST);
and a15c(na15c_a15c, V1, DSDN);
and a15d(na15c_a15d, X8);

endmodule
`default_nettype wire
