`timescale 1ns/1ps
`default_nettype none

module sd_sampler_1(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,
    input wire V4,

    input wire A3DV,
    input wire A4DV,
    input wire A4DVN,
    input wire A5DV,
    input wire A5DVN,
    input wire A6DVN,
    input wire A7DV,
    input wire C1RD,
    input wire C4RD,
    input wire C4RDN,
    input wire CCSL,
    input wire CODGV,
    input wire CR3,
    input wire CR4,
    input wire CRCAV,
    input wire DARO,
    input wire DIAD,
    input wire DIN13,
    input wire DIN14,
    input wire DOMS,
    input wire EMA,
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
    input wire GC3,
    input wire GC4,
    input wire ICSD,
    input wire ICSDN,
    input wire ITS,
    input wire ML1_2,
    input wire ML5,
    input wire ML6,
    input wire ML7,
    input wire ML8,
    input wire ML9,
    input wire ML10,
    input wire ML11,
    input wire ML12,
    input wire ML13,
    input wire ML14,
    input wire MLAV,
    input wire PAAV,
    input wire PAAVN,
    input wire PARSV,
    input wire PBAV,
    input wire PCAV,
    input wire PCG2V,
    input wire RESMV,
    input wire SSA,
    input wire SSFB4,
    input wire SSFB5,
    input wire TAGS,
    input wire X2,
    input wire Y2,
    input wire Z2,

    output wire DATA,
    output wire MBYPD
);

wire CR3N;
wire CR4N;
wire DATA1N;
wire DATA2N;
wire DATA3N;
wire DATA4N;
wire DIN13N;
wire DIN14N;
wire GC3N;
wire GC4N;
wire MBYPDN;
wire ML3;
wire ML3N;
wire ML4;
wire ML4N;
wire SSFB4N;
wire SSFB5N;

wire na1b;
wire na1b_a1b;
wire na1b_a1c;
assign na1b = na1b_a1b & na1b_a1c;
wire na2b;
wire na3c;
wire na6a;
wire na6a_a6a;
wire na6a_a12a;
wire na6a_a12b;
wire na6a_a13a;
wire na6a_a13b;
wire na6a_a20a;
assign na6a = na6a_a6a | na6a_a12a | na6a_a12b | na6a_a13a | na6a_a13b | na6a_a20a;
wire na6b;
wire na7a;
wire na7a_a7a;
wire na7a_a7b;
assign na7a = na7a_a7a | na7a_a7b;
wire na9b;
wire na9b_a9b;
wire na9b_a9c;
wire na9b_a10a;
assign na9b = na9b_a9b & na9b_a9c & na9b_a10a;
wire na10b;
wire na10b_a1d;
wire na10b_a2a;
wire na10b_a3b;
wire na10b_a9a;
wire na10b_a10b;
wire na10b_a11f;
wire na10b_a17e;
assign na10b = na10b_a1d | na10b_a2a | na10b_a3b | na10b_a9a | na10b_a10b | na10b_a11f | na10b_a17e;
wire na11a;
wire na11a_a11a;
wire na11a_a11b;
assign na11a = na11a_a11a | na11a_a11b;
wire na11d;
wire na11d_a11d;
wire na11d_a11e;
assign na11d = na11d_a11d & na11d_a11e;
wire na13c;
wire na13c_a13c;
wire na13c_a13d;
assign na13c = na13c_a13c | na13c_a13d;
wire na15b;
wire na15c;
wire na16a;
wire na16b;
wire na16b_a8b;
wire na16b_a8c;
wire na16b_a15d;
wire na16b_a16b;
wire na16b_a23a;
wire na16b_a23b;
wire na16b_a23c;
assign na16b = na16b_a8b | na16b_a8c | na16b_a15d | na16b_a16b | na16b_a23a | na16b_a23b | na16b_a23c;
wire na17c;
wire na17c_a17c;
wire na17c_a17d;
assign na17c = na17c_a17c & na17c_a17d;
wire na18a;
wire na18a_a17a;
wire na18a_a17b;
wire na18a_a18a;
wire na18a_a19a;
wire na18a_a25a;
wire na18a_a25b;
assign na18a = na18a_a17a | na18a_a17b | na18a_a18a | na18a_a19a | na18a_a25a | na18a_a25b;
wire na18b;
wire na19b;
wire na19c;
wire na19d;
wire na19e;
wire na20b;
wire na20c;
wire na20d;
wire na20d_a18d;
wire na20d_a18e;
wire na20d_a20d;
wire na20d_a26a;
wire na20d_a26b;
wire na20d_a34a;
wire na20d_a34b;
assign na20d = na20d_a18d | na20d_a18e | na20d_a20d | na20d_a26a | na20d_a26b | na20d_a34a | na20d_a34b;
wire na20e;
wire na20e_a20e;
wire na20e_a21a;
assign na20e = na20e_a20e & na20e_a21a;
wire na21b;
wire na21b_a21b;
wire na21b_a21c;
assign na21b = na21b_a21b & na21b_a21c;
wire na22a;
wire na22b;
wire na24a;
wire na24b;
wire na24c;
wire na24d;
wire na24d_a24d;
wire na24d_a24e;
assign na24d = na24d_a24d & na24d_a24e;
wire na25c;
wire na25c_a25c;
wire na25c_a25d;
assign na25c = na25c_a25c & na25c_a25d;
wire na27a;
wire na27b;
wire na27c;
wire na28b;
wire na28b_a28a;
wire na28b_a28b;
assign na28b = na28b_a28a | na28b_a28b;
wire na30a;
wire na30b;
wire na32b;
wire na32c;
wire na32c_a24f;
wire na32c_a25e;
wire na32c_a31a;
wire na32c_a31b;
wire na32c_a32c;
wire na32c_a33a;
wire na32c_a33b;
assign na32c = na32c_a24f | na32c_a25e | na32c_a31a | na32c_a31b | na32c_a32c | na32c_a33a | na32c_a33b;
wire na35b;
wire na35c;

