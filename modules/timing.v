`timescale 1ns/1ps
`default_nettype none

module timing(
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
wor na8b;
wor na9a;
wor na9d;
wire na9f;
wire na10a;
wor na10b;
wor na11b;
wor na11d;
wire na12a;
wor na12b;
wor na13a;
wor na13d;
wire na14a;
wor na14b;
wor na15a;
wor na16b;
wor na16d;
wor na17a;
wire na17d;
wire na17e;
wor na18a;
wor na18d;
wire na18e;
wor na19a;
wire na19d;
wor na20b;
wor na20e;
wor na21a;
wor na22a;
wire na22b;
wire na23a;
wire na23b;
wire na23c;
wire na23e;
wire na24b;
wor na25b;
wor na26a;
wire na26c;
wire na27a;
wire na27b;
wire na27c;
wor na29a;
wor na32a;
wor na33a;

// 10-38
a a24a(.clk(W7), .exp(na24b), .a1(G5VN), .a2(G4VN), .a3(G3VN), .y(na26a));
a a24b(.a1(G2VN), .a2(G6VN), .a3(G7VN), .a4(AVN), .y(na24b));
a a26a(.clk(V4MOD1), .a1(G1), .y(na26a));
i a26b(.a(na26a), .y(G1N));
i #(0) a33c(.a(na33a), .y(G1));
a a33a(.clk(V4MOD1), .a1(G1N), .y(na33a));
a a33b(.clk(W7), .exp(na26c), .a1(G7V), .y(na33a));
a a26c(.a1(AV), .y(na26c));

a a2a(.clk(W7), .exp(na8a), .y(na8b));
a a8a(.a1(AV), .a2(G1V), .y(na8a));
a a8b(.clk(V4MOD1), .a1(G2), .y(na8b));
i a8c(.a(na8b), .y(G2N));
i #(0) a15c(.a(na15a), .y(G2));
a a15a(.clk(V4MOD1), .a1(G2N), .y(na15a));
a a15b(.clk(W7), .exp(na23a), .a1(G1VN), .y(na15a));
a a23a(.a1(AVN), .y(na23a));

a a23b(.clk(W7), .a1(AVN), .y(na23b));
a a16a(.exp(na23b), .a1(G2V), .y(na16b));
a a16b(.clk(V4MOD1), .a1(G3), .y(na16b));
i a16c(.a(na16b), .y(G3N));
i #(0) a9c(.a(na9a), .y(G3));
a a9a(.clk(V4MOD1), .a1(G3N), .y(na9a));
a a9b(.clk(W7), .exp(na2b), .a1(G2VN), .y(na9a));
a a2b(.a1(AV), .y(na2b));

a a2c(.clk(W7), .exp(na10a), .y(na10b));
a a10a(.a1(AV), .a2(G3V), .y(na10a));
a a10b(.clk(V4MOD1), .a1(G4), .y(na10b));
i a10c(.a(na10b), .y(G4N));
i #(0) a17c(.a(na17a), .y(G4));
a a17a(.clk(V4MOD1), .a1(G4N), .y(na17a));
a a17b(.clk(W7), .exp(na23c), .a1(G3VN), .y(na17a));
a a23c(.a1(AVN), .y(na23c));

a a6a(.clk(W7), .exp(na12a), .y(na12b));
a a12a(.a1(AVN), .a2(G4V), .y(na12a));
a a12b(.clk(V4MOD1), .a1(G5), .y(na12b));
i a12c(.a(na12b), .y(G5N));
i #(0) a19c(.a(na19a), .y(G5));
a a19a(.clk(V4MOD1), .a1(G5N), .y(na19a));
a a19b(.clk(W7), .exp(na27a), .a1(G4VN), .y(na19a));
a a27a(.a1(AV), .y(na27a));

a a27b(.clk(W7), .a1(AV), .y(na27b));
a a20a(.exp(na27b), .a1(G5V), .y(na20b));
a a20b(.clk(V4MOD1), .a1(G6), .y(na20b));
i a20c(.a(na20b), .y(G6N));
i #(0) a13c(.a(na13a), .y(G6));
a a13a(.clk(V4MOD1), .a1(G6N), .y(na13a));
a a13b(.clk(W7), .exp(na6b), .a1(G5VN), .y(na13a));
a a6b(.a1(AVN), .y(na6b));

// 10-39
a a6c(.clk(W7), .exp(na14a), .y(na14b));
a a14a(.a1(AVN), .a2(G6V), .y(na14a));
a a14b(.clk(V4MOD1), .a1(G7), .y(na14b));
i a14c(.a(na14b), .y(G7N));
i #(0) a21c(.a(na21a), .y(G7));
a a21a(.clk(V4MOD1), .a1(G7N), .y(na21a));
a a21b(.clk(W7), .exp(na27c), .a1(G6VN), .y(na21a));
a a27c(.a1(AV), .y(na27c));

a a11a(.clk(W7), .a1(AVN), .y(na11b));
a a11b(.clk(V1), .a1(ABN), .y(na11b));
i #(0) a11c(.a(na11b), .y(AB));
i a18c(.a(na18a), .y(ABN));
a a18a(.clk(V1), .a1(AB), .y(na18a));
a a18b(.clk(W7), .a1(AV), .y(na18a));

a a25a(.clk(Y5), .a1(AB), .y(na25b));
a a25b(.clk(V4MOD1), .a1(AN), .y(na25b));
i #(0) a25c(.a(na25b), .y(A));
i a32c(.a(na32a), .y(AN));
a a32a(.clk(V4MOD1), .a1(A), .y(na32a));
a a32b(.clk(Y5), .a1(ABN), .y(na32a));

// 10-40
a a10d(.clk(W7), .exp(na17d), .a1(G2VN), .a2(G7VN), .a3(AVN), .y(na9d));
a a17d(.a1(PBVN), .y(na17d));
a a9d(.clk(V4MOD1), .a1(PA), .y(na9d));
i a9e(.a(na9d), .y(PAN));
i #(0) a16f(.a(na16d), .y(PA)); 
a a16d(.clk(V4MOD1), .a1(PAN), .y(na16d));
a a16e(.clk(Y5), .exp(na9f), .a1(PBV), .y(na16d));
a a9f(.a1(G1V), .y(na9f));

a a19d(.clk(Y5), .a1(PBV), .y(na19d));
a a20d(.exp(na19d), .a1(G3V), .y(na20e));
a a20e(.clk(V1), .a1(TBC), .y(na20e));
i a20f(.a(na20e), .y(TBCN));
i #(0) a13f(.a(na13d), .y(TBC));
a a13d(.clk(V4MOD1), .a1(TBCN), .y(na13d));
a a13e(.clk(Y5), .a1(PAV), .y(na13d));

// 10-41
a a10e(.clk(W7), .exp(na17e), .a1(PAV), .a2(PCVN), .a3(G7VN), .y(na11d));
a a17e(.a1(G2VN), .a2(AVN), .y(na17e));
a a11d(.clk(V4MOD1), .a1(PB), .y(na11d));
i a11e(.a(na11d), .y(PBN));
i #(0) a18f(.a(na18d), .y(PB));
a a18d(.clk(V4MOD1), .a1(PBN), .y(na18d));
a a11f(.clk(Y5), .exp(na18e), .a1(PAVN), .y(na18d));
a a18e(.a1(PCV), .a2(G1V), .y(na18e));

a a23d(.clk(W7), .exp(na23e), .a1(PAVN), .a2(G7VN), .y(na22a));
a a23e(.a1(G2VN), .a2(AVN), .a3(PBV), .y(na23e));
a a22a(.clk(V4MOD1), .a1(PC), .y(na22a));
i a22c(.a(na22a), .y(PCN));
i #(0) a29c(.a(na29a), .y(PC));
a a29a(.clk(V4MOD1), .a1(PCN), .y(na29a));
a a29b(.clk(Y5), .exp(na22b), .a1(PBVN), .y(na29a));
a a22b(.a1(PAV), .a2(G1V), .y(na22b));

endmodule
`default_nettype wire
