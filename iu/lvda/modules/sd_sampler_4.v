`timescale 1ns/1ps
`default_nettype none

module sd_sampler_4(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire C4RDN,
    input wire CR7,
    input wire CR8,
    input wire CRCAV,
    input wire DIAD,
    input wire DIN3,
    input wire DIN4,
    input wire DIN17,
    input wire DIN18,
    input wire DIS1,
    input wire DIS2,
    input wire DISA,
    input wire G1DV,
    input wire G6DV,
    input wire G7DV,
    input wire G7DVN,
    input wire GC7,
    input wire GC8,
    input wire ICSD,
    input wire ICSDN,
    input wire MLAV,
    input wire PAAV,
    input wire PBG2V,
    input wire PCG2V,
    input wire RESMV,
    input wire SSA,
    input wire SSFB8,
    input wire TS3,
    input wire TS4,
    input wire TSA,
    input wire W2,
    input wire X2,
    input wire Y7,
    input wire Z2,
    
    output wire ML7,
    output wire ML8
);

wire CR7N;
wire CR8N;
wire DIN3N;
wire DIN4N;
wire DIN17N;
wire DIN18N;
wire DIS1N;
wire DIS2N;
wire GC7N;
wire GC8N;
wire ML7N;
wire ML8N;
wire SSFB8N;
wire TS3N;
wire TS4N;

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
wire na25a_a32a;
assign na25a = na25a_a17a | na25a_a17b | na25a_a18a | na25a_a18b | na25a_a19a | na25a_a19b | na25a_a25a | na25a_a31a | na25a_a32a;
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
wire na26c;

// 10-110
dia a3a(CR7N, CR7, SIM_CLK, SIM_RST);
dia a7a(DIN17N, DIN17, SIM_CLK, SIM_RST);
dia a14a(DIN3N, DIN3, SIM_CLK, SIM_RST);
dia a21a(GC7N, GC7, SIM_CLK, SIM_RST);
dia a2a(SSFB8N, SSFB8, SIM_CLK, SIM_RST);
dia a1a(DIS1N, DIS1, SIM_CLK, SIM_RST);
dib a22a(TS3N, TS3, SIM_CLK, SIM_RST);

and a19a(na25a_a19a, X2, na12a, ICSD, PCG2V, CRCAV);
and a12a(na12a, CR7N);
and a19b(na25a_a19b, Y7, na12b, C4RDN, PAAV, G6DV);
and a12b(na12b, G7DVN);
and a18a(na25a_a18a, X2, na12c, PCG2V, DIAD);
and a12c(na12c, DIN17N);
and a32a(na25a_a32a, Y7, na26a, DIAD, PBG2V);
and a26a(na26a, DIN3N);
and a18b(na25a_a18b, X2, na26b, CRCAV, PCG2V, ICSDN);
and a26b(na26b, GC7N);
and a17a(na25a_a17a, X2, SSFB8N, PCG2V, SSA);
and a17b(na25a_a17b, W2, DIS1N, PCG2V, DISA);
and a31a(na25a_a31a, W2, PCG2V, TS3N, TSA);
and a25a(na25a_a25a, V1, ML7N);
inv #(0) a25c(ML7, na25a, SIM_CLK, SIM_RST);
inv a24c(ML7N, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, ML7);
and a25b(na25b, Z2, RESMV);
and a24b(na24a_a24b, na25b, MLAV);

// 10-111 (nu)

// 10-112
dia a3b(DIN4N, DIN4, SIM_CLK, SIM_RST);
dia a7b(CR8N, CR8, SIM_CLK, SIM_RST);
dia a21b(GC8N, GC8, SIM_CLK, SIM_RST);
dia a2b(DIN18N, DIN18, SIM_CLK, SIM_RST);
dia a1b(DIS2N, DIS2, SIM_CLK, SIM_RST);
dib a22b(TS4N, TS4, SIM_CLK, SIM_RST);

and a19c(na25d_a19c, Y7, na12d, PBG2V, DIAD);
and a12d(na12d, DIN4N);
and a19d(na25d_a19d, Y7, na12e, C4RDN, PAAV, G1DV);
and a12e(na12e, G7DV);
and a18c(na25d_a18c, X2, na12f, ICSD, PCG2V, CRCAV);
and a12f(na12f, CR8N);
and a18d(na25d_a18d, X2, na26c, PCG2V, ICSDN);
and a26c(na26c, GC8N, CRCAV);
and a17c(na25d_a17c, X2, DIN18N, DIAD, PCG2V);
and a17d(na25d_a17d, W2, DIS2N, PCG2V, DISA);
and a31b(na25d_a31b, W2, PCG2V, TS4N, TSA);
and a25d(na25d_a25d, V1, ML8N);
inv #(0) a25f(ML8, na25d, SIM_CLK, SIM_RST);
inv a24f(ML8N, na24d, SIM_CLK, SIM_RST);
and a24d(na24d_a24d, V1, ML8);
and a25e(na25e, Z2, RESMV);
and a24e(na24d_a24e, na25e, MLAV);

// 10-113 (nu)

endmodule
`default_nettype wire
