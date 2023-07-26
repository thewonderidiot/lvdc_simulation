`timescale 1ns/1ps
`default_nettype none

module sd_sampler_6(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire C4RDN,
    input wire CR11,
    input wire CR12,
    input wire CRCAV,
    input wire DIAD,
    input wire DIN7,
    input wire DIN8,
    input wire DIN21,
    input wire DIN22,
    input wire DIS5,
    input wire DIS6,
    input wire DISA,
    input wire G3DVN,
    input wire G4DV,
    input wire G4DVN,
    input wire G5DV,
    input wire GC11,
    input wire GC12,
    input wire ICSN,
    input wire MLAV,
    input wire PAAV,
    input wire PBG2V,
    input wire PCG2V,
    input wire RESMV,
    input wire TS7,
    input wire TS8,
    input wire TSA,
    input wire W2,
    input wire X1,
    input wire Y7,
    input wire Z2,

    output wire ICSD,
    output wire ICSDN,
    output wire ML11,
    output wire ML12
);

wire CR11N;
wire CR12N;
wire DIN7N;
wire DIN8N;
wire DIN21N;
wire DIN22N;
wire DIS5N;
wire DIS6N;
wire GC11N;
wire GC12N;
wire ICS;
wire ML11N;
wire ML12N;
wire TS7N;
wire TS8N;

wire na12a;
wire na12b;
wire na12c;
wire na12d;
wire na12e;
wire na12f;
wire na23a;
wire na23c;
wire na23d;
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a | na24a_a24b;
wire na24d;
wire na24d_a24d;
wire na24d_a24e;
assign na24d = na24d_a24d | na24d_a24e;
wire na25a;
wire na25a_a17a;
wire na25a_a17b;
wire na25a_a18a;
wire na25a_a18b;
wire na25a_a19a;
wire na25a_a19b;
wire na25a_a25a;
wire na25a_a31a;
assign na25a = na25a_a17a | na25a_a17b | na25a_a18a | na25a_a18b | na25a_a19a | na25a_a19b | na25a_a25a | na25a_a31a;
wire na25b;
wire na25d;
wire na25d_a17c;
wire na25d_a17d;
wire na25d_a18c;
wire na25d_a18d;
wire na25d_a19c;
wire na25d_a19d;
wire na25d_a25d;
wire na25d_a31b;
assign na25d = na25d_a17c | na25d_a17d | na25d_a18c | na25d_a18d | na25d_a19c | na25d_a19d | na25d_a25d | na25d_a31b;
wire na25e;
wire na26a;
wire na26b;

// 10-118
dia a3a(DIN7N, DIN7, SIM_CLK, SIM_RST);
dia a7a(CR11N, CR11, SIM_CLK, SIM_RST);
dia a14a(ICS, ICSN, SIM_CLK, SIM_RST);
dia a21a(GC11N, GC11, SIM_CLK, SIM_RST);
dia a2a(DIN21N, DIN21, SIM_CLK, SIM_RST);
dia a1a(DIS5N, DIS5, SIM_CLK, SIM_RST);
dib a15a(TS7N, TS7, SIM_CLK, SIM_RST);

and a19a(na25a_a19a, Y7, na12a, PBG2V, DIAD);
and a12a(na12a, DIN7N);
and a19b(na25a_a19b, Y7, na12b, C4RDN, PAAV, G3DVN);
and a12b(na12b, G4DV);
and a18a(na25a_a18a, X1, na12c, ICSD, PCG2V, CRCAV);
and a12c(na12c, CR11N);
and a18b(na25a_a18b, X1, na26a, PCG2V, ICSDN);
and a26a(na26a, GC11N, CRCAV);
and a17a(na25a_a17a, X1, DIN21N, DIAD, PCG2V);
and a17b(na25a_a17b, W2, DIS5N, PCG2V, DISA);
and a31a(na25a_a31a, W2, PCG2V, TS7N, TSA);
and a25a(na25a_a25a, V1, ML11N);
inv #(0) a25c(ML11, na25a, SIM_CLK, SIM_RST);
inv a24c(ML11N, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, ML11);
and a25b(na25b, Z2, RESMV);
and a24b(na24a_a24b, na25b, MLAV);

// 10-119
and a23a(na23a, V1, ICS);
inv a23b(ICSDN, na23a, SIM_CLK, SIM_RST);

// 10-120
dia a3b(DIN8N, DIN8, SIM_CLK, SIM_RST);
dia a7b(CR12N, CR12, SIM_CLK, SIM_RST);
dia a21b(GC12N, GC12, SIM_CLK, SIM_RST);
dia a2b(DIN22N, DIN22, SIM_CLK, SIM_RST);
dia a1b(DIS6N, DIS6, SIM_CLK, SIM_RST);
dib a15b(TS8N, TS8, SIM_CLK, SIM_RST);

and a19c(na25d_a19c, Y7, na12d, PBG2V, DIAD);
and a12d(na12d, DIN8N);
and a19d(na25d_a19d, Y7, na12e, C4RDN, PAAV, G4DVN);
and a12e(na12e, G5DV);
and a18c(na25d_a18c, X1, na12f, ICSD, PCG2V, CRCAV);
and a12f(na12f, CR12N);
and a18d(na25d_a18d, X1, na26b, PCG2V, ICSDN);
and a26b(na26b, GC12N, CRCAV);
and a17c(na25d_a17c, X1, DIN22N, DIAD, PCG2V);
and a17d(na25d_a17d, W2, DIS6N, PCG2V, DISA);
and a31b(na25d_a31b, W2, PCG2V, TS8N, TSA);
and a25d(na25d_a25d, V1, ML12N);
inv #(0) a25f(ML12, na25d, SIM_CLK, SIM_RST);
inv a24f(ML12N, na24d, SIM_CLK, SIM_RST);
and a24d(na24d_a24d, V1, ML12);
and a25e(na25e, Z2, RESMV);
and a24e(na24d_a24e, na25e, MLAV);

// 10-121
and a23c(na23c, V1, na23d);
and a23d(na23d, ICSDN);
inv #(0) a23e(ICSD, na23c, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
