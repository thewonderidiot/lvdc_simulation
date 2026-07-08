`timescale 1ns/1ps
`default_nettype none

module timing(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire V1,
    input wire V4MOD1,

    input wire AV,
    input wire AVN,
    input wire G1V,
    input wire G1VN,
    input wire G2V,
    input wire G2VN,
    input wire G3V,
    input wire G3VN,
    input wire G4V,
    input wire G4VN,
    input wire G5V,
    input wire G5VN,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire PAV,
    input wire PAVN,
    input wire PBV,
    input wire PBVN,
    input wire PCV,
    input wire PCVN,
    input wire W7,
    input wire Y5,

    output wire A,
    output wire AN,
    output wire G1,
    output wire G1N,
    output wire G2,
    output wire G2N,
    output wire G3,
    output wire G3N,
    output wire G4,
    output wire G4N,
    output wire G5,
    output wire G5N,
    output wire G6,
    output wire G6N,
    output wire G7,
    output wire G7N,
    output wire PA,
    output wire PAN,
    output wire PB,
    output wire PBN,
    output wire PC,
    output wire PCN,
    output wire TBC,
    output wire TBCN
);

wire AB;
wire ABN;

wire na2b;
wire na6b;
wire na8a;
wire na8b;
wire na8b_a2a;
wire na8b_a8b;
assign na8b = na8b_a2a | na8b_a8b;
wire na9a;
wire na9a_a9a;
wire na9a_a9b;
assign na9a = na9a_a9a | na9a_a9b;
wire na9d;
wire na9d_a10d;
wire na9d_a9d;
assign na9d = na9d_a10d | na9d_a9d;
wire na9f;
wire na10a;
wire na10b;
wire na10b_a2c;
wire na10b_a10b;
assign na10b = na10b_a2c | na10b_a10b;
wire na11b;
wire na11b_a11a;
wire na11b_a11b;
assign na11b = na11b_a11a | na11b_a11b;
wire na11d;
wire na11d_a10e;
wire na11d_a11d;
assign na11d = na11d_a10e | na11d_a11d;
wire na12a;
wire na12b;
wire na12b_a6a;
wire na12b_a12b;
assign na12b = na12b_a6a | na12b_a12b;
wire na13a;
wire na13a_a13a;
wire na13a_a13b;
assign na13a = na13a_a13a | na13a_a13b;
wire na13d;
wire na13d_a13d;
wire na13d_a13e;
assign na13d = na13d_a13d | na13d_a13e;
wire na14a;
wire na14b;
wire na14b_a6c;
wire na14b_a14b;
assign na14b = na14b_a6c | na14b_a14b;
wire na15a;
wire na15a_a15a;
wire na15a_a15b;
assign na15a = na15a_a15a | na15a_a15b;
wire na16b;
wire na16b_a16a;
wire na16b_a16b;
assign na16b = na16b_a16a | na16b_a16b;
wire na16d;
wire na16d_a16d;
wire na16d_a16e;
assign na16d = na16d_a16d | na16d_a16e;
wire na17a;
wire na17a_a17a;
wire na17a_a17b;
assign na17a = na17a_a17a | na17a_a17b;
wire na17d;
wire na17e;
wire na18a;
wire na18a_a18a;
wire na18a_a18b;
assign na18a = na18a_a18a | na18a_a18b;
wire na18d;
wire na18d_a18d;
wire na18d_a11f;
assign na18d = na18d_a18d | na18d_a11f;
wire na18e;
wire na19a;
wire na19a_a19a;
wire na19a_a19b;
assign na19a = na19a_a19a | na19a_a19b;
wire na19d;
wire na20b;
wire na20b_a20a;
wire na20b_a20b;
assign na20b = na20b_a20a | na20b_a20b;
wire na20e;
wire na20e_a20d;
wire na20e_a20e;
assign na20e = na20e_a20d | na20e_a20e;
wire na21a;
wire na21a_a21a;
wire na21a_a21b;
assign na21a = na21a_a21a | na21a_a21b;
wire na22a;
wire na22a_a23d;
wire na22a_a22a;
assign na22a = na22a_a23d | na22a_a22a;
wire na22b;
wire na23a;
wire na23b;
wire na23c;
wire na23e;
wire na24b;
wire na25b;
wire na25b_a25a;
wire na25b_a25b;
assign na25b = na25b_a25a | na25b_a25b;
wire na26a;
wire na26a_a24a;
wire na26a_a26a;
assign na26a = na26a_a24a | na26a_a26a;
wire na26c;
wire na27a;
wire na27b;
wire na27c;
wire na29a;
wire na29a_a29a;
wire na29a_a29b;
assign na29a = na29a_a29a | na29a_a29b;
wire na32a;
wire na32a_a32a;
wire na32a_a32b;
assign na32a = na32a_a32a | na32a_a32b;
wire na33a;
wire na33a_a33a;
wire na33a_a33b;
assign na33a = na33a_a33a | na33a_a33b;

// 10-38
and a24a(na26a_a24a, W7, na24b, G5VN, G4VN, G3VN);
and a24b(na24b, G2VN, G6VN, G7VN, AVN);
and a26a(na26a_a26a, V4MOD1, G1);
inv a26b(G1N, na26a, SIM_CLK, SIM_RST);
inv #(0) a33c(G1, na33a, SIM_CLK, SIM_RST);
and a33a(na33a_a33a, V4MOD1, G1N);
and a33b(na33a_a33b, W7, na26c, G7V);
and a26c(na26c, AV);

