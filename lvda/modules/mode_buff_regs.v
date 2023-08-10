`timescale 1ns/1ps
`default_nettype none

module mode_buff_regs(
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
    input wire LTRV,
    input wire MODA,
    input wire PAAV,
    input wire PAAVN,
    input wire PABG1V,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAV,
    input wire PCINFV,
    input wire Y4,
    input wire Y6,
    input wire Z4,

    output wire BRD5,
    output wire BRD6,
    output wire BRD11,
    output wire BRD12,
    output wire BRD13,
    output wire BRD14,
    output wire BRD15,
    output wire BRD16,
    output wire BRD17,
    output wire BRD18,
    output wire BRD19,
    output wire BRD20,
    output wire BRD21,
    output wire BRD22,
    output wire BRD23,
    output wire BRD24,
    output wire BRD25,
    output wire BRD26,
    output wire BRR1,
    output wire MODRR
);

wire BRD5N;
wire BRD6N;
wire BRD11N;
wire BRD12N;
wire BRD13N;
wire BRD14N;
wire BRD15N;
wire BRD16N;
wire BRD17N;
wire BRD18N;
wire BRD19N;
wire BRD20N;
wire BRD21N;
wire BRD22N;
wire BRD23N;
wire BRD24N;
wire BRD25N;
wire BRD26N;
wire BRR2;
wire MODR5;
wire MODR5N;
wire MODR6;
wire MODR6N;

wire na1a;
wire na1b;
wire na1b_a1b;
wire na1b_a9a;
assign na1b = na1b_a1b | na1b_a9a;
wire na1d;
wire na1e;
wire na1e_a1e;
wire na1e_a9b;
assign na1e = na1e_a1e | na1e_a9b;
wire na2a;
wire na2b;
wire na3b;
wire na4a;
wire na4b;
wire na4b_a3a;
wire na4b_a4b;
assign na4b = na4b_a3a | na4b_a4b;
wire na5a;
wire na6a;
wire na6b;
wire na8a;
wire na8b;
wire na8d;
wire na8e;
wire na10a;
wire na10b;
wire na10b_a9c;
wire na10b_a10b;
assign na10b = na10b_a9c | na10b_a10b;
wire na11a;
wire na11b;
wire na11b_a11b;
wire na11b_a18a;
assign na11b = na11b_a11b | na11b_a18a;
wire na11d;
wire na11e;
wire na11e_a11e;
wire na11e_a18c;
assign na11e = na11e_a11e | na11e_a18c;
wire na12a;
wire na12b;
wire na12b_a12b;
wire na12b_a18b;
assign na12b = na12b_a12b | na12b_a18b;
wire na12d;
wire na12e;
wire na12e_a12e;
wire na12e_a18d;
assign na12e = na12e_a12e | na12e_a18d;
wire na13a;
wire na13b;
wire na15a;
wire na15b;
wire na15d;
wire na15e;
wire na16a;
wire na16b;
wire na16b_a16b;
wire na16b_a22b;
assign na16b = na16b_a16b | na16b_a22b;
wire na16d;
wire na16e;
wire na16e_a16e;
wire na16e_a22d;
assign na16e = na16e_a16e | na16e_a22d;
wire na17a;
wire na17b;
wire na17d;
wire na17e;
wire na19a;
wire na19b;
wire na19d;
wire na19e;
wire na20a;
wire na20b;
wire na23a;
wire na23b;
wire na23b_a22a;
wire na23b_a23b;
assign na23b = na23b_a22a | na23b_a23b;
wire na23d;
wire na23e;
wire na23e_a22c;
wire na23e_a23e;
assign na23e = na23e_a22c | na23e_a23e;
wire na24a;
wire na24b;
wire na24d;
wire na24e;
wire na25a;
wire na25b;
wire na25d;
wire na25e;
wire na26a;
wire na26b;
wire na26b_a26b;
wire na26b_a27b;
assign na26b = na26b_a26b | na26b_a27b;
wire na26d;
wire na26e;
wire na26e_a26e;
wire na26e_a27d;
assign na26e = na26e_a26e | na26e_a27d;
wire na28a;
wire na28b;
wire na28b_a27a;
wire na28b_a28b;
assign na28b = na28b_a27a | na28b_a28b;
wire na28d;
wire na28e;
wire na28e_a27c;
wire na28e_a28e;
assign na28e = na28e_a27c | na28e_a28e;
wire na29a;
wire na29b;
wire na29d;
wire na29e;
wire na30a;
wire na30b;
wire na30b_a30b;
wire na30b_a31b;
assign na30b = na30b_a30b | na30b_a31b;
wire na30d;
wire na30e;
wire na30e_a30e;
wire na30e_a31d;
assign na30e = na30e_a30e | na30e_a31d;
wire na32a;
wire na32b;
wire na32b_a31a;
wire na32b_a32b;
assign na32b = na32b_a31a | na32b_a32b;
wire na32d;
wire na32e;
wire na32e_a31c;
wire na32e_a32e;
assign na32e = na32e_a31c | na32e_a32e;
wire na33a;
wire na33b;
wire na33d;
wire na33e;
wire na34a;
wire na35a;
wire na35c;