// 10-104
dia a29a(GC3N, GC3, SIM_CLK, SIM_RST);
dia a15a(CR3N, CR3, SIM_CLK, SIM_RST);
dia a8a(DIN13N, DIN13, SIM_CLK, SIM_RST);
dia a32a(SSFB4N, SSFB4, SIM_CLK, SIM_RST);
dia a35a(GC4N, GC4, SIM_CLK, SIM_RST);
dia a14a(CR4N, CR4, SIM_CLK, SIM_RST);
dia a3a(DIN14N, DIN14, SIM_CLK, SIM_RST);
dia a1a(SSFB5N, SSFB5, SIM_CLK, SIM_RST);

and a25a(na18a_a25a, Y2, na24a, C4RDN, PAAV, G2DV);
and a24a(na24a, G3DVN);
and a25b(na18a_a25b, X2, na24b, GC3N, PCG2V, ICSDN);
and a24b(na24b, CRCAV);
and a17a(na18a_a17a, X2, na24c, CR3N, PCG2V, ICSD);
and a24c(na24c, CRCAV);
and a17b(na18a_a17b, X2, DIN13N, PCG2V, DIAD);
and a19a(na18a_a19a, X2, SSA, SSFB4N, PCG2V);
and a18a(na18a_a18a, V1, ML3N);
inv #(0) a18c(ML3, na18a, SIM_CLK, SIM_RST);
inv a11c(ML3N, na11a, SIM_CLK, SIM_RST);
and a11a(na11a_a11a, V1, ML3);
and a11b(na11a_a11b, Z2, na18b, RESMV);
and a18b(na18b, MLAV);

// 10-105
and a19b(na19b, Y2, C4RDN, PAAV, G3DV, G4DVN);
and a20a(na6a_a20a, na19b);
and a13a(na6a_a13a, X2, na20b, GC4N, PCG2V, ICSDN);
and a20b(na20b, CRCAV);
and a13b(na6a_a13b, X2, na20c, PCG2V, ICSD, CR4N);
and a20c(na20c, CRCAV);
and a12a(na6a_a12a, X2, DIN14N, DIAD, PCG2V);
and a12b(na6a_a12b, X2, SSA, PCG2V, SSFB5N);
and a6a(na6a_a6a, V1, ML4N);
inv #(0) a6c(ML4, na6a, SIM_CLK, SIM_RST);
inv a7c(ML4N, na7a, SIM_CLK, SIM_RST);
and a7a(na7a_a7a, V1, ML4);
and a7b(na7a_a7b, Z2, na6b, RESMV);
and a6b(na6b, MLAV);

