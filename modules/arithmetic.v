`timescale 1ns/1ps
`default_nettype none

module arithmetic(
    input wire V1,
    input wire V4MOD3,
    input wire A1V,
    input wire A2V,
    input wire A5V,
    input wire A6V,
    input wire ACC0,
    input wire ACC1V,
    input wire AV,
    input wire AVN,
    input wire AI0,
    input wire AI0N,
    input wire AI1V,
    input wire AI2V,
    input wire AI2VN,
    input wire AI3V,
    input wire AI3VN,
    input wire CSTV,
    input wire DATAV,
    input wire EXMVN,
    input wire G1V,
    input wire G1VN,
    input wire G2VN,
    input wire G3VN,
    input wire G4V,
    input wire G5V,
    input wire G5VN,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire INTV,
    input wire HOPC1V,
    input wire HOYV,
    input wire OP1V,
    input wire OP1VN,
    input wire OP2V,
    input wire OP2VN,
    input wire OP3V,
    input wire OP3VN,
    input wire OP4V,
    input wire OP4VN,
    input wire P3VN,
    input wire PAV,
    input wire PAVN,
    input wire PBV,
    input wire PBVN,
    input wire PCV,
    input wire PCVN,
    input wire PIOV,
    input wire Q8V,
    input wire SHFV,
    input wire TBCV,
    input wire TRSV,
    input wire TRSVN,
    input wire TTLV,
    input wire UTRV,
    input wire VOYVN,
    input wire W1,
    input wire WN,
    input wire X3,
    input wire Y7,
    input wire Z3,
    input wire ZN,
    output wire ACC1,
    output wire ACC1N,
    output wire AI1,
    output wire AI1N,
    output wire AI2,
    output wire AI2N,
    output wire AI3,
    output wire AI3N,
    output wire DL31,
    output wire DL44,
    output wire UTR
);

wire AI4;
wire AI4N;
wire AND;
wire ANDN;
wire B;
wire BN;
wire C;
wire CN;
wire Q8D;
wire Q8DN;
wire RAC;
wire RACN;
wire UACC0;
wire ZER;
wire ZERN;

wor na1b;
wire na3a;
wor na3b;
wire na4a;
wire na5a;
wire na6c;
wor na7a;
wire na7b;
wire na7d;
wor na8a;
wire na9a;
wire na9c;
wire na10a;
wor na11a;
wire na11b;
wor na11e;
wor na12c;
wor na14c;
wor na15a;
wor na15d;
wor na16a;
wor na16d;
wire na17b;
wire na17c;
wire na18b;
wor na19a;
wire na19c;
wire na19e;
wire na19f;
wire na20a;
wire na20b;
wire na20c;
wire na21b;
wor na21c;
wire na21d;
wor na22c;
wor na23d;
wor na24a;
wire na25b;
wor na26c;
wire na26e;
wire na27b;
wire na27c;
wor na28a;
wire na28d;
wor na28e;
wire na29a;
wor na29d;
wor na30c;
wire na32a;
wire na33c;
wire na34c;
wor na34d;
wire na35a;
wand na35c;
wire na35e;

// 10-26
and a7a(na7a, V1, na7b, CN);
and a7b(na7b, ANDN);
and a21a(na7a, Z3, na35a, OP1V, AI4N, BN);
and a35a(na35a, OP2V);
and a20a(na20a, Z3, PAVN);
and a14a(na7a, na20a, OP3VN, BN, AI4);
and a14b(na7a, Z3, PAV, AI4N);
and a6a(na7a, X3, HOYV, VOYVN, P3VN);
and a6b(na7a, X3, na5a, AV, G1V, G3VN);
and a5a(na5a, PAV, CSTV);
and a34a(na7a, Z3, B, AI4N, OP2VN);
and a35b(na7a, X3, INTV);
inv #(0) a7c(C, na7a);
and a28a(na28a, V1, C);
and a28b(na28a, na21b);
and a21b(na21b, Z3, AI4, B, OP1V, OP2V);
and a27a(na28a, na20b, OP3VN, OP4VN, AI4N);
and a20b(na20b, Z3, B);
and a27b(na27b, PCV, AI3V, G7VN, G1VN);
and a33a(na28a, Z3, na27b, SHFV, A1V);
and a33b(na28a, X3, na32a, SHFV, PCV, A2V);
and a32a(na32a, AVN, G5VN, AI1V, G7V);
and a32b(na28a, W1, na20c, PAV, AV, G3VN);
and a20c(na20c, G1V, EXMVN);
and a34b(na28a, na35c, TBCV, RACN, OP2VN);
and a35c(na35c, Z3, BN, AI4);
and a25a(na35c, OP3V);
inv a28c(CN, na28a);

and a10a(na10a, V1, Q8DN);
inv #(0) a10b(Q8D, na10a);
inv a24c(Q8DN, na24a);
and a24a(na24a, ZN, Q8D);
and a24b(na24a, W1, Q8V);

and a3a(na3a, V1, ANDN);
inv #(0) a3c(AND, na3a);
inv a5c(ANDN, na3b);
and a3b(na3b, ZN, AND);
and a4a(na4a, W1, OP1VN, OP2V, OP3V, OP4VN);
and a5b(na3b, na4a, TBCV);

