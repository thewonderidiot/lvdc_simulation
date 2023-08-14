`timescale 1ns/1ps
`default_nettype none

module sd_sampler_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

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
    input wire C4RDN,
    input wire CR1,
    input wire CR2,
    input wire CRCAV,
    input wire DIAD,
    input wire DIN11,
    input wire DIN12,
    input wire DLS,
    input wire DOMC1,
    input wire DOMC1N,
    input wire ETCR,
    input wire ETCRN,
    input wire G1DVN,
    input wire G2DV,
    input wire G3DVN,
    input wire G6DVN,
    input wire G7DV,
    input wire G7DVN,
    input wire GC1,
    input wire GC2,
    input wire ICSD,
    input wire ICSDN,
    input wire LGAV,
    input wire LGAN,
    input wire MLAV,
    input wire PAAV,
    input wire PBG2V,
    input wire PCAV,
    input wire PCG2V,
    input wire RESMV,
    input wire SSA,
    input wire SSFB2,
    input wire SSFB3,
    input wire W2,
    input wire X1,
    input wire X7,
    input wire Y6,
    input wire Y7,
    input wire Z2,
    input wire Z6,

    output wire DC1S,
    output wire DC1SN,
    output wire DC2S,
    output wire DC2SN,
    output wire DC3S,
    output wire DC3SN,
    output wire DC4S,
    output wire DC4SN,
    output wire ML1_2
);

wire CR1N;
wire CR2N;
wire DIN11N;
wire DIN12N;
wire GC1N;
wire GC2N;
wire ML1_2N;
wire SSFB2N;
wire SSFB3N;

wire na8b;
wire na8b_a8a;
wire na8b_a8b;
wire na8b_a9a;
assign na8b = na8b_a8a | na8b_a8b | na8b_a9a;
wire na9b;
wire na9b_a9b;
wire na9b_a16a;
wire na9b_a16b;
assign na9b = na9b_a9b | na9b_a16a | na9b_a16b;
wire na12a;
wire na12b;
wire na12c;
wire na15a;
wire na15b;
wire na17c;
wire na17c_a17c;
wire na17c_a24d;
assign na17c = na17c_a17c & na17c_a24d;
wire na18c;
wire na18c_a11a;
wire na18c_a11b;
wire na18c_a18c;
assign na18c = na18c_a11a | na18c_a11b | na18c_a18c;
wire na19c;
wire na19c_a18e;
wire na19c_a19c;
assign na19c = na19c_a18e & na19c_a19c;
wire na20a;
wire na22a;
wire na22b;
wire na22b_a22b;
wire na22b_a29a;
wire na22b_a29b;
assign na22b = na22b_a22b | na22b_a29a | na22b_a29b;
wire na23a;
wire na23b;
wire na23b_a23b;
wire na23b_a30a;
wire na23b_a30b;
assign na23b = na23b_a23b | na23b_a30a | na23b_a30b;
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a | na24a_a24b;
wire na24e;
wire na24e_a17d;
wire na24e_a24e;
wire na24e_a25d;
wire na24e_a31c;
wire na24e_a32c;
assign na24e = na24e_a17d | na24e_a24e | na24e_a25d | na24e_a31c | na24e_a32c;
wire na25a;
wire na25a_a17a;
wire na25a_a17b;
wire na25a_a18a;
wire na25a_a18b;
wire na25a_a19a;
wire na25a_a19b;
wire na25a_a25a;
wire na25a_a31a;
wire na25a_a32a;
wire na25a_a32b;
assign na25a = na25a_a17a | na25a_a17b | na25a_a18a | na25a_a18b | na25a_a19a | na25a_a19b | na25a_a25a | na25a_a31a | na25a_a32a | na25a_a32b;
wire na25b;
wire na25e;
wire na26a;
wire na26b;
wire na27a;
wire na27a_a19d;
wire na27a_a20b;
wire na27a_a27a;
wire na27a_a33b;
wire na27a_a34b;
assign na27a = na27a_a19d | na27a_a20b | na27a_a27a | na27a_a33b | na27a_a34b;
wire na27b;
wire na28a;
wire na28a_a28a;
wire na28a_a35a;
wire na28a_a35b;
assign na28a = na28a_a28a | na28a_a35a | na28a_a35b;
wire na31b;
wire na32d;
wire na33a;
wire na34a;

// 10-100
dia dia1(CR1N, CR1, SIM_CLK, SIM_RST);
dia dia2(CR2N, CR2, SIM_CLK, SIM_RST);
dia dia3(GC1N, GC1, SIM_CLK, SIM_RST);
dia dia4(SSFB2N, SSFB2, SIM_CLK, SIM_RST);
dia dia5(GC2N, GC2, SIM_CLK, SIM_RST);
dia dia6(DIN11N, DIN11, SIM_CLK, SIM_RST);
dia dia7(DIN12N, DIN12, SIM_CLK, SIM_RST);
dia dia8(SSFB3N, SSFB3, SIM_CLK, SIM_RST);

