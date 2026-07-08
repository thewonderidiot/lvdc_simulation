`timescale 1ns/1ps
`default_nettype none

module sd_sampler_5(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire C4RDN,
    input wire CR9,
    input wire CR10,
    input wire CRCAV,
    input wire DIAD,
    input wire DIN5,
    input wire DIN6,
    input wire DIN19,
    input wire DIN20,
    input wire DIS3,
    input wire DIS4,
    input wire DISA,
    input wire G1DVN,
    input wire G2DV,
    input wire G2DVN,
    input wire G3DV,
    input wire GC9,
    input wire GC10,
    input wire ICSD,
    input wire ICSDN,
    input wire MLAV,
    input wire PAAV,
    input wire PBG2V,
    input wire PCG2V,
    input wire RESMV,
    input wire TS5,
    input wire TS6,
    input wire TSA,
    input wire W2,
    input wire X1,
    input wire Y7,
    input wire Z2,

    output wire ML9,
    output wire ML10
);

wire CR9N;
wire CR10N;
wire DIN5N;
wire DIN6N;
wire DIN19N;
wire DIN20N;
wire DIS3N;
wire DIS4N;
wire GC9N;
wire GC10N;
wire ML9N;
wire ML10N;
wire TS5N;
wire TS6N;

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
assign na25d = na25d_a17c | na25d_a17d | na25d_a18c | na25d_a18d | na25d_a19c | na25d_a19d | na25d_a25d | na25d_a31b;
wire na25e;
wire na26a;
wire na26b;

// 10-114
dia a3a(DIN5N, DIN5, SIM_CLK, SIM_RST);
dia a7a(CR9N, CR9, SIM_CLK, SIM_RST);
dia a21a(GC9N, GC9, SIM_CLK, SIM_RST);
dia a2a(DIN19N, DIN19, SIM_CLK, SIM_RST);
dia a1a(DIS3N, DIS3, SIM_CLK, SIM_RST);
dib a15a(TS5N, TS5, SIM_CLK, SIM_RST);

and a19a(na25a_a19a, Y7, na12a, PBG2V, DIAD);
and a12a(na12a, DIN5N);
and a19b(na25a_a19b, Y7, na12b, C4RDN, PAAV, G1DVN);
and a12b(na12b, G2DV);
and a18a(na25a_a18a, X1, na12c, ICSD, PCG2V, CRCAV);
and a12c(na12c, CR9N);
and a18b(na25a_a18b, X1, na26a, PCG2V, ICSDN);
and a26a(na26a, GC9N, CRCAV);
and a17a(na25a_a17a, X1, DIN19N, DIAD, PCG2V);
and a17b(na25a_a17b, W2, DIS3N, PCG2V, DISA);
and a31a(na25a_a31a, W2, PCG2V, TS5N, TSA);
and a25a(na25a_a25a, V1, ML9N);
inv #(0) a25c(ML9, na25a, SIM_CLK, SIM_RST);
inv a24c(ML9N, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, ML9);
and a25b(na25b, Z2, RESMV);
and a24b(na24a_a24b, na25b, MLAV);

// 10-115 (nu)

// 10-116
dia a3b(DIN6N, DIN6, SIM_CLK, SIM_RST);
dia a7b(CR10N, CR10, SIM_CLK, SIM_RST);
dia a21b(GC10N, GC10, SIM_CLK, SIM_RST);
dia a2b(DIN20N, DIN20, SIM_CLK, SIM_RST);
dia a1b(DIS4N, DIS4, SIM_CLK, SIM_RST);
dib a15b(TS6N, TS6, SIM_CLK, SIM_RST);

and a19c(na25d_a19c, Y7, na12d, PBG2V, DIAD);
and a12d(na12d, DIN6N);
and a19d(na25d_a19d, Y7, na12e, C4RDN, PAAV, G2DVN);
and a12e(na12e, G3DV);
and a18c(na25d_a18c, X1, na12f, ICSD, PCG2V, CRCAV);
and a12f(na12f, CR10N);
and a18d(na25d_a18d, X1, na26b, PCG2V, ICSDN);
and a26b(na26b, GC10N, CRCAV);
and a17c(na25d_a17c, X1, DIN20N, DIAD, PCG2V);
and a17d(na25d_a17d, W2, DIS4N, PCG2V, DISA);
and a31b(na25d_a31b, W2, PCG2V, TS6N, TSA);
and a25d(na25d_a25d, V1, ML10N);
inv #(0) a25f(ML10, na25d, SIM_CLK, SIM_RST);
inv a24f(ML10N, na24d, SIM_CLK, SIM_RST);
and a24d(na24d_a24d, V1, ML10);
and a25e(na25e, Z2, RESMV);
and a24e(na24d_a24e, na25e, MLAV);

// 10-117 (nu)

endmodule
`default_nettype wire