and a25b(na25b, OP2V);
and a31a(na19a, Z3, na25b, PAV, OP1V, OP3VN);
and a26a(na19a, Z3, PAV, OP1VN, OP4V);
and a26b(na19a, Z3, PAV, OP2VN, OP4VN);
and a19a(na19a, V1, RAC);
inv a19b(RACN, na19a);
inv #(0) a11c(RAC, na11a);
and a11a(na11a, V1, RACN);
and a12a(na11a, Y7, PAV, G1VN, G7VN);
and a11b(na11b, Z3, SHFV);
and a12b(na11a, na11b, A5V, PBV, G4V);
and a19c(na19c, Z3, SHFV);
and a18a(na11a, na19c, G5V, A6V, PBV);
and a17a(na11a, Z3, na18b, G6VN);
and a18b(na18b, G7V, A2V, PCV, SHFV);

// 10-27
and a30a(na16a, X3, TTLV, TBCV, Q8D);
and a17b(na17b, W1, SHFV);
and a30b(na16a, na17b, A1V, AI2V, PAVN);
and a17c(na17c, W1, DATAV, PIOV);
and a23a(na16a, na17c, A1V, A2V, TBCV);
and a23b(na16a, W1, TRSV, TBCV, RACN);
and a16a(na16a, V1, B);
inv a16b(BN, na16a);
inv #(0) a15b(B, na15a);
and a15a(na15a, V1, BN);
and a22a(na15a, W1, TRSVN, RACN);
and a16c(na15a, Z3, na9a, OP4V);
and a9a(na9a, OP2V);
and a22b(na15a, X3, na29a, SHFV, A1V, G2VN);
and a29a(na29a, G7VN, AVN, PCV, PBVN);
and a9b(na15a, Z3, PAV);

and a1a(na1b, X3, ACC0);
and a1b(na1b, V1, ZERN);
inv #(0) a1c(ZER, na1b);
inv a8c(ZERN, na8a);
and a8a(na8a, V1, ZER);
and a8b(na8a, Z3, na9c, PCV);
and a9c(na9c, G6V);
and a29b(na8a, Z3, OP4V, PBV);

// 10-28
and a6c(na6c, Y7, OP1VN, OP2VN, PBV);
and a6d(na14c, na6c, ZERN, G4V, G3VN);
and a7d(na7d, Y7, OP1VN, OP2VN, OP3VN);
and a7e(na14c, na7d, PBV, G4V, G3VN);
and a14c(na14c, V1, UTR);
inv a14d(UACC0, na14c);
inv #(0) a21e(UTR, na21c);
and a21c(na21c, V4MOD3, UACC0);
and a21d(na21d, Y7, PCV);
and a14e(na21c, na21d, G4V);
and a13a(na21c, Z3, PBV, G3VN, CSTV);

and a23c(na23d, Y7, AI1);
and a23d(na23d, V4MOD3, AI2);
inv a23e(AI2N, na23d);
inv #(0) a22e(AI2, na22c);
and a22c(na22c, V4MOD3, AI2N);
and a22d(na22c, Y7, AI1N);

and a33c(na33c, Y7, AI1V, A2V);
and a13b(na34d, na33c, SHFV, RAC, PAVN);
and a20d(na34d, Y7, AI4, B, C);
and a20e(na34d, Y7, AI4, BN, CN);
and a34c(na34c, Y7, AI4N, B);
and a34d(na34d, na34c, CN);
and a19d(na34d, Y7, na27c);
and a27c(na27c, BN, C, ANDN, AI4N);
inv a34e(DL44, na34d);

and a15c(na15d, X3, AI2V);
and a15d(na15d, V4MOD3, AI3);
inv a15e(AI3N, na15d);
inv #(0) a16f(AI3, na16d);
and a16d(na16d, V4MOD3, AI3N);
and a16e(na16d, X3, AI2VN);

// 10-29
and a27d(na28e, X3, TRSV, UTRV);
and a35d(na28e, X3, na28d);
and a28d(na28d, ACC0, UACC0);
and a28e(na28e, WN, ACC1);
inv a28f(ACC1N, na28e);
inv #(0) a35f(ACC1, na35e);
and a35e(na35e, V4MOD3, ACC1N);

and a11d(na11e, W1, AI3V);
and a11e(na11e, V1, AI4);
inv a11f(AI4N, na11e);
inv #(0) a12e(AI4, na12c);
and a12c(na12c, V1, AI4N);
and a18c(na12c, X3, na19e, PIOV, A1V, TBCV);
and a19e(na19e, A2V);
and a12d(na12c, W1, AI3VN);
and a18d(na12c, na19f, OP2V, OP3V, OP4V);
and a19f(na19f, X3, TBCV, OP1V);
and a17d(na12c, X3, SHFV, TBCV);

and a29c(na29d, Z3, AI0);
and a29d(na29d, V1, AI1);
inv a29e(AI1N, na29d);
inv #(0) a30e(AI1, na30c);
and a30c(na30c, V4MOD3, AI1N);
and a30d(na30c, Z3, AI0N);

and a26c(na26c, W1, HOPC1V);
and a26d(na26c, W1, na26e, UTR);
and a26e(na26e, ACC0);
and a25c(na26c, Z3, ACC1V, G5VN, G6VN);
and a25d(na26c, Z3, ACC1V, PCVN);
inv a33d(DL31, na26c);

endmodule
`default_nettype wire
