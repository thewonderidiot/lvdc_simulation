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
and a24a(na26a, W7, na24b, G5VN, G4VN, G3VN);
and a24b(na24b, G2VN, G6VN, G7VN, AVN);
and a26a(na26a, V4MOD1, G1);
inv a26b(G1N, na26a);
inv #(0) a33c(G1, na33a);
and a33a(na33a, V4MOD1, G1N);
and a33b(na33a, W7, na26c, G7V);
and a26c(na26c, AV);

and a2a(na8b, W7, na8a);
and a8a(na8a, AV, G1V);
and a8b(na8b, V4MOD1, G2);
inv a8c(G2N, na8b);
inv #(0) a15c(G2, na15a);
and a15a(na15a, V4MOD1, G2N);
and a15b(na15a, W7, na23a, G1VN);
and a23a(na23a, AVN);

and a23b(na23b, W7, AVN);
and a16a(na16b, na23b, G2V);
and a16b(na16b, V4MOD1, G3);
inv a16c(G3N, na16b);
inv #(0) a9c(G3, na9a);
and a9a(na9a, V4MOD1, G3N);
and a9b(na9a, W7, na2b, G2VN);
and a2b(na2b, AV);

and a2c(na10b, W7, na10a);
and a10a(na10a, AV, G3V);
and a10b(na10b, V4MOD1, G4);
inv a10c(G4N, na10b);
inv #(0) a17c(G4, na17a);
and a17a(na17a, V4MOD1, G4N);
and a17b(na17a, W7, na23c, G3VN);
and a23c(na23c, AVN);

and a6a(na12b, W7, na12a);
and a12a(na12a, AVN, G4V);
and a12b(na12b, V4MOD1, G5);
inv a12c(G5N, na12b);
inv #(0) a19c(G5, na19a);
and a19a(na19a, V4MOD1, G5N);
and a19b(na19a, W7, na27a, G4VN);
and a27a(na27a, AV);

and a27b(na27b, W7, AV);
and a20a(na20b, na27b, G5V);
and a20b(na20b, V4MOD1, G6);
inv a20c(G6N, na20b);
inv #(0) a13c(G6, na13a);
and a13a(na13a, V4MOD1, G6N);
and a13b(na13a, W7, na6b, G5VN);
and a6b(na6b, AVN);

// 10-39
and a6c(na14b, W7, na14a);
and a14a(na14a, AVN, G6V);
and a14b(na14b, V4MOD1, G7);
inv a14c(G7N, na14b);
inv #(0) a21c(G7, na21a);
and a21a(na21a, V4MOD1, G7N);
and a21b(na21a, W7, na27c, G6VN);
and a27c(na27c, AV);

and a11a(na11b, W7, AVN);
and a11b(na11b, V1, ABN);
inv #(0) a11c(AB, na11b);
inv a18c(ABN, na18a);
and a18a(na18a, V1, AB);
and a18b(na18a, W7, AV);

and a25a(na25b, Y5, AB);
and a25b(na25b, V4MOD1, AN);
inv #(0) a25c(A, na25b);
inv a32c(AN, na32a);
and a32a(na32a, V4MOD1, A);
and a32b(na32a, Y5, ABN);

// 10-40
and a10d(na9d, W7, na17d, G2VN, G7VN, AVN);
and a17d(na17d, PBVN);
and a9d(na9d, V4MOD1, PA);
inv a9e(PAN, na9d);
inv #(0) a16f(PA, na16d);
and a16d(na16d, V4MOD1, PAN);
and a16e(na16d, Y5, na9f, PBV);
and a9f(na9f, G1V);

and a19d(na19d, Y5, PBV);
and a20d(na20e, na19d, G3V);
and a20e(na20e, V1, TBC);
inv a20f(TBCN, na20e);
inv #(0) a13f(TBC, na13d);
and a13d(na13d, V4MOD1, TBCN);
and a13e(na13d, Y5, PAV);

// 10-41
and a10e(na11d, W7, na17e, PAV, PCVN, G7VN);
and a17e(na17e, G2VN, AVN);
and a11d(na11d, V4MOD1, PB);
inv a11e(PBN, na11d);
inv #(0) a18f(PB, na18d);
and a18d(na18d, V4MOD1, PBN);
and a11f(na18d, Y5, na18e, PAVN);
and a18e(na18e, PCV, G1V);

and a23d(na22a, W7, na23e, PAVN, G7VN);
and a23e(na23e, G2VN, AVN, PBV);
and a22a(na22a, V4MOD1, PC);
inv a22c(PCN, na22a);
inv #(0) a29c(PC, na29a);
and a29a(na29a, V4MOD1, PCN);
and a29b(na29a, Y5, na22b, PBVN);
and a22b(na22b, PAV, G1V);

endmodule
`default_nettype wire