and a19a(na25a_a19a, Y7, na12a, ICSD, PBG2V, CRCAV);
and a12a(na12a, CR1N);
and a19b(na25a_a19b, Y7, na12b, PAAV, G1DVN, G7DVN);
and a12b(na12b, C4RDN);
and a18a(na25a_a18a, X1, na12c, ICSD, PCG2V, CRCAV);
and a12c(na12c, CR2N);
and a32a(na25a_a32a, Z2, na26a, ICSDN, CRCAV, PBG2V);
and a26a(na26a, GC1N);
and a32b(na25a_a32b, Z2, SSFB2N, SSA, PBG2V);
and a18b(na25a_a18b, W2, na26b, CRCAV, PCG2V, ICSDN);
and a26b(na26b, GC2N);
and a17a(na25a_a17a, Z2, DIN11N, PBG2V, DIAD);
and a17b(na25a_a17b, W2, DIN12N, PCG2V, DIAD);
and a31a(na25a_a31a, X1, PCG2V, SSFB3N, SSA);
and a25a(na25a_a25a, V1, ML1_2N);
inv #(0) a25c(ML1_2, na25a, SIM_CLK, SIM_RST);
inv a24c(ML1_2N, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, ML1_2);
and a25b(na25b, Z2, RESMV);
and a24b(na24a_a24b, na25b, MLAV);

// 10-101 (nu)

// 10-190
and a29a(na22b_a29a, X7, na22a, LGAV, DLS, C1GT3);
and a22a(na22a, C1GT1);
and a29b(na22b_a29b, X7, na23a ,DLS, C1GT2, C1GT3);
and a23a(na23a, LGAN);
and a22b(na22b_a22b, V1, DC1S);
inv a22c(DC1SN, na22b, SIM_CLK, SIM_RST);
inv #(0) a23c(DC1S, na23b, SIM_CLK, SIM_RST);
and a23b(na23b_a23b, V1, DC1SN);
and a30a(na23b_a30a, Z6, PAAV, G6DVN, G7DV);
and a30b(na23b_a30b, X7, PCG2V, ETCRN, LGAV);

and a15a(na15a, X7, LGAV, DLS, C1GT2, C2GT1);
and a8a(na8b_a8a, na15a, C2GT3);
and a15b(na15b, X7, DLS, C1GT1, C2GT2, LGAN);
and a9a(na8b_a9a, na15b, C2GT3);
and a8b(na8b_a8b, V1, DC2S);
inv a8c(DC2SN, na8b, SIM_CLK, SIM_RST);
inv #(0) a9c(DC2S, na9b, SIM_CLK, SIM_RST);
and a9b(na9b_a9b, V1, DC2SN);
and a16a(na9b_a16a, Y6, PAAV, G1DVN, G7DVN);
and a16b(na9b_a16b, X7, PCG2V, ETCRN, LGAV);

and a31b(na31b, X7, ETCR, DOMC1N, C2GT2, C4GT2);
and a31c(na24e_a31c, na31b, DLS, C1GT2, LGAV);
and a17c(na17c_a17c, X7, C3GT1, C4GT1, C2GT1, C1GT1);
and a17d(na24e_a17d, na17c, DOMC1N, ETCR, LGAN);
and a24d(na17c_a24d, DLS);
and a32c(na24e_a32c, X7, na32d, C2GT2, C3GT1, C3GT3);
and a32d(na32d, DLS, C1GT2, LGAV);
and a25d(na24e_a25d, X7, na25e, LGAN, C3GT3, C3GT2);
and a25e(na25e, C1GT1, DLS, C2GT1);
and a24e(na24e_a24e, V1, DC3S);
inv a24f(DC3SN, na24e, SIM_CLK, SIM_RST);
inv #(0) a18d(DC3S, na18c, SIM_CLK, SIM_RST);
and a18c(na18c_a18c, V1, DC3SN);
and a11a(na18c_a11a, Y6, PAAV, G1DVN, G7DVN);
and a11b(na18c_a11b, X7, ETCRN, LGAV, PCG2V);

// 10-191
and a20a(na20a, X7, C2GT2, DOMC1, C3GT2, ETCR);
and a20b(na27a_a20b, na20a, DLS, C1GT2, LGAV);
and a19c(na19c_a19c, X7, DOMC1, C2GT1, C3GT1, C1GT1);
and a19d(na27a_a19d, na19c, ETCR, DLS, LGAN);
and a18e(na19c_a18e, C4GT1);
and a34a(na34a, X7, C3GT2, C2GT2, C4GT1, C4GT3);
and a34b(na27a_a34b, na34a, LGAV, C1GT2, DLS);
and a33a(na33a, X7, LGAN, C4GT2, C3GT1, C4GT3);
and a33b(na27a_a33b, na33a, C1GT1, C2GT1, DLS);
and a27a(na27a_a27a, V1, DC4S);
inv a27c(DC4SN, na27a, SIM_CLK, SIM_RST);
inv #(0) a28b(DC4S, na28a, SIM_CLK, SIM_RST);
and a28a(na28a_a28a, V1, DC4SN);
and a35a(na28a_a35a, Y6, PAAV, G1DVN, G7DVN);
and a27b(na27b, LGAV, PCAV);
and a35b(na28a_a35b, Y6, G2DV, G3DVN, ETCRN);

endmodule
`default_nettype wire
