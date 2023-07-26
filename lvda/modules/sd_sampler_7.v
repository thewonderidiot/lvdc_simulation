`timescale 1ns/1ps
`default_nettype none

module sd_sampler_7(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire C4RDN,
    input wire CR13,
    input wire CR14,
    input wire CRCAV,
    input wire DIAD,
    input wire DIN9,
    input wire DIN10,
    input wire DIN23,
    input wire DIN24,
    input wire DIS7,
    input wire DIS8,
    input wire DISA,
    input wire G5DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire G7DV,
    input wire GC13,
    input wire GC14,
    input wire ICSD,
    input wire ICSDN,
    input wire MLAV,
    input wire PAAV,
    input wire PBG2V,
    input wire PCG2V,
    input wire RESMV,
    input wire SSA,
    input wire SSFB1,
    input wire TS9,
    input wire TS10,
    input wire TSA,
    input wire W2,
    input wire X1,
    input wire Y7,
    input wire Z2,

    output wire ML13,
    output wire ML14
);

wire CR13N;
wire CR14N;
wire DIN9N;
wire DIN10N;
wire DIN23N;
wire DIN24N;
wire DIS7N;
wire DIS8N;
wire GC13N;
wire GC14N;
wire ML13N;
wire ML14N;
wire SSFB1N;
wire TS9N;
wire TS10N;

wire na12a;
wire na12b;
wire na12c;
wire na12d;
wire na12e;
wire na12f;
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
wire na25d_a32a;
assign na25d = na25d_a17c | na25d_a17d | na25d_a18c | na25d_a18d | na25d_a19c | na25d_a19d | na25d_a25d | na25d_a31b | na25d_a32a;
wire na25e;
wire na26a;
wire na26b;
wire na26c;

// 10-122
dia a3a(DIN9N, DIN9, SIM_CLK, SIM_RST);
dia a7a(CR13N, CR13, SIM_CLK, SIM_RST);
dia a21a(GC13N, GC13, SIM_CLK, SIM_RST);
dia a2a(DIN23N, DIN23, SIM_CLK, SIM_RST);
dia a1a(DIS7N, DIS7, SIM_CLK, SIM_RST);
dib a15a(TS9N, TS9, SIM_CLK, SIM_RST);

and a19a(na25a_a19a, Y7, na12a, PBG2V, DIAD);
and a12a(na12a, DIN9N);
and a19b(na25a_a19b, Y7, na12b, C4RDN, PAAV, G5DVN);
and a12b(na12b, G6DV);
and a18a(na25a_a18a, X1, na12c, ICSD, PCG2V, CRCAV);
and a12c(na12c, CR13N);
and a18b(na25a_a18b, X1, na26a, PCG2V, ICSDN);
and a26a(na26a, GC13N, CRCAV);
and a17a(na25a_a17a, X1, DIN23N, DIAD, PCG2V);
and a17b(na25a_a17b, W2, DIS7N, PCG2V, DISA);
and a31a(na25a_a31a, W2, PCG2V, TS9N, TSA);
and a25a(na25a_a25a, V1, ML13N);
inv #(0) a25c(ML13, na25a, SIM_CLK, SIM_RST);
inv a24c(ML13N, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, ML13);
and a25b(na25b, Z2, RESMV);
and a24b(na24a_a24b, na25b, MLAV);

// 10-123 (nu)

// 10-124
dia a3b(DIN10N, DIN10, SIM_CLK, SIM_RST);
dia a7b(CR14N, CR14, SIM_CLK, SIM_RST);
dia a14a(SSFB1N, SSFB1, SIM_CLK, SIM_RST);
dia a21b(GC14N, GC14, SIM_CLK, SIM_RST);
dia a2b(DIN24N, DIN24, SIM_CLK, SIM_RST);
dia a1b(DIS8N, DIS8, SIM_CLK, SIM_RST);
dib a15b(TS10N, TS10, SIM_CLK, SIM_RST);

and a19c(na25d_a19c, Y7, na12d, PBG2V, DIAD);
and a12d(na12d, DIN10N);
and a19d(na25d_a19d, Y7, na12e, C4RDN, PAAV, G6DVN);
and a12e(na12e, G7DV);
and a18c(na25d_a18c, X1, na12f, ICSD, PCG2V, CRCAV);
and a12f(na12f, CR14N);
and a32a(na25d_a32a, Y7, na26b, SSA, PBG2V);
and a26b(na26b, SSFB1N);
and a18d(na25d_a18d, X1, na26c, PCG2V, ICSDN);
and a26c(na26c, GC14N, CRCAV);
and a17c(na25d_a17c, X1, DIN24N, DIAD, PCG2V);
and a17d(na25d_a17d, W2, DIS8N, PCG2V, DISA);
and a31b(na25d_a31b, W2, PCG2V, TS10N, TSA);
and a25d(na25d_a25d, V1, ML14N);
inv #(0) a25f(ML14, na25d, SIM_CLK, SIM_RST);
inv a24f(ML14N, na24d, SIM_CLK, SIM_RST);
and a24d(na24d_a24d, V1, ML14);
and a25e(na25e, Z2, RESMV);
and a24e(na24d_a24e, na25e, MLAV);

// 10-125 (nu)

endmodule
`default_nettype wire
