`timescale 1ns/1ps
`default_nettype none

module int_countdn_proc_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,
    input wire V4,

    input wire A1DVN,
    input wire A2DV,
    input wire A3DV,
    input wire A3DVN,
    input wire A4DV,
    input wire A5DV,
    input wire A6DV,
    input wire A7DVN,
    input wire ADVN,
    input wire C1RD,
    input wire C1RDN,
    input wire C2RDN,
    input wire C3RN,
    input wire C3RD,
    input wire CRI1,
    input wire CRI2,
    input wire EM26N,
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
    input wire ICSDN,
    input wire INTR1,
    input wire INTR2,
    input wire INTR3,
    input wire INTR4,
    input wire INTR5,
    input wire INTR6,
    input wire INTR7,
    input wire LGAV,
    input wire LRR,
    input wire OCINT,
    input wire PAAV,
    input wire PABG1V,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAV,
    input wire SSIT1,
    input wire TC2A,
    input wire TIN,
    input wire W4,
    input wire X4,
    input wire Y4,
    input wire Y5,
    input wire Z4,

    output wire SINT,
    output wire TC3A,
    output wire TC3AN
);

wire CRI1N;
wire CRI2N;
wire INTC;
wire INTCN;
wire INTR1N;
wire INTR2N;
wire INTR3N;
wire INTR4N;
wire INTR5N;
wire INTR6N;
wire INTR7N;
wire LPAG2N;
wire LRRP;
wire LRRPN;
wire MCFT1;
wire MCFT2;
wire MCFT3;
wire OCINTN;
wire SINT_a17b;
wire SINT_a17d;
wire SINT_a21f;
assign SINT = SINT_a17b & SINT_a17d & SINT_a21f;
wire SINTN;

wire na7a;
wire na7b;
wire na8a;
wire na10a;
wire na10a_a10a;
wire na10a_a10b;
assign na10a = na10a_a10a | na10a_a10b;
wire na12a;
wire na12b;
wire na12b_a12b;
wire na12b_a19a;
assign na12b = na12b_a12b | na12b_a19a;
wire na13a;
wire na13b;
wire na13b_a13b;
wire na13b_a14b;
assign na13b = na13b_a13b | na13b_a14b;
wire na17a;
wire na17a_a16a;
wire na17a_a16b;
wire na17a_a17a;
wire na17a_a18a;
wire na17a_a18b;
wire na17a_a24a;
wire na17a_a24b;
assign na17a = na17a_a16a | na17a_a16b | na17a_a17a | na17a_a18a | na17a_a18b | na17a_a24a | na17a_a24b;
wire na17c;
wire na17c_a9a;
wire na17c_a9b;
wire na17c_a16c;
wire na17c_a16d;
wire na17c_a17c;
wire na17c_a24c;
wire na17c_a24d;
assign na17c = na17c_a9a | na17c_a9b | na17c_a16c | na17c_a16d | na17c_a17c | na17c_a24c | na17c_a24d;
wire na17e;
wire na18c;
wire na18d;
wire na18e;
wire na20a;
wire na20c;
wire na20d;
wire na20d_a13d;
wire na20d_a13e;
wire na20d_a20d;
assign na20d = na20d_a13d | na20d_a13e | na20d_a20d;
wire na21a;
wire na21a_a14a;
wire na21a_a21a;
wire na21a_a21b;
assign na21a = na21a_a14a | na21a_a21a | na21a_a21b;
wire na21e;
wire na21e_a21d;
wire na21e_a21e;
wire na21e_a35c;
assign na21e = na21e_a21d | na21e_a21e | na21e_a35c;
wire na26a;
wire na26b;
wire na26b_a19b;
wire na26b_a26b;
assign na26b = na26b_a19b | na26b_a26b;
wire na27a;
wire na27a_a27a;
wire na27a_a28b;
wire na27a_a34a;
assign na27a = na27a_a27a | na27a_a28b | na27a_a34a;
wire na27c;
wire na27d;
wire na27e;
wire na27e_a27e;
wire na27e_a34c;
assign na27e = na27e_a27e | na27e_a34c;
wire na28c;
wire na28d;
wire na28d_a28d;
wire na28d_a35d;
assign na28d = na28d_a28d | na28d_a35d;
wire na34b;
wire na34b_a34b;
wire na34b_a35a;
assign na34b = na34b_a34b & na34b_a35a;
wire na34d;
wire na35b;
wire na35b_a28a;
wire na35b_a35b;
assign na35b = na35b_a28a & na35b_a35b;

// 10-170
dia a31a(INTR1N, INTR1, SIM_CLK, SIM_RST);

and a24a(na17a_a24a, Y4, G3DV, G4DVN, INTR1N);
and a24b(na17a_a24b, Y4, G4DV, G5DVN, INTR2N);
and a18a(na17a_a18a, Y4, G5DV, G6DVN, INTR3N);
and a18b(na17a_a18b, Y4, G6DV, G7DVN, INTR4N);
and a16a(na17a_a16a, Y4, G1DV, G7DV, INTR5N);
and a16b(na17a_a16b, Y4, G1DVN, G2DV, INTR6N);
and a17a(na17a_a17a, V1, SINTN);
inv #(0) a17b(SINT_a17b, na17a, SIM_CLK, SIM_RST);

