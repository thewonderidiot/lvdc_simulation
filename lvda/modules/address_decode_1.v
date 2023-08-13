`timescale 1ns/1ps
`default_nettype none

module address_decode_1(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire V1,
    input wire V4,
    input wire A1V,
    input wire A1DV,
    input wire A1DVN,
    input wire A2V,
    input wire A2DV,
    input wire A2DVN,
    input wire A3V,
    input wire A3DVN,
    input wire A4V,
    input wire A4DVN,
    input wire A5V,
    input wire A5DVN,
    input wire A6V,
    input wire A6DV,
    input wire A6DVN,
    input wire A7V,
    input wire A7DV,
    input wire A7DVN,
    input wire A8V,
    input wire A8DV,
    input wire A8DVN,
    input wire A9V,
    input wire ADV,
    input wire ADVN,
    input wire AI3V,
    input wire DINFV,
    input wire DINFVN,
    input wire DOMD,
    input wire DOMDN,
    input wire G1DVN,
    input wire G2DVN,
    input wire G3DV,
    input wire G3DVN,
    input wire G4DVN,
    input wire G5DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire G7DVN,
    input wire ICR9,
    input wire LTRDN,
    input wire PAAV,
    input wire PABG1V,
    input wire PARSV,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAV,
    input wire PCAVN,
    input wire PIOV,
    input wire PIODV,
    input wire RESMV,
    input wire SINT,
    input wire TCWN,
    input wire TRSV,
    input wire W7,
    input wire X3,
    input wire Y3,
    input wire Z7,

    output wire A1D,
    output wire A1DN,
    output wire A2D,
    output wire A2DN,
    output wire A3D,
    output wire A3DN,
    output wire A4D,
    output wire A4DN,
    output wire A5D,
    output wire A5DN,
    output wire A6D,
    output wire A6DN,
    output wire A7D,
    output wire A7DN,
    output wire A8D,
    output wire A8DN,
    output wire A9D,
    output wire CODG,
    output wire CODGN,
    output wire DAINF,
    output wire DARO,
    output wire DINF,
    output wire DINFN,
    output wire INFO,
    output wire LTR,
    output wire MLA,
    output wire OCR,
    output wire PARS,
    output wire PCINF,
    output wire PIOD,
    output wire TLM
);

wire A9DN;
wire DAINFN;
wire DARON;
wire INFLA;
wire INFLAN;
wire INFON;
wire LTRN;
wire MLAN;
wire OCRN;
wire PCINFN;
wire PIODN;
wire TLMN;

