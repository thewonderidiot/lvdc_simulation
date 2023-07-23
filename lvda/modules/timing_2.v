`timescale 1ns/1ps
`default_nettype none

module timing_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,
    input wire V4,

    input wire ADV,
    input wire ADVN,
    input wire CCFHV,
    input wire CCFHVN,
    input wire G1DV,
    input wire G1DVN,
    input wire G2DV,
    input wire G2DVN,
    input wire G3DV,
    input wire G3DVN,
    input wire G4DV,
    input wire G4DVN,
    input wire G5VN,
    input wire G5DV,
    input wire G5DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire G7DV,
    input wire G7DVN,
    input wire PAAV,
    input wire PAAVN,
    input wire PBVN,
    input wire PBAV,
    input wire PBAVN,
    input wire PCAV,
    input wire PCAVN,
    input wire PCG2V,
    input wire RECAV,
    input wire RECAVN,
    input wire RECCV,
    input wire RECCVN,
    input wire RESMV,
    input wire REXCV,
    input wire REXCVN,
    input wire W3,
    input wire X3,
    input wire Y3,
    input wire Z1,

    output wire AD,
    output wire ADN,
    output wire CCFH,
    output wire CCFHN,
    output wire G1D,
    output wire G1DN,
    output wire G2D,
    output wire G2DN,
    output wire G3D,
    output wire G3DN,
    output wire G4D,
    output wire G4DN,
    output wire G5D,
    output wire G5DN,
    output wire G6D,
    output wire G6DN,
    output wire G7D,
    output wire G7DN,
    output wire PAA,
    output wire PABG1,
    output wire PBA,
    output wire PBAN,
    output wire PBG2,
    output wire PCA,
    output wire PCAN,
    output wire PCG2,
    output wire RECA,
    output wire RECAN,
    output wire RECC,
    output wire RECCN,
    output wire RESM,
    output wire REXC,
    output wire REXCN
);

wire ABD;
wire ABDN;
wire CCFHC;
wire CCFHCN;
wire G5GC;
wire PAAN;
wire PABG1N;
wire PBG2N;
wire PBGC;
wire PCG2N;
wire RECB;
wire RECBN;
wire RESMN;
wire REXCC;
wire REXCCN;

