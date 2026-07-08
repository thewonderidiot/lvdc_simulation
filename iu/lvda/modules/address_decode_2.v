`timescale 1ns/1ps
`default_nettype none

module address_decode_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,
    input wire V4,

    input wire A1DVN,
    input wire A2DV,
    input wire A3DV,
    input wire A3DVN,
    input wire A4DV,
    input wire A4DVN,
    input wire A5DV,
    input wire A5DVN,
    input wire A6DV,
    input wire A6DVN,
    input wire A7DV,
    input wire A7DVN,
    input wire DARAV,
    input wire DARO,
    input wire G1DV,
    input wire G2DVN,
    input wire PARSV,
    input wire PBAV,
    input wire PCAVN,
    input wire W8,
    input wire X3,
    input wire Y8,

    output wire CRCA,
    output wire DARA,
    output wire DIAD,
    output wire DISA,
    output wire DOR,
    output wire DOS,
    output wire ICR,
    output wire LGA,
    output wire LGAN,
    output wire SSA,
    output wire SSR,
    output wire TSA
);

wire CRCAN;
wire DARAN;
wire DIADN;
wire DISAN;
wire DORN;
wire DOSN;
wire ICRN;
wire PCAX;
wire SSAN;
wire SSRN;
wire TSAN;

wire na1a;
wire na1b;
wire na2b;
wire na3a;
wire na4a;
wire na7a;
wire na7a_a7a;
wire na7a_a7b;
assign na7a = na7a_a7a | na7a_a7b;
wire na8a;
wire na8b;
wire na8b_a2a;
wire na8b_a8b;
assign na8b = na8b_a2a | na8b_a8b;
wire na9a;
wire na9b;
wire na9b_a9b;
wire na9b_a16a;
assign na9b = na9b_a9b | na9b_a16a;
wire na10a;
wire na10b;
wire na10b_a10b;
wire na10b_a17a;
assign na10b = na10b_a10b | na10b_a17a;
wire na11a;
wire na11b;
wire na11b_a11b;
wire na11b_a18a;
assign na11b = na11b_a11b | na11b_a18a;
wire na12a;
wire na12b;
wire na12b_a12b;
wire na12b_a19a;
assign na12b = na12b_a12b | na12b_a19a;
wire na13a;
wire na13c;
wire na13c_a13c;
wire na13c_a14a;
wire na13c_a21c;
assign na13c = na13c_a13c & na13c_a14a & na13c_a21c;
wire na14b;
wire na14b_a14b;
wire na14b_a20b;
assign na14b = na14b_a14b | na14b_a20b;
wire na16b;
wire na17b;
wire na18b;
wire na19b;
wire na21a;
wire na22a;
wire na22b;
wire na22b_a22b;
wire na22b_a29a;
assign na22b = na22b_a22b | na22b_a29a;
wire na23a;
wire na24a;
wire na24c;
wire na25a;
wire na25b;
wire na25b_a25b;
wire na25b_a32a;
assign na25b = na25b_a25b | na25b_a32a;
wire na26a;
wire na26a_a26a;
wire na26a_a33c;
assign na26a = na26a_a26a | na26a_a33c;
wire na27a;
wire na27a_a26c;
wire na27a_a27a;
assign na27a = na27a_a26c & na27a_a27a;
wire na27b;
wire na27b_a20a;
wire na27b_a27b;
assign na27b = na27b_a20a | na27b_a27b;
wire na28a;
wire na28b;
wire na28b_a28b;
wire na28b_a35a;
assign na28b = na28b_a28b | na28b_a35a;
wire na29b;
wire na30b;
wire na31a;
wire na31b;
wire na31b_a30a;
wire na31b_a31b;
assign na31b = na31b_a30a | na31b_a31b;
wire na32b;
wire na33a;
wire na34a;
wire na34b;
wire na35b;

// 10-22
and a2a(na8b_a2a, W8, na1a, DARAV);
and a1a(na1a, A7DV);
and a8a(na8a, PARSV);
and a8b(na8b_a8b, V1, na8a, LGA);
inv a8c(LGAN, na8b, SIM_CLK, SIM_RST);
inv #(0) a1c(LGA, na1b, SIM_CLK, SIM_RST);
and a1b(na1b, V4, LGAN);

and a16a(na9b_a16a, Y8, na16b, DARO, A3DVN, A4DVN);
and a16b(na16b, A5DVN, A6DV, A7DVN);
and a9a(na9a, PARSV);
and a9b(na9b_a9b, V1, na9a, CRCA);
inv a9c(CRCAN, na9b, SIM_CLK, SIM_RST);
inv #(0) a2c(CRCA, na2b, SIM_CLK, SIM_RST);
and a2b(na2b, V4, CRCAN);