wire na1a;
wire na1a_a1a;
wire na1a_a1b;
assign na1a = na1a_a1a | na1a_a1b;
wire na1d;
wire na2a;
wire na2b;
wire na2b_a2b;
wire na2b_a9a;
wire na2b_a32a;
assign na2b = na2b_a2b | na2b_a9a | na2b_a32a;
wire na2d;
wire na2e;
wire na2e_a1e;
wire na2e_a1f;
wire na2e_a2e;
assign na2e = na2e_a1e | na2e_a1f | na2e_a2e;
wire na3a;
wire na3a_a3a;
wire na3a_a3b;
assign na3a = na3a_a3a | na3a_a3b;
wire na3d;
wire na3d_a3d;
wire na3d_a3e;
wire na3d_a4e;
assign na3d = na3d_a3d | na3d_a3e | na3d_a4e;
wire na4a;
wire na4b;
wire na4b_a4b;
wire na4b_a11a;
assign na4b = na4b_a4b | na4b_a11a;
wire na4d;
wire na4f;
wire na5a;
wire na5b;
wire na5e;
wire na5e_a5e;
wire na5e_a11d;
assign na5e = na5e_a5e & na5e_a11d;
wire na6a;
wire na6b;
wire na6e;
wire na7a;
wire na7b;
wire na7b_a7b;
wire na7b_a14a;
assign na7b = na7b_a7b | na7b_a14a;
wire na7d;
wire na7e;
wire na7e_a6d;
wire na7e_a7e;
assign na7e = na7e_a6d | na7e_a7e;
wire na8a;
wire na8b;
wire na8b_a8b;
wire na8b_a9b;
wire na8b_a32b;
assign na8b = na8b_a8b | na8b_a9b | na8b_a32b;
wire na9e;
wire na9f;
wire na10a;
wire na10b;
wire na10b_a10b;
wire na10b_a11b;
assign na10b = na10b_a10b | na10b_a11b;
wire na10d;
wire na10d_a10d;
wire na10d_a10e;
assign na10d = na10d_a10d | na10d_a10e;
wire na11e;
wire na11e_a11e;
wire na11e_a11f;
assign na11e = na11e_a11e & na11e_a11f;
wire na12a;
wire na12a_a12a;
wire na12a_a12b;
assign na12a = na12a_a12a | na12a_a12b;
wire na12d;
wire na12d_a5d;
wire na12d_a12d;
wire na12d_a19d;
wire na12d_a19e;
assign na12d = na12d_a5d | na12d_a12d | na12d_a19d | na12d_a19e;
wire na12e;
wire na13a;
wire na13b;
wire na13b_a13b;
wire na13b_a14b;
assign na13b = na13b_a13b | na13b_a14b;
wire na13d;
wire na13d_a13d;
wire na13d_a13e;
assign na13d = na13d_a13d | na13d_a13e;
wire na15a;
wire na15b;
wire na15d;
wire na15d_a8d;
wire na15d_a8e;
wire na15d_a15d;
assign na15d = na15d_a8d | na15d_a8e | na15d_a15d;
wire na15f;
wire na16a;
wire na16b;
wire na16b_a9c;
wire na16b_a16b;
assign na16b = na16b_a9c | na16b_a16b;
wire na16e;
wire na17a;
wire na17b;
wire na18a;
wire na18b;
wire na18b_a11c;
wire na18b_a18b;
assign na18b = na18b_a11c | na18b_a18b;
wire na18e;
wire na18e_a17d;
wire na18e_a17e;
wire na18e_a18e;
assign na18e = na18e_a17d | na18e_a17e | na18e_a18e;
wire na19a;
wire na19b;
wire na20a;
wire na20b;
wire na21a;
wire na21b;
wire na21b_a14c;
wire na21b_a21b;
assign na21b = na21b_a14c | na21b_a21b;
wire na22a;
wire na22a_a22a;
wire na22a_a22b;
assign na22a = na22a_a22a | na22a_a22b;
wire na22d;
wire na22d_a9d;
wire na22d_a22d;
wire na22d_a29d;
wire na22d_a29e;
assign na22d = na22d_a9d | na22d_a22d | na22d_a29d | na22d_a29e;
wire na23a;
wire na23b;
wire na23d;
wire na23d_a16d;
wire na23d_a22f;
wire na23d_a23d;
assign na23d = na23d_a16d | na23d_a22f | na23d_a23d;
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a | na24a_a24b;
wire na24e;
wire na24e_a24e;
wire na24e_a25d;
assign na24e = na24e_a24e & na24e_a25d;
wire na24f;
wire na24f_a18d;
wire na24f_a24f;
assign na24f = na24f_a18d | na24f_a24f;
wire na25a;
wire na25c;
wire na25e;
wire na25e_a24d;
wire na25e_a25e;
assign na25e = na25e_a24d | na25e_a25e;
wire na26b;
wire na26b_a25b;
wire na26b_a26a;
wire na26b_a26b;
assign na26b = na26b_a25b | na26b_a26a | na26b_a26b;
wire na27b;
wire na27b_a27a;
wire na27b_a27b;
assign na27b = na27b_a27a | na27b_a27b;
wire na27d;
wire na27d_a27d;
wire na27d_a28e;
assign na27d = na27d_a27d | na27d_a28e;
wire na27e;
wire na28a;
wire na28a_a28a;
wire na28a_a28b;
assign na28a = na28a_a28a | na28a_a28b;
wire na28d;
wire na28d_a28d;
wire na28d_a34a;
wire na28d_a35e;
assign na28d = na28d_a28d | na28d_a34a | na28d_a35e;
wire na29b;
wire na29b_a29a;
wire na29b_a29b;
assign na29b = na29b_a29a | na29b_a29b;
wire na30a;
wire na31b;
wire na31b_a31a;
wire na31b_a31b;
assign na31b = na31b_a31a | na31b_a31b;
wire na30b;
wire na30d;
wire na30d_a23c;
wire na30d_a30d;
assign na30d = na30d_a23c | na30d_a30d;
wire na31d;
wire na31d_a30c;
wire na31d_a31d;
wire na31d_a31e;
assign na31d = na31d_a30c & na31d_a31d & na31d_a31e;
wire na32c;
wire na32d;
wire na33a;
wire na33a_a33a;
wire na33a_a33b;
assign na33a = na33a_a33a | na33a_a33b;
wire na34b;
wire na34b_a34b;
wire na34b_a35d;
assign na34b = na34b_a34b & na34b_a35d;
wire na35a;
wire na35b;

