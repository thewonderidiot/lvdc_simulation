`timescale 1ns/1ps
`default_nettype none

module address_decode_3(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire A3DV,
    input wire A3DVN,
    input wire A4DV,
    input wire A4DVN,
    input wire A5DV,
    input wire A5DVN,
    input wire A6DV,
    input wire A6DVN,
    input wire A7DVN,
    input wire ADV,
    input wire DARA,
    input wire DARO,
    input wire DCALN,
    input wire ETCC,
    input wire ETCCN,
    input wire ETTS,
    input wire ETTSN,
    input wire G1DV,
    input wire G3DVN,
    input wire LGAV,
    input wire LRR,
    input wire LTRV,
    input wire PARSV,
    input wire PBAV,
    input wire PCG2V,
    input wire RESMV,
    input wire TRP,
    input wire W8,
    input wire X3,
    input wire Y8,

    output wire CODE,
    output wire EMA,
    output wire LTRDN,
    output wire SSDO
);

wire CODEN;
wire EMAN;
wire L1A;
wire L1AN;
wire L2A;
wire L2AN;
wire L3A;
wire L3AN;
wire L4A;
wire L4AN;
wire L5A;
wire L5AN;
wire LTRD;
wire MODA;
wire MODAN;
wire SSDON;

wire na2a;
wire na2b;
wire na5c;
wire na7a;
wire na7b;
wire na7b_a7b;
wire na7b_a14b;
assign na7b = na7b_a7b | na7b_a14b;
wire na8a;
wire na8b;
wire na9b;
wire na9b_a9a;
wire na9b_a9b;
assign na9b = na9b_a9a | na9b_a9b;
wire na10b;
wire na10d;
wire na13a;
wire na13a_a5a;
wire na13a_a5b;
wire na13a_a13a;
assign na13a = na13a_a5a | na13a_a5b | na13a_a13a;
wire na13b;
wire na13c;
wire na14a;
wire na15b;
wire na15b_a15a;
wire na15b_a15b;
assign na15b = na15b_a15a | na15b_a15b;
wire na16a;
wire na16b;
wire na17a;
wire na17b;
wire na17b_a17b;
wire na17b_a24b;
assign na17b = na17b_a17b | na17b_a24b;
wire na17d;
wire na17e;
wire na17e_a17e;
wire na17e_a24d;
assign na17e = na17e_a17e | na17e_a24d;
wire na18b;
wire na18b_a10a;
wire na18b_a18b;
assign na18b = na18b_a10a | na18b_a18b;
wire na18c;
wire na18e;
wire na18e_a10c;
wire na18e_a18e;
assign na18e = na18e_a10c | na18e_a18e;
wire na18f;
wire na22a;
wire na22b;
wire na23a;
wire na23b;
wire na23b_a23b;
wire na23b_a30b;
assign na23b = na23b_a23b | na23b_a30b;
wire na24a;
wire na24c;
wire na25b;
wire na25b_a18a;
wire na25b_a25b;
assign na25b = na25b_a18a & na25b_a25b;
wire na25c;
wire na25c_a18d;
wire na25c_a25c;
assign na25c = na25c_a18d & na25c_a25c;
wire na26b;
wire na26b_a26a;
wire na26b_a26b;
assign na26b = na26b_a26a | na26b_a26b;
wire na26e;
wire na26e_a26d;
wire na26e_a26e;
assign na26e = na26e_a26d | na26e_a26e;
wire na27a;
wire na27a_a27a;
wire na27a_a27b;
assign na27a = na27a_a27a | na27a_a27b;
wire na27d;
wire na29b;
wire na29b_a29a;
wire na29b_a29b;
assign na29b = na29b_a29a | na29b_a29b;
wire na30a;
wire na31a;
wire na31b;
wire na32a;
wire na32b;
wire na32b_a25a;
wire na32b_a32b;
assign na32b = na32b_a25a | na32b_a32b;
wire na33a;
wire na33b;
wire na34a;

// 10-28
and a30a(na30a, X3, LGAV, A3DV, A4DVN, A5DVN);
and a29a(na29b_a29a, na30a, PCG2V);
and a22a(na22a, LRR);
and a29b(na29b_a29b, V1, na22a, L1A);
inv a29c(L1AN, na29b, SIM_CLK, SIM_RST);
inv #(0) a22c(L1A, na22b, SIM_CLK, SIM_RST);
and a22b(na22b, V1, L1AN);

and a30b(na23b_a30b, X3, na23a, A3DVN, A4DV, A5DVN);
and a23a(na23a, PCG2V, LGAV);
and a31a(na31a, LRR);
and a23b(na23b_a23b, V1, na31a, L2A);
inv a23c(L2AN, na23b, SIM_CLK, SIM_RST);
inv #(0) a31c(L2A, na31b, SIM_CLK, SIM_RST);
and a31b(na31b, V1, L2AN);