// 10-127
and a18d(na20d_a18d, Y2, na19c, ML3, G3DV, G4DVN);
and a19c(na19c, MLAV);
and a18e(na20d_a18e, Y2, na19d, MLAV, G4DV, ML4);
and a19d(na19d, G5DVN);
and a26a(na20d_a26a, Y2, na19e, ML5, G5DV, G6DVN);
and a19e(na19e, MLAV);
and a26b(na20d_a26b, Y2, na27a, G6DV, G7DVN, ML6);
and a27a(na27a, MLAV);
and a34a(na20d_a34a, Y2, na27b, ML7, G7DV, G1DV);
and a27b(na27b, MLAV);
and a34b(na20d_a34b, Y2, na27c, G1DVN, G2DV, ML8);
and a27c(na27c, MLAV);
and a20d(na20d_a20d, V1, DATA);
inv a20f(DATA1N, na20d, SIM_CLK, SIM_RST);
inv #(0) a13e(DATA, na13c, SIM_CLK, SIM_RST);
and a13c(na13c_a13c, V4, na20e, DATA4N);
and a20e(na20e_a20e, DATA1N, DATA2N);
and a21a(na20e_a21a, DATA3N);
and a13d(na13c_a13d, X2, na16a);
and a16a(na16a, X2);

and a8b(na16b_a8b, Y2, na15b, MLAV, ML9, G3DV);
and a15b(na15b, G2DVN);
and a8c(na16b_a8c, Y2, na15c, MLAV, ML10, G4DV);
and a15c(na15c, G3DVN);
and a22a(na22a, Y2, MLAV, ML11, G4DVN, G5DV);
and a15d(na16b_a15d, na22a);
and a22b(na22b, Y2, G6DV, ML12, G5DVN, MLAV);
and a23a(na16b_a23a, na22b);
and a30a(na30a, Y2, MLAV, ML13, G6DVN, G7DV);
and a23b(na16b_a23b, na30a);
and a30b(na30b, Y2, MLAV, G1DVN, ML14, G7DVN);
and a23c(na16b_a23c, na30b);
and a16b(na16b_a16b, V1, DATA);
inv a16c(DATA2N, na16b, SIM_CLK, SIM_RST);

and a3b(na10b_a3b, Y2, na3c, PAAVN, PCAV, C4RD);
and a3c(na3c, MBYPD, A5DV, A4DVN);
and a2a(na10b_a2a, Y2, na2b, PAAVN, PCAV, C4RD);
and a2b(na2b, MBYPD, A5DVN, A4DV);
and a17c(na17c_a17c, Y2, C4RD, MBYPD);
and a17d(na17c_a17d, A5DVN, A4DV);
and a17e(na10b_a17e, na17c, PBAV); 
and a11d(na11d_a11d, Y2, A5DV, A4DVN);
and a11e(na11d_a11e, MBYPD, C4RD);
and a11f(na10b_a11f, na11d, PBAV);
and a9a(na10b_a9a, na9b, MBYPD);
and a9b(na9b_a9b, Y2, C4RD, PCAV);
and a9c(na9b_a9c, PAAVN, A5DVN);
and a10a(na9b_a10a, A4DVN);
and a1b(na1b_a1b, Y2, C4RD, MBYPD);
and a1c(na1b_a1c, A5DVN, A4DVN);
and a1d(na10b_a1d, na1b, PBAV);
and a10b(na10b_a10b, V1, DATA);
inv a10c(DATA4N, na10b, SIM_CLK, SIM_RST);

// 10-127
and a25c(na25c_a25c, Y2, C1RD, A5DV);
and a25d(na25c_a25d, A4DV, MBYPD);
and a25e(na32c_a25e, na25c, ITS);
and a24d(na24d_a24d, Y2, G2DVN, G1DV);
and a24e(na24d_a24e, ML1_2, MLAV);
and a24f(na32c_a24f, na24d, PAAVN);
and a31a(na32c_a31a, Y2, na32b, ML1_2, G3DVN, G2DV);
and a32b(na32b, MLAV);
and a31b(na32c_a31b, Y2, DOMS, PAAVN, EMA);
and a33a(na32c_a33a, Y2, PAAVN, CCSL, CODGV);
and a33b(na32c_a33b, Y2, TAGS, PAAV);
and a32c(na32c_a32c, V1, DATA);
inv a32d(DATA3N, na32c, SIM_CLK, SIM_RST);

and a21b(na21b_a21b, Y2, A6DVN, A7DV);
and a21c(na21b_a21c, DARO, A3DV);
and a28a(na28b_a28a, na21b);
and a28b(na28b_a28b, V1, na35b, PARSV);
inv a28c(MBYPDN, na28b, SIM_CLK, SIM_RST);
and a35b(na35b, MBYPD);
inv #(0) a35d(MBYPD, na35c, SIM_CLK, SIM_RST);
and a35c(na35c, V1, MBYPDN);

endmodule
`default_nettype wire
