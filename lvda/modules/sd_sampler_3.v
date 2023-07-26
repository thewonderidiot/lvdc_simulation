`timescale 1ns/1ps
`default_nettype none

module sd_sampler_3(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire C4RDN,
    input wire CR5,
    input wire CR6,
    input wire CRCAV,
    input wire DIAD,
    input wire DIN1,
    input wire DIN2A,
    input wire DIN2B,
    input wire DIN15,
    input wire DIN16,
    input wire G4DV,
    input wire G5DV,
    input wire G5DVN,
    input wire G6DVN,
    input wire GC5,
    input wire GC6,
    input wire ICSD,
    input wire ICSDN,
    input wire MLAV,
    input wire PAAV,
    input wire PBG2V,
    input wire PCG2V,
    input wire RESMV,
    input wire SSA,
    input wire SSFB6,
    input wire SSFB7,
    input wire TS1,
    input wire TS2,
    input wire TSA,
    input wire W2,
    input wire X2,
    input wire Y7,
    input wire Z2,

    output wire ML5,
    output wire ML6
);

wire CR5N;
wire CR6N;
wire DIN1N;
wire DIN2AN;
wire DIN2BN;
wire DIN15N;
wire DIN16N;
wire GC5N;
wire GC6N;
wire ML5N;
wire ML6N;
wire SSFB6N;
wire SSFB7N;
wire TS1N;
wire TS2N;

wire na12a;
wire na12b;
wire na12c;
wire na12d;
wire na12e;
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
wire na25a_a18a;
wire na25a_a18b;
wire na25a_a19a;
wire na25a_a19b;
wire na25a_a25a;
wire na25a_a31a;
wire na25a_a32a;
assign na25a = na25a_a17a | na25a_a18a | na25a_a18b | na25a_a19a | na25a_a19b | na25a_a25a | na25a_a31a | na25a_a32a;
wire na25b;
wire na25d;
wire na25d_a17b;
wire na25d_a17c;
wire na25d_a18c;
wire na25d_a18d;
wire na25d_a19c;
wire na25d_a25d;
wire na25d_a31b;
wire na25d_a32b;
wire na25d_a32c;
assign na25d = na25d_a17b | na25d_a17c | na25d_a18c | na25d_a18d | na25d_a19c |
               na25d_a25d | na25d_a31b | na25d_a32b | na25d_a32c;
wire na25e;
wire na26a;
wire na26b;
wire na26c;
wire na26d;

// 10-106
dia a3a(CR5N, CR5, SIM_CLK, SIM_RST);
dia a7a(DIN15N, DIN15, SIM_CLK, SIM_RST);
dia a14a(DIN1N, DIN1, SIM_CLK, SIM_RST);
dia a21a(GC5N, GC5, SIM_CLK, SIM_RST);
dia a1a(SSFB6N, SSFB6, SIM_CLK, SIM_RST);
dib a15a(TS1N, TS1, SIM_CLK, SIM_RST);

and a19a(na25a_a19a, X2, na12a, ICSD, PCG2V, CRCAV);
and a12a(na12a, CR5N);
and a19b(na25a_a19b, Y7, na12b, C4RDN, PAAV, G4DV);
and a12b(na12b, G5DVN);
and a18a(na25a_a18a, X2, na12c, PCG2V, DIAD);
and a12c(na12c, DIN15N);
and a32a(na25a_a32a, Y7, na26a, DIAD, PBG2V);
and a26a(na26a, DIN1N);
and a18b(na25a_a18b, X2, na26b, CRCAV, PCG2V, ICSDN);
and a26b(na26b, GC5N);
and a17a(na25a_a17a, X2, SSFB6N, PCG2V, SSA);
and a31a(na25a_a31a, W2, PCG2V, TS1N, TSA);
and a25a(na25a_a25a, V1, ML5N);
inv #(0) a25c(ML5, na25a, SIM_CLK, SIM_RST);
inv a24c(ML5N, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, ML5);
and a25b(na25b, Z2, RESMV);
and a24b(na24a_a24b, na25b, MLAV);

// 10-107 (nu)

// 10-108
dia a7b(CR6N, CR6, SIM_CLK, SIM_RST);
dia a14b(GC6N, GC6, SIM_CLK, SIM_RST);
dia a35a(DIN2AN, DIN2A, SIM_CLK, SIM_RST);
dia a21b(DIN2BN, DIN2B, SIM_CLK, SIM_RST);
dia a2a(DIN16N, DIN16, SIM_CLK, SIM_RST);
dia a1b(SSFB7N, SSFB7, SIM_CLK, SIM_RST);
dib a15b(TS2N, TS2, SIM_CLK, SIM_RST);

and a19c(na25d_a19c, Y7, na12d, C4RDN, PAAV, G5DV);
and a12d(na12d, G6DVN);
and a18c(na25d_a18c, X2, na12e, ICSD, PCG2V, CRCAV);
and a12e(na12e, CR6N);
and a32b(na25d_a32b, X2, na26c, ICSDN, CRCAV, PCG2V);
and a26c(na26c, GC6N);
and a32c(na25d_a32c, Y7, DIN2AN, PBG2V, DIAD);
and a18d(na25d_a18d, Y7, na26d, PBG2V, DIAD);
and a26d(na26d, DIN2BN);
and a17b(na25d_a17b, X2, DIN16N, DIAD, PCG2V);
and a17c(na25d_a17c, X2, SSFB7N, PCG2V, SSA);
and a31b(na25d_a31b, W2, PCG2V, TS2N, TSA);
and a25d(na25d_a25d, V1, ML6N);
inv #(0) a25f(ML6, na25d, SIM_CLK, SIM_RST); 
inv a24f(ML6N, na24d, SIM_CLK, SIM_RST);
and a24d(na24d_a24d, V1, ML6);
and a25e(na25e, Z2, RESMV);
and a24e(na24d_a24e, na25e, MLAV);

// 10-109 (nu)

endmodule
`default_nettype wire
