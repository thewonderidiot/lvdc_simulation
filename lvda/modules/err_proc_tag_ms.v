`timescale 1ns/1ps
`default_nettype none

module err_proc_tag_ms(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire A1DV,
    input wire A1DVN,
    input wire A2DV,
    input wire A2DVN,
    input wire A3CR,
    input wire A3DV,
    input wire A4CR,
    input wire A4DV,
    input wire A5CR,
    input wire A5DV,
    input wire A6CR,
    input wire A6DV,
    input wire A7CR,
    input wire A7DV,
    input wire A8DV,
    input wire A9DV,
    input wire ADV,
    input wire ADVN,
    input wire BRR1,
    input wire CODGV,
    input wire CODGN,
    input wire EMA,
    input wire EMRG1,
    input wire EMRG2,
    input wire EMRG3,
    input wire EMRG4,
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
    input wire ML5,
    input wire ML6,
    input wire ML7,
    input wire ML8,
    input wire ML9,
    input wire MODR1,
    input wire MODR2,
    input wire MODR3,
    input wire PAAV,
    input wire PAAVN,
    input wire PBAV,
    input wire PCAV,
    input wire PCAVN,
    input wire RESMV,
    input wire TCWN,
    input wire TLM,
    input wire W4,
    input wire W6,
    input wire X6,
    input wire Y4,
    input wire Y8,
    input wire Z4,
    input wire Z6,

    output wire ETCC,
    output wire ETCCN,
    output wire ETCR,
    output wire ETCRN,
    output wire ETTS,
    output wire ETTSN,
    output wire TAGS
);

wire DPBR;
wire DPBRN;
wire DTPB;
wire DTPBN;
wire ECSA;
wire ECSAN;
wire ECSB;
wire ECSBN;
wire ERRS;
wire ERRSN;
wire ETSD;
wire ETSDN;
wire PBR;
wire PBRN;
wire TG1N;
wire TG2N;
wire TPB;
wire TPBN;