// 10-18
and a9a(na2b_a9a, Y3, na2a, PIODV);
and a2a(na2a, A1V);
and a32a(na2b_a32a, W7, PAAV, G6DV, ADVN);
and a2b(na2b_a2b, V4, A1D);
inv a2c(A1DN, na2b, SIM_CLK, SIM_RST);
inv #(0) a3c(A1D, na3a, SIM_CLK, SIM_RST);
and a3a(na3a_a3a, V4, A1DN);
and a3b(na3a_a3b, X3, na23a, PAAV);
and a23a(na23a, G6DVN, G1DVN, ADV);

and a9b(na8b_a9b, Y3, na8a, A2V);
and a8a(na8a, PIODV);
and a32b(na8b_a32b, X3, PAAV, G6DV, ADVN);
and a8b(na8b_a8b, V4, A2D);
inv a8c(A2DN, na8b, SIM_CLK, SIM_RST);
inv #(0) a1c(A2D, na1a, SIM_CLK, SIM_RST);
and a1a(na1a_a1a, V4, A2DN);
and a1b(na1a_a1b, X3, na23b, X3, PAAV);
and a23b(na23b, G6DVN, G1DVN, ADV);

and a9c(na16b_a9c, Y3, na16a, PIODV);
and a16a(na16a, A3V);
and a15a(na15a, PARSV);
and a16b(na16b_a16b, V4, na15a, A3D);
inv a16c(A3DN, na16b, SIM_CLK, SIM_RST);
inv #(0) a15c(A3D, na15b, SIM_CLK, SIM_RST);
and a15b(na15b, V4, A3DN);

and a11a(na4b_a11a, Y3, na4a, PIODV);
and a4a(na4a, A4V);
and a5a(na5a, PARSV);
and a4b(na4b_a4b, V4, na5a, A4D);
inv a4c(A4DN, na4b, SIM_CLK, SIM_RST);
inv #(0) a5c(A4D, na5b, SIM_CLK, SIM_RST);
and a5b(na5b, V4, A4DN);

and a11b(na10b_a11b, Y3, na10a, A5V);
and a10a(na10a, PIODV);
and a17a(na17a, PARSV);
and a10b(na10b_a10b, V4, na17a, A5D);
inv a10c(A5DN, na10b, SIM_CLK, SIM_RST);
inv #(0) a17c(A5D, na17b, SIM_CLK, SIM_RST);
and a17b(na17b, V4, A5DN);

and a11c(na18b_a11c, Y3, na18a, PIODV);
and a18a(na18a, A6V);
and a19a(na19a, PARSV);
and a18b(na18b_a18b, V4, na19a, A6D);
inv a18c(A6DN, na18b, SIM_CLK, SIM_RST);
inv #(0) a19c(A6D, na19b, SIM_CLK, SIM_RST);
and a19b(na19b, V4, A6DN);

and a14a(na7b_a14a, Y3, na7a, PIODV);
and a7a(na7a, A7V);
and a6a(na6a, PARSV);
and a7b(na7b_a7b, V4, na6a, A7D);
inv a7c(A7DN, na7b, SIM_CLK, SIM_RST);
inv #(0) a6c(A7D, na6b, SIM_CLK, SIM_RST);
and a6b(na6b, V4, A7DN);