wire na1a;
wire na1a_a1a;
wire na1a_a8b;
assign na1a = na1a_a1a | na1a_a8b;
wire na1b;
wire na1e;
wire na1e_a1d;
wire na1e_a1e;
assign na1e = na1e_a1d | na1e_a1e;
wire na2a;
wire na2a_a2a;
wire na2a_a3a;
assign na2a = na2a_a2a | na2a_a3a;
wire na2b;
wire na2d;
wire na2d_a2d;
wire na2d_a2e;
assign na2d = na2d_a2d | na2d_a2e;
wire na3b;
wire na3e;
wire na3e_a3d;
wire na3e_a3e;
assign na3e = na3e_a3d | na3e_a3e;
wire na4a;
wire na4a_a4a;
wire na4a_a4b;
assign na4a = na4a_a4a | na4a_a4b;
wire na5b;
wire na5b_a5a;
wire na5b_a5b;
assign na5b = na5b_a5a | na5b_a5b;
wire na5e;
wire na5e_a5d;
wire na5e_a5e;
assign na5e = na5e_a5d | na5e_a5e;
wire na6a;
wire na6a_a6a;
wire na6a_a6b;
assign na6a = na6a_a6a | na6a_a6b;
wire na7b;
wire na7b_a7a;
wire na7b_a7b;
assign na7b = na7b_a7a | na7b_a7b;
wire na8d;
wire na8d_a8d;
wire na8d_a8e;
assign na8d = na8d_a8d | na8d_a8e;
wire na9a;
wire na9b;
wire na9b_a8c;
wire na9b_a9b;
assign na9b = na9b_a8c | na9b_a9b;
wire na9d;
wire na9d_a9d;
wire na9d_a9e;
assign na9d = na9d_a9d | na9d_a9e;
wire na10b;
wire na10b_a10a;
wire na10b_a10b;
assign na10b = na10b_a10a | na10b_a10b;
wire na10d;
wire na11a;
wire na11a_a3c;
wire na11a_a11a;
assign na11a = na11a_a3c | na11a_a11a;
wire na11b;
wire na11d;
wire na11e;
wire na11f;
wire na12a;
wire na12a_a12a;
wire na12a_a13a;
assign na12a = na12a_a12a | na12a_a13a;
wire na12b;
wire na12d;
wire na12d_a12d;
wire na12d_a12e;
assign na12d = na12d_a12d | na12d_a12e;
wire na13b;
wire na13d;
wire na13d_a13d;
wire na13d_a13e;
assign na13d = na13d_a13d | na13d_a13e;
wire na14a;
wire na14a_a13c;
wire na14a_a14a;
assign na14a = na14a_a13c | na14a_a14a;
wire na14b;
wire na14d;
wire na14d_a14d;
wire na14d_a14e;
assign na14d = na14d_a14d | na14d_a14e;
wire na15a;
wire na15b;
wire na15b_a8a;
wire na15b_a15b;
assign na15b = na15b_a8a | na15b_a15b;
wire na15e;
wire na15e_a15d;
wire na15e_a15e;
assign na15e = na15e_a15d | na15e_a15e;
wire na16b;
wire na16b_a16a;
wire na16b_a16b;
wire na16b_a23a;
assign na16b = na16b_a16a | na16b_a16b | na16b_a23a;
wire na16e;
wire na16e_a16d;
wire na16e_a16e;
assign na16e = na16e_a16d | na16e_a16e;
wire na17a;
wire na17a_a17a;
wire na17a_a17b;
assign na17a = na17a_a17a | na17a_a17b;
wire na17e;
wire na17e_a17e;
wire na17e_a24e;
assign na17e = na17e_a17e | na17e_a24e;
wire na18b;
wire na18b_a17d;
wire na18b_a18a;
wire na18b_a18b;
assign na18b = na18b_a17d | na18b_a18a | na18b_a18b;
wire na19b;
wire na19b_a19a;
wire na19b_a19b;
assign na19b = na19b_a19a | na19b_a19b;
wire na19e;
wire na19e_a19d;
wire na19e_a19e;
assign na19e = na19e_a19d | na19e_a19e;
wire na20a;
wire na20a_a20a;
wire na20a_a20b;
assign na20a = na20a_a20a | na20a_a20b;
wire na20d;
wire na20e;
wire na20f;
wire na21a;
wire na21a_a21a;
wire na21a_a28e;
assign na21a = na21a_a21a | na21a_a28e;
wire na22a;
wire na22a_a22a;
wire na22a_a22b;
assign na22a = na22a_a22a | na22a_a22b;
wire na22d;
wire na22e;
wire na22f;
wire na23c;
wire na24a;
wire na24b;
wire na24b_a23b;
wire na24b_a24b;
assign na24b = na24b_a23b | na24b_a24b;
wire na24d;
wire na25a;
wire na25a_a25a;
wire na25a_a25b;
wire na25a_a32b;
assign na25a = na25a_a25a | na25a_a25b | na25a_a32b;
wire na25d;
wire na25e;
wire na25f;
wire na26a;
wire na26b;
wire na26d;
wire na26d_a26d;
wire na26d_a26e;
wire na26d_a33e;
assign na26d = na26d_a26d | na26d_a26e | na26d_a33e;
wire na27a;
wire na27b;
wire na27b_a27b;
wire na27b_a34a;
assign na27b = na27b_a27b | na27b_a34a;
wire na27d;
wire na27e;
wire na27e_a27e;
wire na27e_a33d;
assign na27e = na27e_a27e | na27e_a33d;
wire na28a;
wire na28a_a28a;
wire na28a_a28b;
assign na28a = na28a_a28a | na28a_a28b;
wire na29a;
wire na29a_a29a;
wire na29a_a30a;
assign na29a = na29a_a29a | na29a_a30a;
wire na29c;
wire na30b;
wire na30d;
wire na30d_a30c;
wire na30d_a30d;
assign na30d = na30d_a30c | na30d_a30d;
wire na31a;
wire na31a_a31a;
wire na31a_a31b;
assign na31a = na31a_a31a | na31a_a31b;
wire na31d;
wire na31d_a31d;
wire na31d_a31e;
wire na31d_a23d;
assign na31d = na31d_a31d | na31d_a31e | na31d_a23d;
wire na32c;
wire na33b;
wire na33b_a32a;
wire na33b_a33a;
wire na33b_a33b;
assign na33b = na33b_a32a | na33b_a33a | na33b_a33b;
wire na34c;
wire na34c_a34c;
wire na34c_a35f;
assign na34c = na34c_a34c | na34c_a35f;
wire na34d;
wire na35a;
wire na35b;
wire na35b_a34b;
wire na35b_a35b;
assign na35b = na35b_a34b | na35b_a35b;
wire na35d;
wire na35d_a28d;
wire na35d_a35d;
assign na35d = na35d_a28d | na35d_a35d;

