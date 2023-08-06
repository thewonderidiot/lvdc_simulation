`timescale 1ns/1ps
`default_nettype none

module buff_regs_2(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire BRR1,
    input wire G4DVN,
    input wire G5DV,
    input wire G5DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire G7DVN,
    input wire INFOV,
    input wire LTRV,
    input wire MODA,
    input wire MODRR,
    input wire PBAV,
    input wire PCAV,
    input wire Y6,
    input wire Z3,
    input wire Z4,

    output wire MODR1,
    output wire MODR2
);

wire na3b;
wire na3d;
wire na4a;
wire na4b;
wire na4b_a3a;
wire na4b_a4b;
assign na4b = na4b_a3a | na4b_a4b;
wire na4d;
wire na4e;
wire na4e_a3c;
wire na4e_a4e;
assign na4e = na4e_a3c | na4e_a4e;
wire na5a;
wire na5c;
wire na11a;
wire na11b;
wire na11b_a11b;
wire na11b_a18a;
assign na11b = na11b_a11b | na11b_a18a;
wire na11d;
wire na11e;
wire na11e_a11e;
wire na11e_a18b;
assign na11e = na11e_a11e | na11e_a18b;
wire na17a;
wire na17b;
wire na17d;
wire na17e;
wire na26a;
wire na26b;
wire na26b_a26b;
wire na26b_a27a;
assign na26b = na26b_a26b | na26b_a27a;
wire na26d;
wire na26e;
wire na26e_a26e;
wire na26e_a27b;
assign na26e = na26e_a26e | na26e_a27b;
wire na33a;
wire na33b;
wire na33d;
wire na33e;

wire BRD1;
wire BRD1N;
wire BRD2;
wire BRD2N;
wire BRD7;
wire BRD7N;
wire BRD8;
wire BRD8N;
wire MODR1N;
wire MODR2N;

// 10-202
and a18a(na11b_a18a, Z3, na17a, G6DV, G7DVN, PBAV);
and a17a(na17a, LTRV, INFOV);
and a11a(na11a, BRR1);
and a11b(na11b_a11b, V1, na11a, BRD2);
inv a11c(BRD2N, na11b, SIM_CLK, SIM_RST);
inv #(0) a17c(BRD2, na17b, SIM_CLK, SIM_RST);
and a17b(na17b, V1, BRD2N);

and a3a(na4b_a3a, Z3, na3b, PBAV, LTRV, G5DVN);
and a3b(na3b, INFOV, G6DV);
and a4a(na4a, BRR1);
and a4b(na4b_a4b, V1, na4a, BRD8);
inv a4c(BRD8N, na4b, SIM_CLK, SIM_RST);
inv #(0) a5b(BRD8, na5a, SIM_CLK, SIM_RST);
and a5a(na5a, V1, BRD8N);

// 10-209
and a27a(na26b_a27a, Y6, na33a, MODA, G6DV, G5DVN);
and a33a(na33a, PCAV, INFOV);
and a26a(na26a, MODRR);
and a26b(na26b_a26b, V1, na26a, MODR2);
inv a26c(MODR2N, na26b, SIM_CLK, SIM_RST);
inv #(0) a33c(MODR2, na33b, SIM_CLK, SIM_RST);
and a33b(na33b, V1, MODR2N);

// 10-210
and a18b(na11e_a18b, Z4, na17d, G5DV, G6DVN, PBAV);
and a17d(na17d, LTRV, INFOV);
and a11d(na11d, BRR1);
and a11e(na11e_a11e, V1, na11d, BRD1);
inv a11f(BRD1N, na11e, SIM_CLK, SIM_RST);
inv #(0) a17f(BRD1, na17e, SIM_CLK, SIM_RST);
and a17e(na17e, V1, BRD1N);

and a3c(na4e_a3c, Z4, na3d, PBAV, LTRV, G4DVN);
and a3d(na3d, INFOV, G5DV);
and a4d(na4d, BRR1);
and a4e(na4e_a4e, V1, na4d, BRD7);
inv a4f(BRD7N, na4e, SIM_CLK, SIM_RST);
inv #(0) a5d(BRD7, na5c, SIM_CLK, SIM_RST);
and a5c(na5c, V1, BRD7N);

// 10-211
and a27b(na26e_a27b, Y6, na33d, MODA, G5DV, G4DVN);
and a33d(na33d, PCAV, INFOV);
and a26d(na26d, MODRR);
and a26e(na26e_a26e, V1, na26d, MODR1);
inv a26f(MODR1N, na26e, SIM_CLK, SIM_RST);
inv #(0) a33f(MODR1, na33e, SIM_CLK, SIM_RST);
and a33e(na33e, V1, MODR1N);

endmodule
`default_nettype wire