and a29a(na22b_a29a, Y8, na29b, DARO, A3DVN, A4DV);
and a29b(na29b, A5DVN, A6DV, A7DVN);
and a22a(na22a, PARSV);
and a22b(na22b_a22b, V1, na22a, DISA);
inv a22c(DISAN, na22b, SIM_CLK, SIM_RST);
inv #(0) a23b(DISA, na23a, SIM_CLK, SIM_RST);
and a23a(na23a, V1, DISAN);

and a30a(na31b_a30a, Y8, na30b, DARO, A3DV, A4DV);
and a30b(na30b, A5DVN, A6DV, A7DVN);
and a31a(na31a, PARSV);
and a31b(na31b_a31b, V1, na31a, DIAD);
inv a31c(DIADN, na31b, SIM_CLK, SIM_RST);
inv #(0) a24b(DIAD, na24a, SIM_CLK, SIM_RST);
and a24a(na24a, V1, DIADN);

and a17a(na10b_a17a, Y8, na17b, DARO, A3DV, A4DVN);
and a17b(na17b, A5DV, A6DV, A7DVN);
and a10a(na10a, PARSV);
and a10b(na10b_a10b, V1, na10a, TSA);
inv a10c(TSAN, na10b, SIM_CLK, SIM_RST);
inv #(0) a3b(TSA, na3a, SIM_CLK, SIM_RST);
and a3a(na3a, V1, TSAN);

and a18a(na11b_a18a, Y8, na18b, DARO, A3DV, A4DV);
and a18b(na18b, A5DV, A6DV, A7DVN);
and a11a(na11a, PARSV);
and a11b(na11b_a11b, V1, na11a, SSA);
inv a11c(SSAN, na11b, SIM_CLK, SIM_RST);
inv #(0) a4b(SSA, na4a, SIM_CLK, SIM_RST);
and a4a(na4a, V1, SSAN);

and a33a(na33a, V1, PCAVN);
inv a33b(PCAX, na33a, SIM_CLK, SIM_RST);

// 10-23
and a19a(na12b_a19a, W8, na19b, DARAV, A3DV, A4DV);
and a19b(na19b, A5DVN, A6DVN, A7DVN);
and a12a(na12a, PARSV);
and a12b(na12b_a12b, V1, na12a, DOS);
inv a12c(DOSN, na12b, SIM_CLK, SIM_RST);
inv #(0) a13b(DOS, na13a, SIM_CLK, SIM_RST);
and a13a(na13a, V1, DOSN);

and a35a(na28b_a35a, W8, na35b, DARAV, A3DV, A4DV);
and a35b(na35b, A5DV, A6DVN, A7DVN);
and a28a(na28a, PARSV);
and a28b(na28b_a28b, V1, na28a, SSR);
inv a28c(SSRN, na28b, SIM_CLK, SIM_RST);
inv #(0) a21b(SSR, na21a, SIM_CLK, SIM_RST);
and a21a(na21a, V4, SSRN);

and a32a(na25b_a32a, W8, na32b, DARAV, A4DV);
and a32b(na32b, A5DVN, A6DVN, A7DVN);
and a25a(na25a, PARSV);
and a25b(na25b_a25b, V1, na25a, DOR);
inv a25c(DORN, na25b, SIM_CLK, SIM_RST);
inv #(0) a26b(DOR, na26a, SIM_CLK, SIM_RST);
and a26a(na26a_a26a, V1, DORN);
and a33c(na26a_a33c, W8, na24c, PCAX);
and a24c(na24c, DOS);

and a20a(na27b_a20a, W8, na27a, DARAV, A4DVN, A5DV);
and a27a(na27a_a27a, A6DVN);
and a26c(na27a_a26c, A7DVN);
and a34a(na34a, PARSV);
and a27b(na27b_a27b, V1, na34a, ICR);
inv a27c(ICRN, na27b, SIM_CLK, SIM_RST);
inv #(0) a34c(ICR, na34b, SIM_CLK, SIM_RST);
and a34b(na34b, V4, ICRN);

and a20b(na14b_a20b, Y8, na13c, G2DVN, PBAV, A2DV);
and a13c(na13c_a13c, A1DVN);
and a21c(na13c_a21c, G1DV);
and a14a(na13c_a14a, PCAVN);
and a14b(na14b_a14b, V1, DARA);
inv a14c(DARAN, na14b, SIM_CLK, SIM_RST);
inv #(0) a7c(DARA, na7a, SIM_CLK, SIM_RST);
and a7a(na7a_a7a, V1, DARAN);
and a7b(na7a_a7b, X3);

endmodule
`default_nettype wire