// 10-200
and a22a(na23b_a22a, Y4, na29a, G4DV, G5DVN, PCINFV);
and a29a(na29a, LTRV);
and a23a(na23a, BRR2);
and a23b(na23b_a23b, V1, na23a, BRD14);
inv a23c(BRD14N, na23b, SIM_CLK, SIM_RST);
inv #(0) a29c(BRD14, na29b, SIM_CLK, SIM_RST);
and a29b(na29b, V1, BRD14N);

and a22b(na16b_a22b, Y4, na15a, G6DV, G7DVN, PCINFV);
and a15a(na15a, LTRV);
and a16a(na16a, BRR2);
and a16b(na16b_a16b, V1, na16a, BRD16);
inv a16c(BRD16N, na16b, SIM_CLK, SIM_RST);
inv #(0) a15c(BRD16, na15b, SIM_CLK, SIM_RST);
and a15b(na15b, V1, BRD16N);

and a31a(na32b_a31a, Y4, na25a, G4DV, G3DVN, PCINFV);
and a25a(na25a, LTRV);
and a32a(na32a, BRR2);
and a32b(na32b_a32b, V1, na32a, BRD20);
inv a32c(BRD20N, na32b, SIM_CLK, SIM_RST);
inv #(0) a25c(BRD20, na25b, SIM_CLK, SIM_RST);
and a25b(na25b, V1, BRD20N);

and a31b(na30b_a31b, Y4, na24a, G7DV, G6DVN, PCINFV);
and a24a(na24a, LTRV);
and a30a(na30a, BRR2);
and a30b(na30b_a30b, V1, na30a, BRD23);
inv a30c(BRD23N, na30b, SIM_CLK, SIM_RST);
inv #(0) a24c(BRD23, na24b, SIM_CLK, SIM_RST);
and a24b(na24b, V1, BRD23N);

and a9a(na1b_a9a, Y4, na8a, G2DV, G1DVN, PCINFV);
and a8a(na8a, LTRV);
and a1a(na1a, BRR2);
and a1b(na1b_a1b, V1, na1a, BRD18);
inv a1c(BRD18N, na1b, SIM_CLK, SIM_RST);
inv #(0) a8c(BRD18, na8b, SIM_CLK, SIM_RST);
and a8b(na8b, V1, BRD18N);

and a18a(na11b_a18a, Z4, na17a, G3DVN, G4DV, PBAV);
and a17a(na17a, INFOV, LTRV);
and a11a(na11a, BRR1);
and a11b(na11b_a11b, V1, na11a, BRD6);
inv a11c(BRD6N, na11b, SIM_CLK, SIM_RST);
inv #(0) a17c(BRD6, na17b, SIM_CLK, SIM_RST);
and a17b(na17b, V1, BRD6N);

// 10-201
and a18b(na12b_a18b, Z4, na19a, G3DV, G4DVN, PCINFV);
and a19a(na19a, LTRV);
and a12a(na12a, BRR2);
and a12b(na12b_a12b, V1, na12a, BRD13);
inv a12c(BRD13N, na12b, SIM_CLK, SIM_RST);
inv #(0) a19c(BRD13, na19b, SIM_CLK, SIM_RST);
and a19b(na19b, V1, BRD13N);

and a27a(na28b_a27a, Y4, PABG1V, INFOV, LTRV);
and a28a(na28a, BRR2);
and a28b(na28b_a28b, V1, na28a, BRD25);
inv a28c(BRD25N, na28b, SIM_CLK, SIM_RST);
inv #(0) a35b(BRD25, na35a, SIM_CLK, SIM_RST);
and a35a(na35a, V1, BRD25N);

and a27b(na26b_a27b, Y6, na33a, MODA, G3DVN, PAAV);
and a33a(na33a, INFOV, G2DV);
and a26a(na26a, MODRR);
and a26b(na26b_a26b, V1, na26a, MODR6);
inv a26c(MODR6N, na26b, SIM_CLK, SIM_RST);
inv #(0) a33c(MODR6, na33b, SIM_CLK, SIM_RST);
and a33b(na33b, V1, MODR6N);

and a6a(na6a, V1, na6b, LTRV, G4DV);
and a6b(na6b, V1, G5DVN, PBAV);
hci #(0) a7a(BRR1, na6a, SIM_CLK, SIM_RST);

and a13a(na13a, MODA);
and a13b(na13b, V1, na13a, PBG2V);
inv #(0) a13c(MODRR, na13b, SIM_CLK, SIM_RST);

and a20a(na20a, V1, na20b, LTRV, G4DV);
and a20b(na20b, V1, G5DVN, PBAV);
hci #(0) a21a(BRR2, na20a, SIM_CLK, SIM_RST);

