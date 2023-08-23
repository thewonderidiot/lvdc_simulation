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
    input wire G3DVN,
    input wire G4DV,
    input wire G6DV,
    input wire G7DV,
    input wire G7DVN,
    input wire ICRV,
    input wire INFOV,
    input wire PBAV,
    input wire Z3,

    output wire ICR2N,
    output wire ICR3N,
    output wire ICR4N,
    output wire ICR6N
);

wire ICR2;
wire ICR3;
wire ICR4;
wire ICR6;

wire na21a;
wire na21a_a21a;
wire na21a_a21b;
assign na21a = na21a_a21a | na21a_a21b;
wire na22b;
wire na23b;
wire na25a;
wire na25a_a24b;
wire na25a_a25a;
assign na25a = na25a_a24b | na25a_a25a;
wire na26b;
wire na27b;
wire na28a;
wire na28a_a28a;
wire na28a_a35b;
assign na28a = na28a_a28a & na28a_a35b;
wire na29b;
wire na29b_a29a;
wire na29b_a29b;
assign na29b = na29b_a29a | na29b_a29b;
wire na30a;
wire na30a_a22a;
wire na30a_a30a;
assign na30a = na30a_a22a & na30a_a30a;
wire na30b;
wire na30b_a23a;
wire na30b_a30b;
assign na30b = na30b_a23a | na30b_a30b;
wire na31a;
wire na31a_a24a;
wire na31a_a31a;
assign na31a = na31a_a24a | na31a_a31a;
wire na31b;
wire na31b_a25b;
wire na31b_a31b;
assign na31b = na31b_a25b & na31b_a31b;
wire na33b;
wire na33b_a33a;
wire na33b_a33b;
assign na33b = na33b_a33a | na33b_a33b;
wire na34a;
wire na34a_a26a;
wire na34a_a34a;
assign na34a = na34a_a26a & na34a_a34a;
wire na34b;
wire na34b_a27a;
wire na34b_a34b;
assign na34b = na34b_a27a | na34b_a34b;
wire na35a;
wire na35a_a2a;
wire na35a_a35a;
assign na35a = na35a_a2a | na35a_a35a;

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
and a2a(na35a_a2a, na27b, G1DVN, G2DV, A3DVN);
and a35a(na35a_a35a, V1, ICR4);
inv a35c(ICR4N, na35a, SIM_CLK, SIM_RST);
inv #(0) a21c(ICR4, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V1, ICR4N);
and a28a(na28a_a28a, Z3, G1DVN, G2DV, PBAV, A3DV);
and a35b(na28a_a35b, INFOV, ICRV);
and a21b(na21a_a21b, na28a);

// 10-53
and a16a(na16b_a16a, na10a, G3DV);



































endmodule
`default_nettype wire