wire na2a;
wire na2b;
wire na2c;
wire na4a;
wire na4b;
wire na4c;
wire na7a;
wire na7b;
wire na7c;
wire na8a;
wire na10a;
wire na10a_a10a;
wire na10a_a10b;
assign na10a = na10a_a10a | na10a_a10b;
wire na11a;
wire na11a_a11a;
wire na11a_a11b;
assign na11a = na11a_a11a | na11a_a11b;
wire na11e;
wire na13a;
wire na13a_a13a;
wire na13a_a13b;
assign na13a = na13a_a13a | na13a_a13b;
wire na13d;
wire na13e;
wire na13e_a5a;
wire na13e_a5b;
wire na13e_a6a;
wire na13e_a6b;
wire na13e_a11d;
wire na13e_a12a;
wire na13e_a12b;
wire na13e_a13e;
wire na13e_a14d;
wire na13e_a14e;
wire na13e_a18e;
wire na13e_a19e;
wire na13e_a20d;
assign na13e = na13e_a5a | na13e_a5b | na13e_a6a | na13e_a6b | na13e_a11d | na13e_a12a | na13e_a12b | na13e_a13e | na13e_a14d | na13e_a14e | na13e_a18e | na13e_a19e | na13e_a20d;
wire na14a;
wire na14a_a14a;
wire na14a_a14b;
assign na14a = na14a_a14a | na14a_a14b;
wire na15b;
wire na15c;
wire na16a;
wire na16a_a9a;
wire na16a_a16a;
assign na16a = na16a_a9a | na16a_a16a;
wire na16b;
wire na16c;
wire na16d;
wire na16e;
wire na16e_a8b;
wire na16e_a9b;
wire na16e_a9c;
wire na16e_a10d;
wire na16e_a10e;
wire na16e_a15a;
wire na16e_a16e;
wire na16e_a22b;
wire na16e_a22c;
wire na16e_a23e;
wire na16e_a24d;
wire na16e_a24e;
wire na16e_a28e;
assign na16e = na16e_a8b | na16e_a9b | na16e_a9c | na16e_a10d | na16e_a10e | na16e_a15a | na16e_a16e | na16e_a22b | na16e_a22c | na16e_a23e | na16e_a24d | na16e_a24e | na16e_a28e;
wire na17b;
wire na17b_a17a;
wire na17b_a17b;
assign na17b = na17b_a17a | na17b_a17b;
wire na17d;
wire na17d_a17d;
wire na17d_a17e;
assign na17d = na17d_a17d | na17d_a17e;
wire na18b;
wire na18b_a18a;
wire na18b_a18b;
assign na18b = na18b_a18a | na18b_a18b;
wire na18d;
wire na18f;
wire na19a;
wire na19b;
wire na19b_a19b;
wire na19b_a26a;
wire na19b_a33b;
assign na19b = na19b_a19b | na19b_a26a | na19b_a33b;
wire na19d;
wire na20b;
wire na20b_a20a;
wire na20b_a20b;
assign na20b = na20b_a20a | na20b_a20b;
wire na20e;
wire na21a;
wire na21a_a21a;
wire na21a_a28a;
assign na21a = na21a_a21a | na21a_a28a;
wire na21b;
wire na21e;
wire na23a;
wire na23b;
wire na23b_a23b;
wire na23b_a29a;
wire na23b_a29b;
wire na23b_a30a;
assign na23b = na23b_a23b | na23b_a29a | na23b_a29b | na23b_a30a;
wire na23d;
wire na24b;
wire na24b_a24a;
wire na24b_a24b;
assign na24b = na24b_a24a | na24b_a24b;
wire na25b;
wire na25b_a25a;
wire na25b_a25b;
wire na25b_a26c;
wire na25b_a32a;
assign na25b = na25b_a25a | na25b_a25b | na25b_a26c | na25b_a32a;
wire na25d;
wire na25e;
wire na26b;
wire na26d;
wire na26d_a26d;
wire na26d_a32d;
wire na26d_a32e;
wire na26d_a33c;
wire na26d_a34d;
assign na26d = na26d_a26d | na26d_a32d | na26d_a32e | na26d_a33c | na26d_a34d;
wire na26e;
wire na27a;
wire na27a_a27a;
wire na27a_a27b;
assign na27a = na27a_a27a | na27a_a27b;
wire na27e;
wire na27e_a21d;
wire na27e_a27e;
wire na27e_a28c;
wire na27e_a35d;
assign na27e = na27e_a21d | na27e_a27e | na27e_a28c | na27e_a35d;
wire na28b;
wire na28d;
wire na29c;
wire na29d;
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
assign na31d = na31d_a31d | na31d_a31e;
wire na32b;
wire na33d;
wire na34a;
wire na34a_a33a;
wire na34a_a34a;
assign na34a = na34a_a33a | na34a_a34a;
wire na34b;
wire na34e;
wire na35b;
wire na35b_a35a;
wire na35b_a35b;
assign na35b = na35b_a35a | na35b_a35b;
wire na35e;
wire na35e_a27d;
wire na35e_a35e;
assign na35e = na35e_a27d & na35e_a35e;
wire na35f;

// 10-16
and a17a(na17b_a17a, X6, ERRSN);
and a17b(na17b_a17b, V1, ECSA);
inv a17c(ECSAN, na17b, SIM_CLK, SIM_RST);
inv #(0) a10c(ECSA, na10a, SIM_CLK, SIM_RST);
and a10a(na10a_a10a, V1, ECSAN);
and a10b(na10a_a10b, Z6, ERRSN);

and a18a(na18b_a18a, Y4, ERRSN);
and a18b(na18b_a18b, V1, ECSB);
inv a18c(ECSBN, na18b, SIM_CLK, SIM_RST);
inv #(0) a11c(ECSB, na11a, SIM_CLK, SIM_RST);
and a11a(na11a_a11a, V1, ECSBN);
and a11b(na11a_a11b, W6, ERRSN);

and a20a(na20b_a20a, W4, PBR);
and a20b(na20b_a20b, V1, DPBR);
inv a20c(DPBRN, na20b, SIM_CLK, SIM_RST);
inv #(0) a13c(DPBR, na13a, SIM_CLK, SIM_RST);
and a13a(na13a_a13a, V1, DPBRN);
and a13b(na13a_a13b, W4, PBRN);

