`timescale 1ns/1ps
`default_nettype none

module mult_div_1(
    input wire V1,
    input wire V4MOD4,
    input wire AI3V,
    input wire DTMV,
    input wire DTMVN,
    input wire ESDV,
    input wire ESDVN,
    input wire G1VN,
    input wire G2V,
    input wire G3VN,
    input wire G4V,
    input wire G4VN,
    input wire G5V,
    input wire G5VN,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire HOYV,
    input wire HOYVN,
    input wire MD0,
    input wire MD0N,
    input wire MD7V,
    input wire MR2,
    input wire NU,
    input wire OP1V,
    input wire OP2V,
    input wire OP2VN,
    input wire OP3VN,
    input wire OP4VN,
    input wire P1VN,
    input wire P2VN,
    input wire P3VN,
    input wire PAV,
    input wire PBV,
    input wire PCV,
    input wire PCVN,
    input wire PQR,
    input wire PR0V,
    input wire PR0VN,
    input wire PR1,
    input wire PR1N,
    input wire PR2V,
    input wire PR10,
    input wire Q8V,
    input wire RUNV,
    input wire SG1,
    input wire SG1N,
    input wire SG2,
    input wire SG2N,
    input wire STP,
    input wire TBCV,
    input wire TFDV,
    input wire TFDVN,
    input wire TMV,
    input wire TMVN,
    input wire TRSV,
    input wire TTLV,
    input wire VOYV,
    input wire W2,
    input wire X7,
    input wire Y1,
    input wire Z6,
    input wire ZN,
    output wire DL31,
    output wire DL44,
    output wire DTM,
    output wire DTMN,
    output wire HOY,
    output wire HOYN,
    output wire K1,
    output wire K1N,
    output wire K2,
    output wire K2N,
    output wire MD2,
    output wire MD2N,
    output wire MD3,
    output wire MD3N,
    output wire MD4,
    output wire MD4N,
    output wire MD5,
    output wire MD5N,
    output wire MD6,
    output wire MD6N,
    output wire MD7,
    output wire MD7N,
    output wire P1N,
    output wire P2N,
    output wire P3N,
    output wire TM,
    output wire TMN,
    output wire VOY,
    output wire VOYN
);

wire MD1;
wire MD1N;
wire Q9;
wire Q9N;

wor na1a;
wor na2a;
wire na4a;
wire na4c;
wire na4d;
wor na5a;
wire na5b;
wor na6a;
wor na6d;
wor na7a;
wor na7e;
wire na8a;
wor na8b;
wire na8c;
wor na9c;
wire na9d;
wire na10b;
wor na10d;
wor na11a;
wor na11d;
wor na12c;
wor na13d;
wor na14a;
wire na14c;
wor na14e;
wor na15b;
wire na16b;
wire na17a;
wor na17b;
wor na17d;
wor na18a;
wor na18e;
wire na19a;
wor na19b;
wor na19e;
wor na20a;
wire na20b;
wor na20d;
wor na21c;
wor na22a;
wire na23a;
wand na25a;
wire na25b;
wire na25c;
wire na26b;
wire na26c;
wire na27a;
wor na27b;
wor na28d;
wire na29b;
wor na30b;
wire na31a;
wor na31b;
wire na33b;
wire na33c;
wor na35a;

// 10-14
and a17a(na17a, Z6, OP2VN, PBV);
and a16a(na17b, na17a, OP4VN, OP1V, G2V);
and a17b(na17b, V4MOD4, HOY);
inv a17c(HOYN, na17b);
inv #(0) a18c(HOY, na18a);
and a18a(na18a, V4MOD4, HOYN);
and a25a(na25a, Z6, PAV, P2VN);
and a18b(na18a, na25a, TMVN);
and a33a(na25a, G2V);

and a15a(na15b, Z6, na16b, OP4VN);
and a16b(na16b, OP3VN, OP1V, PBV, G2V);
and a15b(na15b, V4MOD4, VOY);
inv a15c(VOYN, na15b);
inv #(0) a22c(VOY, na22a);
and a22a(na22a, V4MOD4, VOYN);
and a23a(na23a, G5V, P1VN, PCVN, P2VN);
and a22b(na22a, Y1, na23a);

and a4a(na4a, V1, Q9N);
inv #(0) a4b(Q9, na4a);
inv a11c(Q9N, na11a);
and a11a(na11a, ZN, Q9);
and a11b(na11a, W2, Q8V);
and a10a(na11a, W2, na10b, TBCV, OP1V, OP2V);
and a10b(na10b, OP3VN, AI3V, TTLV);

and a9a(na30b, W2, NU, HOYN, VOYN);
and a9b(na30b, W2, MD7V, HOY);
and a8a(na8a, VOY);
and a30a(na30b, W2, na8a, MD7V);
and a23b(na30b, X7, PQR, P1VN, P2VN);
and a29a(na30b, X7, MR2, HOYV, P3VN);
and a29b(na29b, X7, P3VN, HOYVN, VOYV);
and a30b(na30b, na29b, Q9);
and a24a(na30b, Z6, PR2V, P3N, HOYV);
and a24b(na30b, Z6, PR10, P3N, HOYVN);
inv a30c(DL44, na30b);

and a25b(na25b, Y1, HOYV, G4VN);
and a32a(na31b, na25b, PBV, P2VN, G5V);
and a25c(na25c, Y1, P2VN, G7VN);
and a32b(na31b, na25c, PCV, G6V, VOYV);
and a31a(na31a, Y1, P3VN);
and a31b(na31b, na31a, STP);
and a26a(na31b, X7, na33b, Q9);
and a33b(na33b, TBCV);
inv a31c(DL31, na31b);

