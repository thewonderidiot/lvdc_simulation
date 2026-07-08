`timescale 1ns/1ps
`default_nettype none

module int_cont_regs(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire A3DV,
    input wire A3DVN,
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
    input wire ICRV,
    input wire INFOV,
    input wire PAAVN,
    input wire PBAV,
    input wire PCAV,
    input wire PCINFV,
    input wire Z3,

    output wire ICR1,
    output wire ICR1N,
    output wire ICR2N,
    output wire ICR3N,
    output wire ICR4N,
    output wire ICR5N,
    output wire ICR6N,
    output wire ICR7N,
    output wire ICR8N,
    output wire ICR9,
    output wire ICR9N,
    output wire ICR10N,
    output wire ICR11N,
    output wire ICR12N,
    output wire ICR13N
);

wire ICR2;
wire ICR3;
wire ICR4;
wire ICR5;
wire ICR6;
wire ICR7;
wire ICR8;
wire ICR10;
wire ICR11;
wire ICR12;
wire ICR13;

wire na1b;
wire na1b_a1a;
wire na1b_a1b;
assign na1b = na1b_a1a | na1b_a1b;
wire na8a;
wire na8a_a8a;
wire na8a_a8b;
assign na8a = na8a_a8a | na8a_a8b;
wire na9a;
wire na9b;
wire na10a;
wire na10a_a10a;
wire na10a_a17a;
assign na10a = na10a_a10a & na10a_a17a;
wire na10b;
wire na10b_a10b;
wire na10b_a18a;
assign na10b = na10b_a10b | na10b_a18a;
wire na10d;
wire na10d_a10d;
wire na10d_a17c;
assign na10d = na10d_a10d & na10d_a17c;
wire na10e;
wire na10e_a10e;
wire na10e_a18c;
assign na10e = na10e_a10e | na10e_a18c;
wire na12a;
wire na12a_a12a;
wire na12a_a19a;
assign na12a = na12a_a12a | na12a_a19a;
wire na12d;
wire na12d_a12d;
wire na12d_a19c;
assign na12d = na12d_a12d | na12d_a19c;
wire na13a;
wire na13a_a12b;
wire na13a_a13a;
assign na13a = na13a_a12b | na13a_a13a;
wire na13d;
wire na13d_a12e;
wire na13d_a13d;
assign na13d = na13d_a12e | na13d_a13d;
wire na16b;
wire na16b_a16a;
wire na16b_a16b;
assign na16b = na16b_a16a | na16b_a16b;
wire na16e;
wire na16e_a16d;
wire na16e_a16e;
assign na16e = na16e_a16d | na16e_a16e;
wire na17b;
wire na17d;
wire na18b;
wire na18d;
wire na19b;
wire na19b_a13b;
wire na19b_a19b;
assign na19b = na19b_a13b & na19b_a19b;
wire na19d;
wire na19d_a13e;
wire na19d_a19d;
assign na19d = na19d_a13e & na19d_a19d;
wire na21a;
wire na21a_a21a;
wire na21a_a21b;
assign na21a = na21a_a21a | na21a_a21b;
wire na21d;
wire na21d_a21d;
wire na21d_a21e;
assign na21d = na21d_a21d | na21d_a21e;
wire na22b;
wire na22d;
wire na23b;
wire na23d;
wire na25a;
wire na25a_a24b;
wire na25a_a25a;
assign na25a = na25a_a24b | na25a_a25a;
wire na25d;
wire na25d_a24d;
wire na25d_a25d;
assign na25d = na25d_a24d | na25d_a25d;
wire na26b;
wire na26d;
wire na27b;
wire na27d;
wire na28b;
wire na28b_a28b;
wire na28b_a35b;
assign na28b = na28b_a28b & na28b_a35b;
wire na28d;
wire na28d_a28d;
wire na28d_a35e;
assign na28d = na28d_a28d & na28d_a35e;
wire na29b;
wire na29b_a29a;
wire na29b_a29b;
assign na29b = na29b_a29a | na29b_a29b;
wire na29e;
wire na29e_a29d;
wire na29e_a29e;
assign na29e = na29e_a29d | na29e_a29e;
wire na30a;
wire na30a_a22a;
wire na30a_a30a;
assign na30a = na30a_a22a & na30a_a30a;
wire na30b;
wire na30b_a23a;
wire na30b_a30b;
assign na30b = na30b_a23a | na30b_a30b;
wire na30d;
wire na30d_a22c;
wire na30d_a30d;
assign na30d = na30d_a22c & na30d_a30d;
wire na30e;
wire na30e_a23c;
wire na30e_a30e;
assign na30e = na30e_a23c | na30e_a30e;
wire na31a;
wire na31a_a24a;
wire na31a_a31a;
assign na31a = na31a_a24a | na31a_a31a;
wire na31b;
wire na31b_a25b;
wire na31b_a31b;
assign na31b = na31b_a25b & na31b_a31b;
wire na31d;
wire na31d_a24c;
wire na31d_a31d;
assign na31d = na31d_a24c | na31d_a31d;
wire na31e;
wire na31e_a25e;
wire na31e_a31e;
assign na31e = na31e_a25e & na31e_a31e;
wire na33b;
wire na33b_a33a;
wire na33b_a33b;
assign na33b = na33b_a33a | na33b_a33b;
wire na33e;
wire na33e_a33d;
wire na33e_a33e;
assign na33e = na33e_a33d | na33e_a33e;
wire na34a;
wire na34a_a26a;
wire na34a_a34a;
assign na34a = na34a_a26a & na34a_a34a;
wire na34b;
wire na34b_a27a;
wire na34b_a34b;
assign na34b = na34b_a27a | na34b_a34b;
wire na34d;
wire na34d_a26c;
wire na34d_a34d;
assign na34d = na34d_a26c & na34d_a34d;
wire na34e;
wire na34e_a27c;
wire na34e_a34e;
assign na34e = na34e_a27c | na34e_a34e;
wire na35a;
wire na35a_a28a;
wire na35a_a35a;
assign na35a = na35a_a28a | na35a_a35a;
wire na35d;
wire na35d_a28c;
wire na35d_a35d;
assign na35d = na35d_a28c | na35d_a35d;