and a16a(na16a, X3, LGAV, A4DV, A5DVN, PCG2V);
and a15a(na15b_a15a, na16a, A3DV);
and a8a(na8a, LRR);
and a15b(na15b_a15b, V1, na8a, L3A);
inv a15c(L3AN, na15b, SIM_CLK, SIM_RST);
inv #(0) a8c(L3A, na8b, SIM_CLK, SIM_RST);
and a8b(na8b, V1, L3AN);

and a16b(na16b, X3, LGAV, A3DVN, A4DVN, PCG2V);
and a9a(na9b_a9a, na16b, A5DV);
and a2a(na2a, LRR);
and a9b(na9b_a9b, V1, na2a, L4A);
inv a9c(L4AN, na9b, SIM_CLK, SIM_RST);
inv #(0) a2c(L4A, na2b, SIM_CLK, SIM_RST);
and a2b(na2b, V1, L4AN);

and a25a(na32b_a25a, X3, na32a, A3DV, A4DVN, A5DV);
and a32a(na32a, PCG2V, LGAV);
and a33a(na33a, LRR);
and a32b(na32b_a32b, V1, na33a, L5A);
inv a32c(L5AN, na32b, SIM_CLK, SIM_RST);
inv #(0) a33c(L5A, na33b, SIM_CLK, SIM_RST);
and a33b(na33b, V1, L5AN);

and a25b(na25b_a25b, X3, LTRV, DCALN, G1DV, G3DVN);
and a18a(na25b_a18a, PBAV);
and a26a(na26b_a26a, na25b, ADV);
and a26b(na26b_a26b, V1, LTRD);
inv a26c(LTRDN, na26b, SIM_CLK, SIM_RST);
inv #(0) a27c(LTRD, na27a, SIM_CLK, SIM_RST);
and a27a(na27a_a27a, V1, LTRDN);
and a27b(na27a_a27b, W8, TRP);

// 10-29
and a24a(na24a, W8, DARA, A3DVN, A4DV, A5DVN);
and a24b(na17b_a24b, na24a, A6DV, A7DVN, ETCCN);
and a17a(na17a, PARSV);
and a17b(na17b_a17b, V1, na17a, SSDO);
inv a17c(SSDON, na17b, SIM_CLK, SIM_RST);
hci #(0) a11a(SSDO, na18b, SIM_CLK, SIM_RST);
and a18b(na18b_a18b, V1, na18c, SSDON);
and a18c(na18c, V1);
and a10a(na18b_a10a, Y8, na10b, ETTS);
and a10b(na10b, Y8);

and a14a(na14a, Y8, DARO, A3DVN, A4DVN, A5DV);
and a14b(na7b_a14b, na14a, A6DVN, A7DVN, ETTSN);
and a7a(na7a, PARSV);
and a7b(na7b_a7b, V1, na7a, EMA);
inv a7c(EMAN, na7b, SIM_CLK, SIM_RST);
hci #(0) a6a(EMA, na13a, SIM_CLK, SIM_RST);
and a13a(na13a_a13a, V1, na13b, EMAN);
and a13b(na13b, V1);
and a13c(na13c, W8, PBAV, RESMV);
and a5a(na13a_a5a, W8, na13c, ETCC);
and a5b(na13a_a5b, Y8, na5c, ETTS);
and a5c(na5c, Y8);

// 10-26
and a25c(na25c_a25c, W8, A3DV, A4DVN, A5DVN, A6DVN);
and a18d(na25c_a18d, DARA);
and a26d(na26e_a26d, na25c, A7DVN);
and a34a(na34a, PARSV);
and a26e(na26e_a26e, V1, na34a, MODA);
inv a26f(MODAN, na26e, SIM_CLK, SIM_RST);
inv #(0) a27f(MODA, na27d, SIM_CLK, SIM_RST);
and a27d(na27d, V1, MODAN);

// 10-27
and a24c(na24c, W8, DARA, A3DV, A4DVN, A5DV);
and a24d(na17e_a24d, na24c, A6DV, A7DVN, ETCCN);
and a17d(na17d, PARSV);
and a17e(na17e_a17e, V1, na17d, CODE);
inv a17f(CODEN, na17e, SIM_CLK, SIM_RST);
hci #(0) a11b(CODE, na18e, SIM_CLK, SIM_RST);
and a18e(na18e_a18e, V1, na18f, CODEN);
and a18f(na18f, V1);
and a10c(na18e_a10c, Y8, na10d, ETTS);
and a10d(na10d, Y8);

endmodule
`default_nettype wire