// 10-15
and a12a(na19b, Y1, HOYV, P2VN, PBV);
and a26b(na26b, Y1, VOYV);
and a12b(na19b, na26b, G4VN, P2VN, PBV);
and a19a(na19a, P2N, P3N);
and a19b(na19b, V4MOD4, na19a, RUNV);
inv a19c(P1N, na19b);

and a28a(na20a, Z6, PAV, P3VN);
and a20a(na20a, V4MOD4, na20b, RUNV);
and a20b(na20b, P1N, P3N);
inv a20c(P2N, na20a);

and a26c(na26c, Y1, PCV);
and a28b(na27b, na26c, STP, G5V, G6VN);
and a33c(na33c, Y1, PBV);
and a21a(na27b, na33c, STP, G4V, G5VN);
and a27a(na27a, P1N);
and a27b(na27b, V4MOD4, na27a, P2N);
inv a27c(P3N, na27b);

and a21b(na14a, Z6, HOYV, G4V, DTMVN);
and a13a(na14a, Z6, VOYV, G7V, DTMVN);
and a14a(na14a, V4MOD4, TM);
inv a14b(TMN, na14a);
inv #(0) a7c(TM, na7a);
and a7a(na7a, V4MOD4, TMN);
and a7b(na7a, Z6, na14c, G1VN);
and a14c(na14c, G7VN, DTMV);

and a13b(na6a, Z6, G2V, G3VN, TMV);
and a6a(na6a, V4MOD4, DTM);
inv a6b(DTMN, na6a);
inv #(0) a5c(DTM, na5a);
and a5a(na5a, V4MOD4, DTMN);
and a6c(na5a, Z6, na5b, G2V);
and a5b(na5b, TMVN);

// 10-16
and a3a(na10d, W2, HOYV, P2VN, TBCV);
and a10c(na10d, Z6, MD0N);
and a10d(na10d, V1, MD1N);
inv #(0) a10e(MD1, na10d);
inv a11f(MD1N, na11d);
and a11d(na11d, V1, MD1);
and a11e(na11d, Z6, MD0);
and a3b(na11d, na4c, HOYV, P2VN, P3VN);
and a4c(na4c, X7, TRSV);

and a5d(na7e, W2, HOYVN, P2VN, TBCV);
and a7d(na7e, Z6, MD4N);
and a7e(na7e, V1, MD5N);
inv #(0) a7f(MD5, na7e);
inv a6f(MD5N, na6d);
and a6d(na6d, V1, MD5);
and a6e(na6d, Z6, MD4);
and a5e(na6d, na4d, HOYVN, P2VN, P3VN);
and a4d(na4d, X7, TRSV);

and a18d(na18e, Y1, MD1N);
and a18e(na18e, V4MOD4, MD2N);
inv #(0) a18f(MD2, na18e);
inv a17f(MD2N, na17d);
and a17d(na17d, V1, MD2);
and a17e(na17d, Y1, MD1);

and a14d(na14e, Y1, MD5N);
and a14e(na14e, V1, MD6N);
inv #(0) a14f(MD6, na14e);
inv a21e(MD6N, na21c);
and a21c(na21c, V1, MD6);
and a21d(na21c, Y1, MD5);

and a28c(na28d, X7, MD6N);
and a28d(na28d, V4MOD4, MD7N);
inv #(0) a28e(MD7, na28d);
inv a35c(MD7N, na35a);
and a35a(na35a, V1, MD7);
and a35b(na35a, X7, MD6);

// 10-17
and a19d(na19e, X7, MD2N);
and a19e(na19e, V1, MD3N);
inv #(0) a19f(MD3, na19e);
inv a12e(MD3N, na12c);
and a12c(na12c, V1, MD3);
and a12d(na12c, X7, MD2);

and a13c(na13d, W2, MD3N);
and a13d(na13d, V1, MD4N);
inv #(0) a13e(MD4, na13d);
inv a20f(MD4N, na20d);
and a20d(na20d, V1, MD4);
and a20e(na20d, W2, MD3);

and a16c(na2a, X7, SG2N, PR0V, ESDV);
and a16d(na2a, X7, SG2, PR0VN, ESDV);
and a2a(na2a, V1, K1);
inv a2b(K1N, na2a);
inv #(0) a9e(K1, na9c);
and a9c(na9c, V1, K1N);
and a23c(na9c, X7, SG2N, PR0VN, ESDVN);
and a23d(na9c, X7, SG2, PR0V, ESDVN);
and a30d(na9c, Y1, HOYVN, TMVN, G4VN);
and a30e(na9c, Y1, na9d, HOYV, DTMVN, G2V);
and a9d(na9d, G5V);

and a15d(na1a, Y1, SG1N, PR1, TFDV);
and a15e(na1a, Y1, SG1, PR1N, TFDV);
and a1a(na1a, V1, K2);
inv a1b(K2N, na1a);
inv #(0) a8d(K2, na8b);
and a8b(na8b, V1, K2N);
and a29c(na8b, Y1, SG1N, PR1N, TFDVN);
and a29d(na8b, Y1, SG1, PR1, TFDVN);
and a22d(na8b, Z6, HOYVN, TMVN, G3VN);
and a22e(na8b, na8c, DTMVN, G5V, G7VN);
and a8c(na8c, Z6, HOYV);
        
endmodule
`default_nettype wire