// 10-8
and a30a(na29a_a30a, W3, na30b, G2DVN, G3DVN, G4DVN);
and a30b(na30b, G5DVN, G6DVN, G7DVN, ADVN);
and a29a(na29a_a29a, V4, G1D);
inv a29b(G1DN, na29a, SIM_CLK, SIM_RST);
inv #(0) a22c(G1D, na22a, SIM_CLK, SIM_RST);
and a22a(na22a_a22a, V4, G1DN);
and a22b(na22a_a22b, W3, na29c, G7DV);
and a29c(na29c, ADV);

and a8a(na15b_a8a, W3, na15a);
and a15a(na15a, G1DV, ADV);
and a15b(na15b_a15b, V4, G2D);
inv a15c(G2DN, na15b, SIM_CLK, SIM_RST);
inv #(0) a1c(G2D, na1a, SIM_CLK, SIM_RST);
and a1a(na1a_a1a, V4, G2DN);
and a8b(na1a_a8b, W3, na1b, G1DVN);
and a1b(na1b, ADVN);

and a23a(na16b_a23a, Z1, G5GC, G6DVN);
and a16a(na16b_a16a, Y3, ABDN);
and a16b(na16b_a16b, V4, AD);
inv a16c(ADN, na16b, SIM_CLK, SIM_RST);
inv #(0) a17c(AD, na17a, SIM_CLK, SIM_RST);
and a17a(na17a_a17a, V4, ADN);
and a17b(na17a_a17b, Y3, ABD);

and a8c(na9b_a8c, W3, na9a);
and a9a(na9a, G2DV, ADVN);
and a9b(na9b_a9b, V4, G3D);
inv a9c(G3DN, na9b, SIM_CLK, SIM_RST);
inv #(0) a2c(G3D, na2a, SIM_CLK, SIM_RST);
and a2a(na2a_a2a, V4, G3DN);
and a3a(na2a_a3a, W3, na2b, G2DVN);
and a2b(na2b, ADV);

and a3b(na3b, W3, G3DV);
and a10a(na10b_a10a, na3b, ADV);
and a10b(na10b_a10b, V4, G4D);
inv a10c(G4DN, na10b, SIM_CLK, SIM_RST);
inv #(0) a11c(G4D, na11a, SIM_CLK, SIM_RST);
and a11a(na11a_a11a, V4, G4DN);
and a3c(na11a_a3c, W3, na11b, G3DVN);
and a11b(na11b, ADVN);

and a34a(na27b_a34a, Y3, na27a, PAAVN, PCAV, G2DVN);
and a27a(na27a, G1DV);
and a27b(na27b_a27b, V1, PCG2);
inv a27c(PCG2N, na27b, SIM_CLK, SIM_RST);
inv #(0) a20c(PCG2, na20a, SIM_CLK, SIM_RST);
and a20a(na20a_a20a, V4, PCG2N);
and a20b(na20a_a20b, Y3, na24a, G2DV);
and a24a(na24a, Y3);

and a33a(na33b_a33a, Y3, G5GC);
and a32a(na33b_a32a, W3, G4DV, ADVN);
and a33b(na33b_a33b, V4, G5D);
inv a33c(G5DN, na33b, SIM_CLK, SIM_RST);
inv #(0) a25c(G5D, na25a, SIM_CLK, SIM_RST);
and a25a(na25a_a25a, V4, G5DN);
and a32b(na25a_a32b, W3, G4DVN, ADV);
and a25b(na25a_a25b, Y3, G5VN);