and a2a(na8b_a2a, W7, na8a);
and a8a(na8a, AV, G1V);
and a8b(na8b_a8b, V4MOD1, G2);
inv a8c(G2N, na8b, SIM_CLK, SIM_RST);
inv #(0) a15c(G2, na15a, SIM_CLK, SIM_RST);
and a15a(na15a_a15a, V4MOD1, G2N);
and a15b(na15a_a15b, W7, na23a, G1VN);
and a23a(na23a, AVN);

and a23b(na23b, W7, AVN);
and a16a(na16b_a16a, na23b, G2V);
and a16b(na16b_a16b, V4MOD1, G3);
inv a16c(G3N, na16b, SIM_CLK, SIM_RST);
inv #(0) a9c(G3, na9a, SIM_CLK, SIM_RST);
and a9a(na9a_a9a, V4MOD1, G3N);
and a9b(na9a_a9b, W7, na2b, G2VN);
and a2b(na2b, AV);

and a2c(na10b_a2c, W7, na10a);
and a10a(na10a, AV, G3V);
and a10b(na10b_a10b, V4MOD1, G4);
inv a10c(G4N, na10b, SIM_CLK, SIM_RST);
inv #(0) a17c(G4, na17a, SIM_CLK, SIM_RST);
and a17a(na17a_a17a, V4MOD1, G4N);
and a17b(na17a_a17b, W7, na23c, G3VN);
and a23c(na23c, AVN);

and a6a(na12b_a6a, W7, na12a);
and a12a(na12a, AVN, G4V);
and a12b(na12b_a12b, V4MOD1, G5);
inv a12c(G5N, na12b, SIM_CLK, SIM_RST);
inv #(0) a19c(G5, na19a, SIM_CLK, SIM_RST);
and a19a(na19a_a19a, V4MOD1, G5N);
and a19b(na19a_a19b, W7, na27a, G4VN);
and a27a(na27a, AV);

and a27b(na27b, W7, AV);
and a20a(na20b_a20a, na27b, G5V);
and a20b(na20b_a20b, V4MOD1, G6);
inv a20c(G6N, na20b, SIM_CLK, SIM_RST);
inv #(0) a13c(G6, na13a, SIM_CLK, SIM_RST);
and a13a(na13a_a13a, V4MOD1, G6N);
and a13b(na13a_a13b, W7, na6b, G5VN);
and a6b(na6b, AVN);

// 10-39
and a6c(na14b_a6c, W7, na14a);
and a14a(na14a, AVN, G6V);
and a14b(na14b_a14b, V4MOD1, G7);
inv a14c(G7N, na14b, SIM_CLK, SIM_RST);
inv #(0) a21c(G7, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V4MOD1, G7N);
and a21b(na21a_a21b, W7, na27c, G6VN);
and a27c(na27c, AV);

and a11a(na11b_a11a, W7, AVN);
and a11b(na11b_a11b, V1, ABN);
inv #(0) a11c(AB, na11b, SIM_CLK, SIM_RST);
inv a18c(ABN, na18a, SIM_CLK, SIM_RST);
and a18a(na18a_a18a, V1, AB);
and a18b(na18a_a18b, W7, AV);

and a25a(na25b_a25a, Y5, AB);
and a25b(na25b_a25b, V4MOD1, AN);
inv #(0) a25c(A, na25b, SIM_CLK, SIM_RST);
inv a32c(AN, na32a, SIM_CLK, SIM_RST);
and a32a(na32a_a32a, V4MOD1, A);
and a32b(na32a_a32b, Y5, ABN);

// 10-40
and a10d(na9d_a10d, W7, na17d, G2VN, G7VN, AVN);
and a17d(na17d, PBVN);
and a9d(na9d_a9d, V4MOD1, PA);
inv a9e(PAN, na9d, SIM_CLK, SIM_RST);
inv #(0) a16f(PA, na16d, SIM_CLK, SIM_RST);
and a16d(na16d_a16d, V4MOD1, PAN);
and a16e(na16d_a16e, Y5, na9f, PBV);
and a9f(na9f, G1V);

and a19d(na19d, Y5, PBV);
and a20d(na20e_a20d, na19d, G3V);
and a20e(na20e_a20e, V1, TBC);
inv a20f(TBCN, na20e, SIM_CLK, SIM_RST);
inv #(0) a13f(TBC, na13d, SIM_CLK, SIM_RST);
and a13d(na13d_a13d, V4MOD1, TBCN);
and a13e(na13d_a13e, Y5, PAV);

// 10-41
and a10e(na11d_a10e, W7, na17e, PAV, PCVN, G7VN);
and a17e(na17e, G2VN, AVN);
and a11d(na11d_a11d, V4MOD1, PB);
inv a11e(PBN, na11d, SIM_CLK, SIM_RST);
inv #(0) a18f(PB, na18d, SIM_CLK, SIM_RST);
and a18d(na18d_a18d, V4MOD1, PBN);
and a11f(na18d_a11f, Y5, na18e, PAVN);
and a18e(na18e, PCV, G1V);

and a23d(na22a_a23d, W7, na23e, PAVN, G7VN);
and a23e(na23e, G2VN, AVN, PBV);
and a22a(na22a_a22a, V4MOD1, PC);
inv a22c(PCN, na22a, SIM_CLK, SIM_RST);
inv #(0) a29c(PC, na29a, SIM_CLK, SIM_RST);
and a29a(na29a_a29a, V4MOD1, PCN);
and a29b(na29a_a29b, Y5, na22b, PBVN);
and a22b(na22b, PAV, G1V);

endmodule
`default_nettype wire
