`timescale 1ns/1ps
`default_nettype none

module disc_op_regs(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire DOR,
    input wire DOS,
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
    input wire INFOV,
    input wire PAAV,
    input wire PABG1V,
    input wire PCINFV,
    input wire Y1,

    output wire DOR1H,
    output wire DOR2H,
    output wire DOR3H,
    output wire DOR4H,
    output wire DOR5H,
    output wire DOR6H,
    output wire DOR7H,
    output wire DOR8H,
    output wire DOR9H,
    output wire DOR10H,
    output wire DOR11H,
    output wire DOR12H,
    output wire DOR13H
);

wire DOR1;
wire DOR1N;
wire DOR2;
wire DOR2N;
wire DOR3;
wire DOR3N;
wire DOR4;
wire DOR4N;
wire DOR5;
wire DOR5N;
wire DOR6;
wire DOR6N;
wire DOR7;
wire DOR7N;
wire DOR8;
wire DOR8N;
wire DOR9;
wire DOR9N;
wire DOR10;
wire DOR10N;
wire DOR11;
wire DOR11N;
wire DOR12;
wire DOR12N;
wire DOR13;
wire DOR13N;

wire na3a;
wire na3a_a3a;
wire na3a_a11b;
assign na3a = na3a_a3a | na3a_a11b;
wire na3b;
wire na3d;
wire na3d_a3d;
wire na3d_a11d;
assign na3d = na3d_a3d | na3d_a11d;
wire na3e;
wire na4b;
wire na4b_a4a;
wire na4b_a4b;
assign na4b = na4b_a4a | na4b_a4b;
wire na4e;
wire na4e_a4d;
wire na4e_a4e;
assign na4e = na4e_a4d | na4e_a4e;
wire na5b;
wire na5b_a5a;
wire na5b_a5b;
assign na5b = na5b_a5a | na5b_a5b;
wire na9b;
wire na9b_a9a;
wire na9b_a9b;
assign na9b = na9b_a9a | na9b_a9b;
wire na9e;
wire na9e_a9d;
wire na9e_a9e;
assign na9e = na9e_a9d | na9e_a9e;
wire na10a;
wire na10a_a10a;
wire na10a_a17b;
assign na10a = na10a_a10a | na10a_a17b;
wire na10b;
wire na10d;
wire na10d_a10d;
wire na10d_a17d;
assign na10d = na10d_a10d | na10d_a17d;
wire na10e;
wire na11a;
wire na11c;
wire na12a;
wire na12a_a12a;
wire na12a_a19b;
assign na12a = na12a_a12a | na12a_a19b;
wire na12b;
wire na13a;
wire na13b;
wire na13b_a13b;
wire na13b_a20a;
assign na13b = na13b_a13b | na13b_a20a;
wire na13d;
wire na13e;
wire na13e_a13e;
wire na13e_a20c;
assign na13e = na13e_a13e | na13e_a20c;
wire na15a;
wire na15a_a15a;
wire na15a_a16b;
assign na15a = na15a_a15a | na15a_a16b;
wire na15b;
wire na15d;
wire na15d_a15d;
wire na15d_a16d;
assign na15d = na15d_a15d | na15d_a16d;
wire na15e;
wire na16a;
wire na16c;
wire na18a;
wire na18b;
wire na18b_a17a;
wire na18b_a18b;
assign na18b = na18b_a17a | na18b_a18b;
wire na18d;
wire na18e;
wire na18e_a17c;
wire na18e_a18e;
assign na18e = na18e_a17c | na18e_a18e;
wire na19a;
wire na21a;
wire na21a_a20b;
wire na21a_a21a;
assign na21a = na21a_a20b | na21a_a21a;
wire na21b;
wire na21d;
wire na21d_a20d;
wire na21d_a21d;
assign na21d = na21d_a20d | na21d_a21d;
wire na21e;
wire na23a;
wire na23a_a23a;
wire na23a_a31b;
assign na23a = na23a_a23a | na23a_a31b;
wire na23b;
wire na23d;
wire na23d_a23d;
wire na23d_a31d;
assign na23d = na23d_a23d | na23d_a31d;
wire na23e;
wire na24a;
wire na24b;
wire na24b_a24b;
wire na24b_a31a;
assign na24b = na24b_a24b | na24b_a31a;
wire na24d;
wire na24e;
wire na24e_a24e;
wire na24e_a31c;
assign na24e = na24e_a24e | na24e_a31c;
wire na26a;
wire na26b;
wire na26b_a26b;
wire na26b_a33a;
wire na26d;
wire na26e;
wire na26e_a26e;
wire na26e_a33c;
assign na26e = na26e_a26e | na26e_a33c;
wire na27a;
wire na27a_a27a;
wire na27a_a33b;
assign na27a = na27a_a27a | na27a_a33b;
wire na27b;
wire na27d;
wire na27d_a27d;
wire na27d_a33d;
assign na27d = na27d_a27d | na27d_a33d;
wire na27e;

