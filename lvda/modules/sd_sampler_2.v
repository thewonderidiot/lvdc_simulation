`timescale 1ns/1ps
`default_nettype none

module sd_sampler_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire C4RDN,
    input wire CR1,
    input wire CR2,
    input wire CRCAV,
    input wire DIAD,
    input wire DIN11,
    input wire DIN12,
    input wire G1DVN,
    input wire G7DVN,
    input wire GC1,
    input wire GC2,
    input wire ICSD,
    input wire ICSDN,
    input wire MLAV,
    input wire PAAV,
    input wire PBG2V,
    input wire PCG2V,
    input wire RESMV,
    input wire SSA,
    input wire SSFB2,
    input wire SSFB3,
    input wire W2,
    input wire X1,
    input wire Y7,
    input wire Z2,

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

wire na12a;
wire na12b;
wire na12c;
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a | na24a_a24b;
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
assign na25a = na25a_a17a | na25a_a17b | na25a_a18a | na25a_a18b | na25a_a19a |
               na25a_a19b | na25a_a25a | na25a_a31a | na25a_a32a | na25a_a32b;
wire na25b;
wire na26a;
wire na26b;

// 10-100
dia a3(CR1N, CR1, SIM_CLK, SIM_RST);
dia a7(CR2N, CR2, SIM_CLK, SIM_RST);
dia a14(GC1N, GC1, SIM_CLK, SIM_RST);
dia a35(SSFB2N, SSFB2, SIM_CLK, SIM_RST);
dia a21(GC2N, GC2, SIM_CLK, SIM_RST);
dia a2(DIN11N, DIN11, SIM_CLK, SIM_RST);
dia a1(DIN12N, DIN12, SIM_CLK, SIM_RST);
dia a22(SSFB3N, SSFB3, SIM_CLK, SIM_RST);

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
// 10-102 (duplicate of 10-100)
// 10-103 (duplicate of 10-101)

endmodule
`default_nettype wire