// 10-52
and a29a(na29b_a29a, na30a);
and a30a(na30a_a30a, G3DVN, G4DV);
and a22a(na30a_a22a, Z3, ICRV, PBAV, INFOV, A3DVN);
and a29b(na29b_a29b, V1, ICR6);
inv a29c(ICR6N, na29b, SIM_CLK, SIM_RST);
inv #(0) a30c(ICR6, na30b, SIM_CLK, SIM_RST);
and a30b(na30b_a30b, V1, ICR6N);
and a22b(na22b, Z3, ICRV, INFOV, PBAV, A3DV);
and a23a(na30b_a23a, na22b, G3DVN, G4DV);

and a23b(na23b, Z3, ICRV, INFOV, PBAV);
and a24a(na31a_a24a, na23b, G7DVN, G6DV, A3DVN);
and a31a(na31a_a31a, V1, ICR2);
inv a31c(ICR2N, na31a, SIM_CLK, SIM_RST);
inv #(0) a25c(ICR2, na25a, SIM_CLK, SIM_RST);
and a25a(na25a_a25a, V1, ICR2N);
and a24b(na25a_a24b, Z3, na31b, A3DV, G6DV, G7DVN);
and a31b(na31b_a31b, INFOV, PBAV);
and a25b(na31b_a25b, ICRV);

and a33a(na33b_a33a, na34a);
and a34a(na34a_a34a, G1DV, G7DV);
and a26a(na34a_a26a, Z3, A3DVN, ICRV, INFOV, PBAV);
and a33b(na33b_a33b, V1, ICR3);
inv a33c(ICR3N, na33b, SIM_CLK, SIM_RST);
inv #(0) a34c(ICR3, na34b, SIM_CLK, SIM_RST);
and a34b(na34b_a34b, V1, ICR3N);
and a26b(na26b, Z3, ICRV, INFOV, PBAV, A3DV);
and a27a(na34b_a27a, na26b, G1DV, G7DV);

and a27b(na27b, Z3, ICRV, INFOV, PBAV);
and a28a(na35a_a28a, na27b, G1DVN, G2DV, A3DVN);
and a35a(na35a_a35a, V1, ICR4);
inv a35c(ICR4N, na35a, SIM_CLK, SIM_RST);
inv #(0) a21c(ICR4, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V1, ICR4N);
and a28b(na28b_a28b, Z3, G1DVN, G2DV, PBAV, A3DV);
and a35b(na28b_a35b, INFOV, ICRV);
and a21b(na21a_a21b, na28b);

// 10-53
and a16a(na16b_a16a, na10a, G3DV);
and a10a(na10a_a10a, PBAV);
and a17a(na10a_a17a, Z3, G2DVN, ICRV, INFOV, A3DVN);
and a16b(na16b_a16b, V1, ICR5);
inv a16c(ICR5N, na16b, SIM_CLK, SIM_RST);
inv #(0) a10c(ICR5, na10b, SIM_CLK, SIM_RST);
and a10b(na10b_a10b, V1, ICR5N);
and a17b(na17b, Z3, G2DVN, PBAV, G3DV);
and a18a(na10b_a18a, na17b, INFOV, ICRV, A3DV);