// 10-36
and a31a(na24b_a31a, Y1, na24a, PCINFV, G3DVN, G4DV);
and a24a(na24a, DOS);
and a24b(na24b_a24b, V1, DOR7);
inv a24c(DOR7N, na24b, SIM_CLK, SIM_RST);
inv #(0) a23c(DOR7, na23a, SIM_CLK, SIM_RST);
and a23a(na23a_a23a, V1, DOR7N);
and a31b(na23a_a31b, Y1, na23b, PCINFV, G3DVN, G4DV);
and a23b(na23b, DOR);
idh idh1(DOR7H, DOR7, SIM_CLK, SIM_RST);

and a16a(na16a, Y1, PCINFV, G4DVN, G5DV, DOS);
and a9a(na9b_a9a, na16a);
and a9b(na9b_a9b, V1, DOR8);
inv a9c(DOR8N, na9b, SIM_CLK, SIM_RST);
inv #(0) a15c(DOR8, na15a, SIM_CLK, SIM_RST);
and a15a(na15a_a15a, V1, DOR8N);
and a16b(na15a_a16b, Y1, na15b, PCINFV, G4DVN, G5DV);
and a15b(na15b, DOR);
idh idh2(DOR8H, DOR8, SIM_CLK, SIM_RST);

and a17a(na18b_a17a, Y1, na18a, DOS, G5DVN, G6DV);
and a18a(na18a, PCINFV);
and a18b(na18b_a18b, V1, DOR9);
inv a18c(DOR9N, na18b, SIM_CLK, SIM_RST);
inv #(0) a10c(DOR9, na10a, SIM_CLK, SIM_RST);
and a10a(na10a_a10a, V1, DOR9N);
and a17b(na10a_a17b, Y1, na10b, PCINFV, G5DVN, G6DV);
and a10b(na10b, DOR);
idh idh3(DOR9H, DOR9, SIM_CLK, SIM_RST);

and a11a(na11a, Y1, PCINFV, G6DVN, G7DV, DOS);
and a4a(na4b_a4a, na11a);
and a4b(na4b_a4b, V1, DOR10);
inv a4c(DOR10N, na4b, SIM_CLK, SIM_RST);
inv #(0) a3c(DOR10, na3a, SIM_CLK, SIM_RST);
and a3a(na3a_a3a, V1, DOR10N);
and a11b(na3a_a11b, Y1, na3b, PCINFV, G6DVN, G7DV);
and a3b(na3b, DOR);
idh idh4(DOR10H, DOR10, SIM_CLK, SIM_RST);

and a33a(na26b_a33a, Y1, na26a, PCINFV, G7DVN, G1DVN);
and a26a(na26a, DOS);
and a26b(na26b_a26b, V1, DOR11);
inv a26c(DOR11N, na26b, SIM_CLK, SIM_RST);
inv #(0) a27c(DOR11, na27a, SIM_CLK, SIM_RST);
and a27a(na27a_a27a, V1, DOR11N);
and a33b(na27a_a33b, Y1, na27b, PCINFV, G7DVN, G1DVN);
and a27b(na27b, DOR);
idh idh5(DOR11H, DOR11, SIM_CLK, SIM_RST);

and a20a(na13b_a20a, Y1, na13a, PABG1V, DOS);
and a13a(na13a, INFOV);
and a13b(na13b_a13b, V1, DOR12);
inv a13c(DOR12N, na13b, SIM_CLK, SIM_RST);
inv #(0) a21c(DOR12, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V1, DOR12N);
and a20b(na21a_a20b, Y1, na21b, PABG1V, INFOV);
and a21b(na21b, DOR);
idh idh6(DOR12H, DOR12, SIM_CLK, SIM_RST);