and a14b(na13b_a14b, Y3, na13a, A8V);
and a13a(na13a, PIODV);
and a13b(na13b_a13b, V4, A8D);
inv a13c(A8DN, na13b, SIM_CLK, SIM_RST);
inv #(0) a12c(A8D, na12a, SIM_CLK, SIM_RST);
and a12a(na12a_a12a, V4, A8DN);
and a12b(na12a_a12b, Y3, PABG1V);

and a14c(na21b_a14c, Y3, na21a, PIODV);
and a21a(na21a, A9V);
and a20a(na20a, PARSV);
and a21b(na21b_a21b, V4, na20a, A9D);
inv a21c(A9DN, na21b, SIM_CLK, SIM_RST);
inv #(0) a20c(A9D, na20b, SIM_CLK, SIM_RST);
and a20b(na20b, V4, A9DN);

// 10-19
and a30a(na30a, W7, ADV, PAAV, G6DVN, G1DVN);
and a29a(na29b_a29a, na30a, PIOV);
and a29b(na29b_a29b, V1, PIOD);
inv a29c(PIODN, na29b, SIM_CLK, SIM_RST);
inv #(0) a22c(PIOD, na22a, SIM_CLK, SIM_RST);
and a22a(na22a_a22a, V4, PIODN);
and a22b(na22a_a22b, X3, ADVN);

and a35a(na35a, PAAV, G6DV);
and a35b(na35b, V4, na35a, G3DVN);
inv #(0) a35c(PARS, na35b, SIM_CLK, SIM_RST);

and a25a(na25a, W7, AI3V);
and a25b(na26b_a25b, na25a, A8DVN);
and a25c(na25c, W7, TRSV);
and a26a(na26b_a26a, na25c, A8DV);
and a26b(na26b_a26b, V1, DAINF);
inv a26c(DAINFN, na26b, SIM_CLK, SIM_RST);
inv #(0) a33c(DAINF, na33a, SIM_CLK, SIM_RST);
and a33a(na33a_a33a, V1, DAINFN);
and a33b(na33a_a33b, Z7);

and a27a(na27b_a27a, Y3, DAINF);
and a27b(na27b_a27b, V4, DINF);
inv a27c(DINFN, na27b, SIM_CLK, SIM_RST);
inv #(0) a28c(DINF, na28a, SIM_CLK, SIM_RST);
and a28a(na28a_a28a, V4, DINFN);
and a28b(na28a_a28b, Y3, DAINFN);

and a30b(na30b, W7, A8DVN, ADVN, A1DV, A2DV);
and a31a(na31b_a31a, na30b, PIODV);
and a31b(na31b_a31b, V1, DARO);
inv a31c(DARON, na31b, SIM_CLK, SIM_RST);
inv #(0) a24c(DARO, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, DARON);
and a24b(na24a_a24b, Z7);

// 10-32
and a1d(na1d, W7, INFLA);
and a1e(na2e_a1e, na1d, DOMD);
and a1f(na2e_a1f, W7, na2d);
and a2d(na2d, INFLAN, DINFV);
and a2e(na2e_a2e, V1, INFO);
inv a2f(INFON, na2e, SIM_CLK, SIM_RST);
inv #(0) a3f(INFO, na3d, SIM_CLK, SIM_RST);
and a3d(na3d_a3d, V4, INFON);
and a3e(na3d_a3e, W7, na4d, INFLAN);
and a4d(na4d, DINFVN);
and a4e(na3d_a4e, W7, na4f, INFLA);
and a4f(na4f, DOMDN);

and a8d(na15d_a8d, W7, DOMD, INFLA, PCAV);
and a8e(na15d_a8e, W7, DINFV, PCAV, INFLAN);
and a15d(na15d_a15d, V1, PCINF);
inv a15e(PCINFN, na15d, SIM_CLK, SIM_RST);
inv #(0) a22e(PCINF, na22d, SIM_CLK, SIM_RST);
and a22d(na22d_a22d, V4, PCINFN);
and a29d(na22d_a29d, W7, DINFVN, PCAV, INFLAN);
and a29e(na22d_a29e, W7, DOMDN, INFLA, PCAV);
and a9d(na22d_a9d, W7, na9e, PAAV);
and a9e(na9e, RESMV);