and a29a(na23b_a29a, X6, ECSB, ERRS, ETSDN);
and a29b(na23b_a29b, W6, ECSA, ERRS, ETSDN);
and a30a(na23b_a30a, X6, na23a, ECSBN, ERRS, ETSDN);
and a23a(na23a, ECSAN);
and a23b(na23b_a23b, V1, ETTS);
inv a23c(ETTSN, na23b, SIM_CLK, SIM_RST);
hci #(0) a22a(ETTS, na16a, SIM_CLK, SIM_RST);
and a16a(na16a_a16a, V1, na16b, ETTSN);
and a16b(na16b, V1);
and a9a(na16a_a9a, X6, na16c);
and a16c(na16c, X6, ETSD);

and a24a(na24b_a24a, Y4, ETTS);
and a24b(na24b_a24b, V1, ETSD);
inv a24c(ETSDN, na24b, SIM_CLK, SIM_RST);
inv #(0) a31c(ETSD, na31a, SIM_CLK, SIM_RST);
and a31a(na31a_a31a, V1, ETSDN);
and a31b(na31a_a31b, Z6, na30b, EMA);
and a30b(na30b, G7DVN, G1DVN, PCAV);

and a35a(na35b_a35a, Y4, ETTS);
and a35b(na35b_a35b, V1, ETCC);
inv a35c(ETCCN, na35b, SIM_CLK, SIM_RST);
inv #(0) a34c(ETCC, na34a, SIM_CLK, SIM_RST);
and a34a(na34a_a34a, V1, ETCCN);
and a34b(na34b, X6, ETCR, G1DVN);
and a33a(na34a_a33a, na34b, PAAV, G6DVN, ADV);

// 10-17
and a28a(na21a_a28a, X6, na28b, G7DVN, ETCC, ADVN);
and a28b(na28b, G2DVN, PAAV, PCAVN);
and a21a(na21a_a21a, V1, ETCR);
inv a21c(ETCRN, na21a, SIM_CLK, SIM_RST);
inv #(0) a14c(ETCR, na14a, SIM_CLK, SIM_RST);
and a14a(na14a_a14a, V1, ETCRN);
and a14b(na14a_a14b, Y4, na21b, PAAV);
and a21b(na21b, Y4, G7DVN, G1DVN);

and a33b(na19b_a33b, Z4, PBAV, G4DV, G5DVN);
and a26a(na19b_a26a, Y8, na19a, INFOV);
and a19a(na19a, DPBR);
and a19b(na19b_a19b, V1, PBRN);
inv #(0) a19c(PBR, na19b, SIM_CLK, SIM_RST);
inv a27c(PBRN, na27a, SIM_CLK, SIM_RST);
and a27a(na27a_a27a, V1, PBR);
and a27b(na27a_a27b, Y8, na26b, DPBRN);
and a26b(na26b, INFOV);

and a26c(na25b_a26c, V1, EMRG1);
and a25a(na25b_a25a, V1, EMRG2);
and a25b(na25b_a25b, V1, EMRG3);
and a32a(na25b_a32a, V1, EMRG4);
inv a25c(ERRSN, na25b, SIM_CLK, SIM_RST);

and a32b(na32b, V1, ERRSN);
inv #(0) a32c(ERRS, na32b, SIM_CLK, SIM_RST);

// 10-130
and a30c(na30d_a30c, X6, TPB);
and a30d(na30d_a30d, V1, DTPB);
inv a30e(DTPBN, na30d, SIM_CLK, SIM_RST);
inv #(0) a31f(DTPB, na31d, SIM_CLK, SIM_RST);
and a31d(na31d_a31d, V1, DTPBN);
and a31e(na31d_a31e, X6, TPBN);

and a21d(na27e_a21d, Z4, na21e, G3DVN, G2DV, PAAV);
and a21e(na21e, PBRN, TLM, DTPBN);
and a28c(na27e_a28c, Y8, na28d, DTPBN, PCAV, G1DV);
and a28d(na28d, PAAVN, TAGS, TLM);
and a35d(na27e_a35d, Y8, na35e, TLM);
and a35e(na35e_a35e, PCAV, TAGS);
and a27d(na35e_a27d, G5DV, DTPBN);
and a27e(na27e_a27e, V1, TPB);
inv #(0) a27f(TPBN, na27e, SIM_CLK, SIM_RST);
inv a26f(TPB, na26d, SIM_CLK, SIM_RST);
and a26d(na26d_a26d, V1, na26e, TPBN);
and a26e(na26e, BRR1);
and a35f(na35f, Y8, TAGS, G5DV);
and a34d(na26d_a34d, na35f, PCAV, DTPB, TLM);
and a34e(na34e, Y8, TLM, TAGS, G1DV);
and a33c(na26d_a33c, na34e, PAAVN, DTPB, PCAV);
and a33d(na33d, Z4, G3DVN, PBRN, PAAV);
and a32d(na26d_a32d, na33d, G2DV, TLM, DTPB);
and a32e(na26d_a32e, Z4, na25d, LTRV, TCWN);
and a25d(na25d, PAAV, G7DVN, G1DVN, PBR);