and a18b(na18b, PBAV, G5DV, INFOV);
and a19a(na12a_a19a, Z3, na18b, ICRV, G6DVN, A3DVN);
and a12a(na12a_a12a, V1, ICR1);
inv a12c(ICR1N, na12a, SIM_CLK, SIM_RST);
inv #(0) a13c(ICR1, na13a, SIM_CLK, SIM_RST);
and a13a(na13a_a13a, V1, ICR1N);
and a19b(na19b_a19b, Z3, A3DV, INFOV, G5DV, G6DVN);
and a12b(na13a_a12b, na19b, PBAV);
and a13b(na19b_a13b, ICRV);

// 10-56
and a29d(na29e_a29d, na30d);
and a30d(na30d_a30d, G4DVN, G5DV);
and a22c(na30d_a22c, Z3, ICRV, PBAV, INFOV, A3DVN);
and a29e(na29e_a29e, V1, ICR7);
inv a29f(ICR7N, na29e, SIM_CLK, SIM_RST);
inv #(0) a30f(ICR7, na30e, SIM_CLK, SIM_RST);
and a30e(na30e_a30e, V1, ICR7N);
and a22d(na22d, Z3, ICRV, INFOV, PBAV, A3DV);
and a23c(na30e_a23c, na22d, G4DVN, G5DV);

and a23d(na23d, Z3, ICRV, INFOV, PBAV);
and a24c(na31d_a24c, na23d, G5DVN, G6DV, A3DVN);
and a31d(na31d_a31d, V1, ICR8);
inv a31f(ICR8N, na31d, SIM_CLK, SIM_RST);
inv #(0) a25f(ICR8, na25d, SIM_CLK, SIM_RST);
and a25d(na25d_a25d, V1, ICR8N);
and a24d(na25d_a24d, na31e, Z3, A3DV, G6DV, G5DVN);
and a31e(na31e_a31e, INFOV, PBAV);
and a25e(na31e_a25e, ICRV);

and a33d(na33e_a33d, na34d);
and a34d(na34d_a34d, G6DVN, G7DV);
and a26c(na34d_a26c, Z3, A3DVN, ICRV, INFOV, PBAV);
and a33e(na33e_a33e, V1, ICR9);
inv a33f(ICR9N, na33e, SIM_CLK, SIM_RST);
inv #(0) a34f(ICR9, na34e, SIM_CLK, SIM_RST);
and a34e(na34e_a34e, V1, ICR9N);
and a26d(na26d, Z3, ICRV, INFOV, PBAV, A3DV);
and a27c(na34e_a27c, na26d, G6DVN, G7DV);

and a27d(na27d, Z3, ICRV, INFOV, PBAV);
and a28c(na35d_a28c, na27d, G1DVN, G7DVN, A3DVN);
and a35d(na35d_a35d, V1, ICR10);
inv a35f(ICR10N, na35d, SIM_CLK, SIM_RST);
inv #(0) a21f(ICR10, na21d, SIM_CLK, SIM_RST);
and a21d(na21d_a21d, V1, ICR10N);
and a28d(na28d_a28d, Z3, G1DVN, G7DVN, PBAV, A3DV);
and a35e(na28d_a35e, INFOV, ICRV);
and a21e(na21d_a21e, na28d);

// 10-57
and a16d(na16e_a16d, G1DV, na10d);
and a10d(na10d_a10d, PCAV, PAAVN);
and a17c(na10d_a17c, Z3, G2DVN, ICRV, INFOV, A3DVN);
and a16e(na16e_a16e, V1, ICR11);
inv a16f(ICR11N, na16e, SIM_CLK, SIM_RST);
inv #(0) a10f(ICR11, na10e, SIM_CLK, SIM_RST);
and a10e(na10e_a10e, V1, ICR11N);
and a17d(na17d, Z3, PAAVN, G2DVN, PCAV, G1DV);
and a18c(na10e_a18c, na17d, INFOV, ICRV, A3DV);

and a18d(na18d, G2DV, PCINFV);
and a19c(na12d_a19c, Z3, na18d, ICRV, G3DVN, A3DVN);
and a12d(na12d_a12d, V1, ICR12);
inv a12f(ICR12N, na12d, SIM_CLK, SIM_RST); 
inv #(0) a13f(ICR12, na13d, SIM_CLK, SIM_RST);
and a13d(na13d_a13d, V1, ICR12N);
and a19d(na19d_a19d, Z3, A3DV, PCINFV, G2DV, G3DVN);
and a12e(na13d_a12e, na19d);
and a13e(na19d_a13e, ICRV);

and a1a(na1b_a1a, na9a, G3DV);
and a9a(na9a, Z3, PCINFV, G4DVN, ICRV, A3DVN);
and a1b(na1b_a1b, V1, ICR13);
inv a1c(ICR13N, na1b, SIM_CLK, SIM_RST);
inv #(0) a8c(ICR13, na8a, SIM_CLK, SIM_RST);
and a8a(na8a_a8a, V1, ICR13N);
and a9b(na9b, Z3, ICRV, G4DVN, G3DV, A3DV);
and a8b(na8a_a8b, na9b, PCINFV);

endmodule
`default_nettype wire