// 10-204
and a22c(na23e_a22c, Y4, na29d, G5DV, G6DVN, PCINFV);
and a29d(na29d, LTRV);
and a23d(na23d, BRR2);
and a23e(na23e_a23e, V1, na23d, BRD15);
inv a23f(BRD15N, na23e, SIM_CLK, SIM_RST);
inv #(0) a29f(BRD15, na29e, SIM_CLK, SIM_RST);
and a29e(na29e, V1, BRD15N);

and a22d(na16e_a22d, Y4, na15d, G1DV, G7DV, PCINFV);
and a15d(na15d, LTRV);
and a16d(na16d, BRR2);
and a16e(na16e_a16e, V1, na16d, BRD17);
inv a16f(BRD17N, na16e, SIM_CLK, SIM_RST);
inv #(0) a15f(BRD17, na15e, SIM_CLK, SIM_RST);
and a15e(na15e, V1, BRD17N);

and a31c(na32e_a31c, Y4, na25d, G6DV, G5DVN, PCINFV);
and a25d(na25d, LTRV);
and a32d(na32d, BRR2);
and a32e(na32e_a32e, V1, na32d, BRD22);
inv a32f(BRD22N, na32e, SIM_CLK, SIM_RST);
inv #(0) a25f(BRD22, na25e, SIM_CLK, SIM_RST);
and a25e(na25e, V1, BRD22N);

and a31d(na30e_a31d, Y4, na24d, G1DVN, G7DVN, PCINFV);
and a24d(na24d, LTRV);
and a30d(na30d, BRR2);
and a30e(na30e_a30e, V1, na30d, BRD24);
inv a30f(BRD24N, na30e, SIM_CLK, SIM_RST);
inv #(0) a24f(BRD24, na24e, SIM_CLK, SIM_RST);
and a24e(na24e, V1, BRD24N);

and a9b(na1e_a9b, Y4, na8d, G3DV, G2DVN, PCINFV);
and a8d(na8d, LTRV);
and a1d(na1d, BRR2);
and a1e(na1e_a1e, V1, na1d, BRD19);
inv a1f(BRD19N, na1e, SIM_CLK, SIM_RST);
inv #(0) a8f(BRD19, na8e, SIM_CLK, SIM_RST);
and a8e(na8e, V1, BRD19N);

and a9c(na10b_a9c, Y4, na2a, G5DV, G4DVN, PCINFV);
and a2a(na2a, LTRV);
and a10a(na10a, BRR2);
and a10b(na10b_a10b, V1, na10a, BRD21);
inv a10c(BRD21N, na10b, SIM_CLK, SIM_RST);
inv #(0) a2c(BRD21, na2b, SIM_CLK, SIM_RST);
and a2b(na2b, V1, BRD21N);

and a18c(na11e_a18c, Z4, na17d, G2DVN, G3DV, PBAV);
and a17d(na17d, INFOV, LTRV);
and a11d(na11d, BRR1);
and a11e(na11e_a11e, V1, na11d, BRD5);
inv a11f(BRD5N, na11e, SIM_CLK, SIM_RST);
inv #(0) a17f(BRD5, na17e, SIM_CLK, SIM_RST);
and a17e(na17e, V1, BRD5N);

and a3a(na4b_a3a, Z4, na3b, PAAVN, LTRV, G1DV);
and a3b(na3b, PCAV, INFOV, G2DVN);
and a4a(na4a, BRR1);
and a4b(na4b_a4b, V1, na4a, BRD11);
inv a4c(BRD11N, na4b, SIM_CLK, SIM_RST);
inv #(0) a5b(BRD11, na5a, SIM_CLK, SIM_RST);
and a5a(na5a, V1, BRD11N);

// 10-205
and a18d(na12e_a18d, Z4, na19d, G2DV, G3DVN, PCINFV);
and a19d(na19d, LTRV);
and a12d(na12d, BRR2);
and a12e(na12e_a12e, V1, na12d, BRD12);
inv a12f(BRD12N, na12e, SIM_CLK, SIM_RST);
inv #(0) a19f(BRD12, na19e, SIM_CLK, SIM_RST);
and a19e(na19e, V1, BRD12N);

and a27c(na28e_a27c, Y4, na34a, PAAV, INFOV, LTRV);
and a34a(na34a, G2DV, G3DVN);
and a28d(na28d, BRR2);
and a28e(na28e_a28e, V1, na28d, BRD26);
inv a28f(BRD26N, na28e, SIM_CLK, SIM_RST);
inv #(0) a35d(BRD26, na35c, SIM_CLK, SIM_RST);
and a35c(na35c, V1, BRD26N);

and a27d(na26e_a27d, Y6, na33d, MODA, G2DVN, G1DV);
and a33d(na33d, INFOV, PABG1V);
and a26d(na26d, MODRR);
and a26e(na26e_a26e, V1, na26d, MODR5);
inv a26f(MODR5N, na26e, SIM_CLK, SIM_RST);
inv #(0) a33f(MODR5, na33e, SIM_CLK, SIM_RST);
and a33e(na33e, V1, MODR5N);

endmodule
`default_nettype wire