// 10-37
and a19a(na19a, Y1, PAAV, G2DV, G3DVN, DOS);
and a5a(na5b_a5a, na19a, INFOV);
and a5b(na5b_a5b, V1, DOR13);
inv a5c(DOR13N, na5b, SIM_CLK, SIM_RST);
inv #(0) a12c(DOR13, na12a, SIM_CLK, SIM_RST);
and a12a(na12a_a12a, V1, DOR13N);
and a19b(na12a_a19b, Y1, na12b, PAAV, G2DV, G3DVN);
and a12b(na12b, INFOV, DOR);
idh idh7(DOR13H, DOR13, SIM_CLK, SIM_RST);

// 10-34
and a31c(na24e_a31c, Y1, na24d, PCINFV, G5DVN, G4DV);
and a24d(na24d, DOS);
and a24e(na24e_a24e, V1, DOR1);
inv a24f(DOR1N, na24e, SIM_CLK, SIM_RST);
inv #(0) a23f(DOR1, na23d, SIM_CLK, SIM_RST);
and a23d(na23d_a23d, V1, DOR1N);
and a31d(na23d_a31d, Y1, na23e, PCINFV, G5DVN, G4DV);
and a23e(na23e, DOR);
idh idh8(DOR1H, DOR1, SIM_CLK, SIM_RST);

and a16c(na16c, Y1, PCINFV, G6DVN, G5DV, DOS);
and a9d(na9e_a9d, na16c);
and a9e(na9e_a9e, V1, DOR2);
inv a9f(DOR2N, na9e, SIM_CLK, SIM_RST);
inv #(0) a15f(DOR2, na15d, SIM_CLK, SIM_RST);
and a15d(na15d_a15d, V1, DOR2N);
and a16d(na15d_a16d, Y1, na15e, PCINFV, G6DVN, G5DV);
and a15e(na15e, DOR);
idh idh9(DOR2H, DOR2, SIM_CLK, SIM_RST);

and a17c(na18e_a17c, Y1, na18d, DOS, G7DVN, G6DV);
and a18d(na18d, PCINFV);
and a18e(na18e_a18e, V1, DOR3);
inv a18f(DOR3N, na18e, SIM_CLK, SIM_RST);
inv #(0) a10f(DOR3, na10d, SIM_CLK, SIM_RST);
and a10d(na10d_a10d, V1, DOR3N);
and a17d(na10d_a17d, Y1, na10e, PCINFV, G7DVN, G6DV);
and a10e(na10e, DOR);
idh idh10(DOR3H, DOR3, SIM_CLK, SIM_RST);

and a11c(na11c, Y1, PCINFV, G7DV, G1DV, DOS);
and a4d(na4e_a4d, na11c);
and a4e(na4e_a4e, V1, DOR4);
inv a4f(DOR4N, na4e, SIM_CLK, SIM_RST);
inv #(0) a3f(DOR4, na3d, SIM_CLK, SIM_RST);
and a3d(na3d_a3d, V1, DOR4N);
and a11d(na3d_a11d, Y1, na3e, PCINFV, G7DV, G1DV);
and a3e(na3e, DOR);
idh idh11(DOR4H, DOR4, SIM_CLK, SIM_RST);

// 10-35
and a33c(na26e_a33c, Y1, na26d, PCINFV, G2DV, G1DVN);
and a26d(na26d, DOS);
and a26e(na26e_a26e, V1, DOR5);
inv a26f(DOR5N, na26e, SIM_CLK, SIM_RST);
inv #(0) a27f(DOR5, na27d, SIM_CLK, SIM_RST);
and a27d(na27d_a27d, V1, DOR5N);
and a33d(na27d_a33d, Y1, na27e, PCINFV, G2DV, G1DVN);
and a27e(na27e, DOR);
idh idh12(DOR5H, DOR5, SIM_CLK, SIM_RST);

and a20c(na13e_a20c, Y1, na13d, PCINFV, G3DV, DOS);
and a13d(na13d, G2DVN);
and a13e(na13e_a13e, V1, DOR6);
inv a13f(DOR6N, na13e, SIM_CLK, SIM_RST);
inv #(0) a21f(DOR6, na21d, SIM_CLK, SIM_RST);
and a21d(na21d_a21d, V1, DOR6N);
and a20d(na21d_a20d, Y1, na21e, PCINFV, G3DV, G2DVN);
and a21e(na21e, DOR);
idh idh13(DOR6H, DOR6, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