// 10-131
and a20d(na13e_a20d, X6, na20e, ADVN, G2DVN, G7DVN);
and a20e(na20e, A2DV, A1DV);
and a14d(na13e_a14d, W6, A9DV, A2DVN, RESMV);
and a14e(na13e_a14e, W6, na7a, A1DV, G2DV, ADV);
and a7a(na7a, A2DVN, G7DV);
and a6a(na13e_a6a, W6, na7b, MODR1, A2DVN, G1DVN);
and a7b(na7b, G3DV, ADVN);
and a6b(na13e_a6b, X6, na7c, G4DV, A2DVN, MODR2);
and a7c(na7c, ADV, G2DVN);
and a5a(na13e_a5a, X6, na4a, ADVN, A2DVN, G3DVN);
and a4a(na4a, G5DV, MODR3);
and a4b(na4b, W6, ML5, G7DV);
and a5b(na13e_a5b, na4b, ADV, A2DV, G2DV);
and a4c(na4c, X6, G1DVN, ML6);
and a12a(na13e_a12a, na4c, G3DV, ADVN, A2DV);
and a18d(na18d, W6, A2DV, ADV);
and a12b(na13e_a12b, na18d, G4DV, G2DVN, ML7);
and a18e(na13e_a18e, X6, na19d, ML8);
and a19d(na19d, G3DVN, ADVN, A2DV, G5DV);
and a13d(na13d, X6, G6DV, ML9);
and a19e(na13e_a19e, na13d, G4DVN, ADV, A2DV);
and a13e(na13e_a13e, V1, TAGS);
and a11d(na13e_a11d, W6, na11e, CODGV, ADV, G1DV);
and a11e(na11e, G3DVN);
inv a13f(TG2N, na13e, SIM_CLK, SIM_RST);

and a22b(na16e_a22b, W6, A1DVN, A2DV, RESMV);
and a22c(na16e_a22c, X6, na29c, G4DVN, G2DV, ADVN);
and a29c(na29c, CODGN, A3DV);
and a23d(na23d, CODGV, G4DVN, G2DV, ADVN);
and a28e(na16e_a28e, W6, na23d, A3CR);
and a23e(na16e_a23e, X6, na29d, G5DVN, ADV, G3DV);
and a29d(na29d, CODGN, A4DV);
and a8a(na8a, G3DV, G5DVN, ADV, A4CR);
and a15a(na16e_a15a, W6, na8a, CODGV);
and a15b(na15b, X6, ADVN, CODGN);
and a8b(na16e_a8b, na15b, G4DV, G6DVN, A5DV);
and a15c(na15c, X6, CODGV, ADVN);
and a9b(na16e_a9b, na15c, G6DVN, G4DV, A5CR);
and a9c(na16e_a9c, X6, na2a, ADV, CODGN, G5DV);
and a2a(na2a, G7DVN, A6DV);
and a2b(na2b, X6, A6CR, G7DVN);
and a10d(na16e_a10d, na2b, G5DV, CODGV, ADV);
and a10e(na16e_a10e, W6, na2c, CODGN, G1DV, G6DV);
and a2c(na2c, ADVN, A7DV);
and a18f(na18f, W6, G1DV, G6DV);
and a24d(na16e_a24d, na18f, CODGV, ADVN, A7CR);
and a24e(na16e_a24e, W6, na16d, A8DV, G2DVN, ADVN);
and a16d(na16d, G7DVN, A2DVN);
and a16e(na16e_a16e, V1, TAGS);
inv a16f(TG1N, na16e, SIM_CLK, SIM_RST);
inv #(0) a17f(TAGS, na17d, SIM_CLK, SIM_RST);
and a17d(na17d_a17d, V1, na25e, TG1N);
and a25e(na25e, TG2N);
and a17e(na17d_a17e, Z6);

endmodule
`default_nettype wire