dia a29a(INTR5N, INTR5, SIM_CLK, SIM_RST);

dia a33a(INTR2N, INTR2, SIM_CLK, SIM_RST);

and a34a(na27a_a34a, na34b, A4DV, A6DV, A5DV);
and a34b(na34b_a34b, A3DV, PBAV, A2DV, A1DVN);
and a35a(na34b_a35a, Y4, A7DVN, G5DVN, G4DV);
and a35b(na35b_a35b, A4DV, A5DV, A6DV, A7DVN);
and a28a(na35b_a28a, Z4, G3DV, PCAV, G4DVN);
and a28b(na27a_a28b, na35b, A1DVN, A2DV, A3DVN);
and a27a(na27a_a27a, V1, TC3A);
inv a27b(TC3AN, na27a, SIM_CLK, SIM_RST);
inv #(0) a21c(TC3A, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V1, TC3AN);
and a14a(na21a_a14a, Y4, PCAV, G3DV, G4DVN);
and a21b(na21a_a21b, Y4, PABG1V);

// 10-171
dia a5a(INTR3N, INTR3, SIM_CLK, SIM_RST);

and a20a(na20a, V1, na27c, LGAV);
and a27c(na27c, PAAV, G2DV);
inv a20b(LPAG2N, na20a, SIM_CLK, SIM_RST);

dia a3a(INTR4N, INTR4, SIM_CLK, SIM_RST);

and a14b(na13b_a14b, W4, na7a, PAAV, G1DV, G6DV);
and a7a(na7a, ADVN, C3RD);
and a13a(na13a, LRRP);
and a13b(na13b_a13b, V1, na13a, LRR);
inv a13c(LRRPN, na13b, SIM_CLK, SIM_RST);
inv #(0) a7c(LRRP, na7b, SIM_CLK, SIM_RST);
and a7b(na7b, V1, LRRPN);

dia a1a(INTR6N, INTR6, SIM_CLK, SIM_RST);

// 10-174
and a24c(na17c_a24c, Y5, G3DV, INTR7N, G2DVN);
and a24d(na17c_a24d, Y5, na18c, G4DV, CRI1N);
and a18c(na18c, G3DVN);
and a16c(na17c_a16c, Y5, G5DV, G4DVN, EM26N);
and a16d(na17c_a16d, Y5, G5DVN, G6DV, OCINTN);
and a9a(na17c_a9a, Y5, G7DV, G6DVN, SSIT1);
and a9b(na17c_a9b, Y5, TIN, G1DVN, G7DVN);
and a17c(na17c_a17c, V1, SINTN);
inv #(0) a17d(SINT_a17d, na17c, SIM_CLK, SIM_RST);
inv a10c(SINTN, na10a, SIM_CLK, SIM_RST);
and a10a(na10a_a10a, V1, na17e, SINT);
and a17e(na17e, SINT);
and a10b(na10a_a10b, X4);


and a35c(na21e_a35c, Y5, G3DVN, G4DV, ICSDN);
and a18d(na18d, Y5, G4DV, G3DVN);
and a21d(na21e_a21d, na18d, CRI2N);
and a21e(na21e_a21e, V1, SINTN);
inv #(0) a21f(SINT_a21f, na21e, SIM_CLK, SIM_RST);

and a13d(na20d_a13d, Z4, na20c, C3RN, PCAV, G1DVN);
and a20c(na20c, C1RD, C2RDN);
and a13e(na20d_a13e, Z4, na12a, PCAV, G3DV, C1RD);
and a12a(na12a, C3RN, C2RDN);
and a20d(na20d_a20d, V1, INTC);
inv a20e(INTCN, na20d, SIM_CLK, SIM_RST);
inv #(0) a12c(INTC, na12b, SIM_CLK, SIM_RST);
and a12b(na12b_a12b, V4, INTCN);
and a19a(na12b_a19a, Y5, PABG1V, TC2A);

and a34c(na27e_a34c, Z4, na34d, C1RD, C3RN, PCAV);
and a34d(na34d, G1DVN, G7DVN, MCFT3);
and a27d(na27d, MCFT3);
and a27e(na27e_a27e, V1, na27d, MCFT1);
inv a27f(MCFT2, na27e, SIM_CLK, SIM_RST);

// 10-175
and a19b(na26b_a19b, Z4, na18e, G1DVN, G7DVN, PCAV);
and a18e(na18e, Z4, C1RDN);
and a26a(na26a, MCFT3);
and a26b(na26b_a26b, V1, na26a, MCFT2);
inv #(0) a26c(MCFT1, na26b, SIM_CLK, SIM_RST);

and a8a(na8a, Y5);
and a35d(na28d_a35d, Y5, na8a, PBG2V, MCFT1);
and a28c(na28c, MCFT1);
and a28d(na28d_a28d, V1, na28c, MCFT2);
inv a28e(MCFT3, na28d, SIM_CLK, SIM_RST);

dia a31b(INTR7N, INTR7, SIM_CLK, SIM_RST);

dia a33b(CRI1N, CRI1, SIM_CLK, SIM_RST);

dia a3b(CRI2N, CRI2, SIM_CLK, SIM_RST);

dia a29b(OCINTN, OCINT, SIM_CLK, SIM_RST);






















endmodule
`default_nettype wire