and a26a(na26a, W3, ADV);
and a19a(na19b_a19a, na26a, G5DV);
and a19b(na19b_a19b, V4, G6D);
inv a19c(G6DN, na19b, SIM_CLK, SIM_RST);
inv #(0) a12c(G6D, na12a, SIM_CLK, SIM_RST);
and a12a(na12a_a12a, V4, G6DN);
and a13a(na12a_a13a, W3, na12b, G5DVN);
and a12b(na12b, ADVN);

and a34b(na35b_a34b, W3, na35a, PCAV, G2DVN, G7DVN);
and a35a(na35a, ADVN, PBAVN);
and a35b(na35b_a35b, V1, PABG1);
inv a35c(PABG1N, na35b, SIM_CLK, SIM_RST);
inv #(0) a28c(PABG1, na28a, SIM_CLK, SIM_RST);
and a28a(na28a_a28a, V4, PABG1N);
and a28b(na28a_a28b, W3, ADV);

// 10-9
and a13b(na13b, W3, ADVN);
and a7a(na7b_a7a, na13b, G6DV);
and a7b(na7b_a7b, V4, G7D);
inv a7c(G7DN, na7b, SIM_CLK, SIM_RST);
inv #(0) a14c(G7D, na14a, SIM_CLK, SIM_RST);
and a14a(na14a_a14a, V4, G7DN);
and a13c(na14a_a13c, W3, na14b, G6DVN);
and a14b(na14b, ADV);

and a5a(na5b_a5a, X3, ADV);
and a5b(na5b_a5b, V1, ABD);
inv a5c(ABDN, na5b, SIM_CLK, SIM_RST);
inv #(0) a6c(ABD, na6a, SIM_CLK, SIM_RST);
and a6a(na6a_a6a, V1, ABDN);
and a6b(na6a_a6b, X3, ADVN);

and a23b(na24b_a23b, X3, ADVN, G7DVN, G2DVN);
and a24b(na24b_a24b, V1, RESM);
inv a24c(RESMN, na24b, SIM_CLK, SIM_RST);
inv #(0) a31c(RESM, na31a, SIM_CLK, SIM_RST);
and a31a(na31a_a31a, V4, RESMN);
and a31b(na31a_a31b, X3, ADV);

and a26b(na26b, V1, G5VN);
inv #(0) a26c(G5GC, na26b, SIM_CLK, SIM_RST);

// 10-10
and a23c(na23c, W3, PBAVN, PCAV, G7DVN, G2DVN);
and a30c(na30d_a30c, na23c, ADVN);
and a30d(na30d_a30d, V4, PAA);
inv #(0) a30e(PAAN, na30d, SIM_CLK, SIM_RST);
inv a31f(PAA, na31d, SIM_CLK, SIM_RST);
and a31d(na31d_a31d, V4, PAAN);
and a31e(na31d_a31e, na25d);
and a25d(na25d, Y3, G2DV, PBGC);
and a23d(na31d_a23d, Y3, PBAV, PCAVN, G1DV);

and a1d(na1e_a1d, Y3, REXCVN);
and a1e(na1e_a1e, V1, REXCC);
inv a1f(REXCCN, na1e, SIM_CLK, SIM_RST);
inv a2f(REXCC, na2d, SIM_CLK, SIM_RST);
and a2d(na2d_a2d, V1, REXCCN);
and a2e(na2d_a2e, Y3, REXCV);

and a22d(na22d, RECCV);
and a16d(na16e_a16d, X3, na22d, CCFHC);
and a16e(na16e_a16e, V4, CCFH);
inv a16f(CCFHN, na16e, SIM_CLK, SIM_RST);
inv #(0) a9f(CCFH, na9d, SIM_CLK, SIM_RST);
and a9d(na9d_a9d, V4, CCFHN);
and a9e(na9d_a9e, X3, na10d, CCFHCN);
and a10d(na10d, RECCV);