and a5d(na12d_a5d, Z7, na5e, A6DVN, PBG2V, A7DV);
and a5e(na5e_a5e, A8DVN, A3DVN, A2DV, A1DV);
and a11d(na5e_a11d, A5DVN, A4DVN);
and a19d(na12d_a19d, W7, na11e, A2DV, ADVN, PIODV);
and a11e(na11e_a11e, A1DV, A8DVN);
and a11f(na11e_a11f, A6DV);
and a19e(na12d_a19e, Z7, PCAV, G1DVN, G7DVN);
and a12d(na12d_a12d, V1, MLA);
inv a12f(MLAN, na12d, SIM_CLK, SIM_RST);
inv #(0) a13f(MLA, na13d, SIM_CLK, SIM_RST);
and a13d(na13d_a13d, V4, MLAN);
and a12e(na12e, W7, PAAV);
and a13e(na13d_a13e, na12e, RESMV);

and a9f(na9f, V1);
and a6d(na7e_a6d, V1, na9f, TLM);
and a7d(na7d, A2DV);
and a7e(na7e_a7e, V1, na7d, A1DVN);
inv #(0) a7f(INFLA, na7e, SIM_CLK, SIM_RST);
and a6e(na6e, V1, INFLA);
inv a6f(INFLAN, na6e, SIM_CLK, SIM_RST);

and a31d(na31d_a31d, Y3, A1DVN, A2DV, A3DVN, A4DVN);
and a31e(na31d_a31e, A5DVN, A6DV, G4DVN, G3DV);
and a30c(na31d_a30c, PAAV);
and a23c(na30d_a23c, na31d, A7DVN);
and a30d(na30d_a30d, V1, OCR);
inv a30e(OCRN, na30d, SIM_CLK, SIM_RST);
inv #(0) a23e(OCR, na23d, SIM_CLK, SIM_RST);
and a23d(na23d_a23d, V1, OCRN);
and a15f(na15f, Z7, SINT);
and a16d(na23d_a16d, na15f, PCAV, G5DVN, G6DV);
and a22f(na23d_a22f, V1, ICR9);

and a34a(na28d_a34a, W7, na34b, A7DVN, A5DVN, A6DV);
and a34b(na34b_a34b, A4DVN, A1DVN, ADVN, PIODV);
and a35d(na34b_a35d, A3DVN, A2DV);
and a35e(na28d_a35e, W7, PIODV, A2DVN, ADVN);
and a28d(na28d_a28d, V1, TLM);
inv a28f(TLMN, na28d, SIM_CLK, SIM_RST);
inv #(0) a27f(TLM, na27d, SIM_CLK, SIM_RST);
and a27d(na27d_a27d, V1, TLMN);
and a28e(na27d_a28e, Z7, na27e, PAAV);
and a27e(na27e, G3DV, G2DVN);

// 10-33
and a24d(na25e_a24d, na24e, A2DV);
and a24e(na24e_a24e, W7, PIODV, ADVN);
and a25d(na24e_a25d, A1DV, A8DV);
and a32c(na32c, PARSV);
and a25e(na25e_a25e, V1, na32c, CODG);
inv a25f(CODGN, na25e, SIM_CLK, SIM_RST);
inv #(0) a32e(CODG, na32d, SIM_CLK, SIM_RST);
and a32d(na32d, V4, CODGN);

and a17d(na18e_a17d, W7, PBAV, RESMV, TLM);
and a17e(na18e_a17e, Z7, na24f, PCAVN, PBAV, TCWN);
and a24f(na24f_a24f, LTRDN);
and a18d(na24f_a18d, RESMV, INFLA);
and a18e(na18e_a18e, V1, LTR);
inv a18f(LTRN, na18e, SIM_CLK, SIM_RST);
inv #(0) a10f(LTR, na10d, SIM_CLK, SIM_RST);
and a10d(na10d_a10d, V4, LTRN);
and a16e(na16e, X3, G7DVN, G2DVN, ADVN, PCAVN);
and a10e(na10d_a10e, na16e, PAAV);

endmodule
`default_nettype wire