and a24d(na24d, W3, PAAV, PCAVN, G7DVN, G2DVN);
and a18a(na18b_a18a, na24d, ADVN);
and a17d(na18b_a17d, na25e, G2DV);
and a25e(na25e, Y3, PBGC);
and a18b(na18b_a18b, V4, PBA);
inv a18c(PBAN, na18b, SIM_CLK, SIM_RST);
inv #(0) a17f(PBA, na17e, SIM_CLK, SIM_RST);
and a17e(na17e_a17e, V4, PBAN);
and a24e(na17e_a24e, Y3, PAAVN, PCAV, G1DV);

and a11d(na11d, PCG2V);
and a3d(na3e_a3d, W3, na11d, REXCCN);
and a3e(na3e_a3e, V4, REXCN);
inv a3f(REXC, na3e, SIM_CLK, SIM_RST);
inv #(0) a4c(REXCN, na4a, SIM_CLK, SIM_RST);
and a4a(na4a_a4a, V4, REXC);
and a4b(na4a_a4b, W3, na11e, REXCC);
and a11e(na11e, PCG2V);

and a20d(na20d, REXCV);
and a19d(na19e_a19d, Z1, na20d, RECB);
and a19e(na19e_a19e, V4, RECC);
inv a19f(RECCN, na19e, SIM_CLK, SIM_RST);
inv #(0) a13f(RECC, na13d, SIM_CLK, SIM_RST);
and a13d(na13d_a13d, V4, RECCN);
and a13e(na13d_a13e, Z1, na20e, RECBN);
and a20e(na20e, REXCVN);

and a33d(na27e_a33d, W3, na27d, G7DVN, G2DVN, ADVN);
and a27d(na27d, PAAVN);
and a27e(na27e_a27e, V4, PCA);
inv a27f(PCAN, na27e, SIM_CLK, SIM_RST);
inv #(0) a26f(PCA, na26d, SIM_CLK, SIM_RST);
and a26d(na26d_a26d, V4, PCAN);
and a33e(na26d_a33e, Y3, PAAV, G1DV);
and a26e(na26d_a26e, na25f);
and a25f(na25f, Y3, G2DV, PBGC);

and a32c(na32c, V1, PBVN);
inv #(0) a32d(PBGC, na32c, SIM_CLK, SIM_RST);

and a28d(na35d_a28d, Z1, REXCV, RECBN, RECCVN);
and a35d(na35d_a35d, V4, RECA);
inv a35e(RECAN, na35d, SIM_CLK, SIM_RST);
inv #(0) a34e(RECA, na34c, SIM_CLK, SIM_RST);
and a34c(na34c_a34c, V4, RECAN);
and a35f(na34c_a35f, Z1, na34d, REXCVN);
and a34d(na34d, RECCV);

and a28e(na21a_a28e, W3, PBAV, RESMV);
and a21a(na21a_a21a, V1, PBG2);
inv a21b(PBG2N, na21a, SIM_CLK, SIM_RST);
inv #(0) a14f(PBG2, na14d, SIM_CLK, SIM_RST);
and a14d(na14d_a14d, V4, PBG2N);
and a14e(na14d_a14e, W3, ADVN);

// 10-11
and a22e(na22e, RECCVN);
and a15d(na15e_a15d, X3, na22e, CCFHVN);
and a15e(na15e_a15e, V1, CCFHC);
inv a15f(CCFHCN, na15e, SIM_CLK, SIM_RST);
inv #(0) a8f(CCFHC, na8d, SIM_CLK, SIM_RST);
and a8d(na8d_a8d, V1, CCFHCN);
and a8e(na8d_a8e, X3, na22f, CCFHV);
and a22f(na22f, RECCVN);

and a11f(na11f, Z1, REXCVN);
and a5d(na5e_a5d, na11f, RECAV);
and a5e(na5e_a5e, V1, RECB);
inv a5f(RECBN, na5e, SIM_CLK, SIM_RST);
inv #(0) a12f(RECB, na12d, SIM_CLK, SIM_RST);
and a12d(na12d_a12d, V1, RECBN);
and a12e(na12d_a12e, Z1, na20f, REXCV);
and a20f(na20f, RECAVN);

endmodule
`default_nettype wire
