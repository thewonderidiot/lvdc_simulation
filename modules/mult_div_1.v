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
a a17a(.clk(Z6), .a1(OP2VN), .a2(PBV), .y(na17a));
a a16a(.exp(na17a), .a1(OP4VN), .a2(OP1V), .a3(G2V), .y(na17b));
a a17b(.clk(V4MOD4), .a1(HOY), .y(na17b));
i a17c(.a(na17b), .y(HOYN));
i a18c(.a(na18a), .y(HOY));
a #(1) a18a(.clk(V4MOD4), .a1(HOYN), .y(na18a));
a a25a(.clk(Z6), .a1(PAV), .a2(P2VN), .y(na25a));
a a18b(.exp(na25a), .a1(TMVN), .y(na18a));
a a33a(.a1(G2V), .y(na25a));

a a15a(.clk(Z6), .exp(na16b), .a1(OP4VN), .y(na15b));
a a16b(.a1(OP3VN), .a2(OP1V), .a3(PBV), .a4(G2V), .y(na16b));
a a15b(.clk(V4MOD4), .a1(VOY), .y(na15b));
i a15c(.a(na15b), .y(VOYN));
i a22c(.a(na22a), .y(VOY));
a #(1) a22a(.clk(V4MOD4), .a1(VOYN), .y(na22a));
a a23a(.a1(G5V), .a2(P1VN), .a3(PCVN), .a4(P2VN), .y(na23a));
a a22b(.clk(Y1), .exp(na23a), .y(na22a));

a #(1) a4a(.clk(V1), .a1(Q9N), .y(na4a));
i a4b(.a(na4a), .y(Q9));
i a11c(.a(na11a), .y(Q9N));
a a11a(.clk(ZN), .a1(Q9), .y(na11a));
a a11b(.clk(W2), .a1(Q8V), .y(na11a));
a a10a(.clk(W2), .exp(na10b), .a1(TBCV), .a2(OP1V), .a3(OP2V), .y(na11a));
a a10b(.a1(OP3VN), .a2(AI3V), .a3(TTLV), .y(na10b));

a a9a(.clk(W2), .a1(NU), .a2(HOYN), .a3(VOYN), .y(na30b));
a a9b(.clk(W2), .a1(MD7V), .a2(HOY), .y(na30b));
a a8a(.a1(VOY), .y(na8a));
a a30a(.clk(W2), .exp(na8a), .a1(MD7V), .y(na30b));
a a23b(.clk(X7), .a1(PQR), .a2(P1VN), .a3(P2VN), .y(na30b));
a a29a(.clk(X7), .a1(MR2), .a2(HOYV), .a3(P3VN), .y(na30b));
a a29b(.clk(X7), .a1(P3VN), .a2(HOYVN), .a3(VOYV), .y(na29b));
a a30b(.exp(na29b), .a1(Q9), .y(na30b));
a a24a(.clk(Z6), .a1(PR2V), .a2(P3N), .a3(HOYV), .y(na30b));
a a24b(.clk(Z6), .a1(PR10), .a2(P3N), .a3(HOYVN), .y(na30b));
i a30c(.a(na30b), .y(DL44));

a a25b(.clk(Y1), .a1(HOYV), .a2(G4VN), .y(na25b));
a a32a(.exp(na25b), .a1(PBV), .a2(P2VN), .a3(G5V), .y(na31b));
a a25c(.clk(Y1), .a1(P2VN), .a2(G7VN), .y(na25c));
a a32b(.exp(na25c), .a1(PCV), .a2(G6V), .a3(VOYV), .y(na31b));
a a31a(.clk(Y1), .a1(P3VN), .y(na31a));
a a31b(.exp(na31a), .a1(STP), .y(na31b));
a a26a(.clk(X7), .exp(na33b), .a1(Q9), .y(na31b));
a a33b(.a1(TBCV), .y(na33b));
i a31c(.a(na31b), .y(DL31));

// 10-15
a a12a(.clk(Y1), .a1(HOYV), .a2(P2VN), .a3(PBV), .y(na19b));
a a26b(.clk(Y1), .a1(VOYV), .y(na26b));
a a12b(.exp(na26b), .a1(G4VN), .a2(P2VN), .a3(PBV), .y(na19b));
a a19a(.a1(P2N), .a2(P3N), .y(na19a));
a a19b(.clk(V4MOD4), .exp(na19a), .a1(RUNV), .y(na19b));
i a19c(.a(na19b), .y(P1N));

a a28a(.clk(Z6), .a1(PAV), .a2(P3VN), .y(na20a));
a a20a(.clk(V4MOD4), .exp(na20b), .a1(RUNV), .y(na20a));
a a20b(.a1(P1N), .a2(P3N), .y(na20b));
i a20c(.a(na20a), .y(P2N));

a a26c(.clk(Y1), .a1(PCV), .y(na26c));
a a28b(.exp(na26c), .a1(STP), .a2(G5V), .a3(G6VN), .y(na27b));
a a33c(.clk(Y1), .a1(PBV), .y(na33c));
a a21a(.exp(na33c), .a1(STP), .a2(G4V), .a3(G5VN), .y(na27b));
a a27a(.a1(P1N), .y(na27a));
a a27b(.clk(V4MOD4), .exp(na27a), .a1(P2N), .y(na27b));
i a27c(.a(na27b), .y(P3N));

a a21b(.clk(Z6), .a1(HOYV), .a2(G4V), .a3(DTMVN), .y(na14a));
a a13a(.clk(Z6), .a1(VOYV), .a2(G7V), .a3(DTMVN), .y(na14a));
a a14a(.clk(V4MOD4), .a1(TM), .y(na14a));
i a14b(.a(na14a), .y(TMN));
i a7c(.a(na7a), .y(TM));
a #(1) a7a(.clk(V4MOD4), .a1(TMN), .y(na7a));
a a7b(.clk(Z6), .exp(na14c), .a1(G1VN), .y(na7a));
a a14c(.a1(G7VN), .a2(DTMV), .y(na14c));

a a13b(.clk(Z6), .a1(G2V), .a2(G3VN), .a3(TMV), .y(na6a));
a a6a(.clk(V4MOD4), .a1(DTM), .y(na6a));
i a6b(.a(na6a), .y(DTMN));
i a5c(.a(na5a), .y(DTM));
a #(1) a5a(.clk(V4MOD4), .a1(DTMN), .y(na5a));
a a6c(.clk(Z6), .exp(na5b), .a1(G2V), .y(na5a));
a a5b(.a1(TMVN), .y(na5b));

// 10-16
a a3a(.clk(W2), .a1(HOYV), .a2(P2VN), .a3(TBCV), .y(na10d));
a a10c(.clk(Z6), .a1(MD0N), .y(na10d));
a #(1) a10d(.clk(V1), .a1(MD1N), .y(na10d));
i a10e(.a(na10d), .y(MD1));
i a11f(.a(na11d), .y(MD1N));
a a11d(.clk(V1), .a1(MD1), .y(na11d));
a a11e(.clk(Z6), .a1(MD0), .y(na11d));
a a3b(.exp(na4c), .a1(HOYV), .a2(P2VN), .a3(P3VN), .y(na11d));
a a4c(.clk(X7), .a1(TRSV), .y(na4c));

a a5d(.clk(W2), .a1(HOYVN), .a2(P2VN), .a3(TBCV), .y(na7e));
a a7d(.clk(Z6), .a1(MD4N), .y(na7e));
a #(1) a7e(.clk(V1), .a1(MD5N), .y(na7e));
i a7f(.a(na7e), .y(MD5));
i a6f(.a(na6d), .y(MD5N));
a a6d(.clk(V1), .a1(MD5), .y(na6d));
a a6e(.clk(Z6), .a1(MD4), .y(na6d));
a a5e(.exp(na4d), .a1(HOYVN), .a2(P2VN), .a3(P3VN), .y(na6d));
a a4d(.clk(X7), .a1(TRSV), .y(na4d));

a a18d(.clk(Y1), .a1(MD1N), .y(na18e));
a #(1) a18e(.clk(V4MOD4), .a1(MD2N), .y(na18e));
i a18f(.a(na18e), .y(MD2));
i a17f(.a(na17d), .y(MD2N));
a a17d(.clk(V1), .a1(MD2), .y(na17d));
a a17e(.clk(Y1), .a1(MD1), .y(na17d));

a a14d(.clk(Y1), .a1(MD5N), .y(na14e));
a #(1) a14e(.clk(V1), .a1(MD6N), .y(na14e));
i a14f(.a(na14e), .y(MD6));
i a21e(.a(na21c), .y(MD6N));
a a21c(.clk(V1), .a1(MD6), .y(na21c));
a a21d(.clk(Y1), .a1(MD5), .y(na21c));

a a28c(.clk(X7), .a1(MD6N), .y(na28d));
a #(1) a28d(.clk(V4MOD4), .a1(MD7N), .y(na28d));
i a28e(.a(na28d), .y(MD7));
i a35c(.a(na35a), .y(MD7N));
a a35a(.clk(V1), .a1(MD7), .y(na35a));
a a35b(.clk(X7), .a1(MD6), .y(na35a));

// 10-17
a a19d(.clk(X7), .a1(MD2N), .y(na19e));
a #(1) a19e(.clk(V1), .a1(MD3N), .y(na19e));
i a19f(.a(na19e), .y(MD3));
i a12e(.a(na12c), .y(MD3N));
a a12c(.clk(V1), .a1(MD3), .y(na12c));
a a12d(.clk(X7), .a1(MD2), .y(na12c));

a a13c(.clk(W2), .a1(MD3N), .y(na13d));
a #(1) a13d(.clk(V1), .a1(MD4N), .y(na13d));
i a13e(.a(na13d), .y(MD4));
i a20f(.a(na20d), .y(MD4N));
a a20d(.clk(V1), .a1(MD4), .y(na20d));
a a20e(.clk(W2), .a1(MD3), .y(na20d));

a a16c(.clk(X7), .a1(SG2N), .a2(PR0V), .a3(ESDV), .y(na2a));
a a16d(.clk(X7), .a1(SG2), .a2(PR0VN), .a3(ESDV), .y(na2a));
a a2a(.clk(V1), .a1(K1), .y(na2a));
i a2b(.a(na2a), .y(K1N));
i a9e(.a(na9c), .y(K1));
a #(1) a9c(.clk(V1), .a1(K1N), .y(na9c));
a a23c(.clk(X7), .a1(SG2N), .a2(PR0VN), .a3(ESDVN), .y(na9c));
a a23d(.clk(X7), .a1(SG2), .a2(PR0V), .a3(ESDVN), .y(na9c));
a a30d(.clk(Y1), .a1(HOYVN), .a2(TMVN), .a3(G4VN), .y(na9c));
a a30e(.clk(Y1), .exp(na9d), .a1(HOYV), .a2(DTMVN), .a3(G2V), .y(na9c));
a a9d(.a1(G5V), .y(na9d));

a a15d(.clk(Y1), .a1(SG1N), .a2(PR1), .a3(TFDV), .y(na1a));
a a15e(.clk(Y1), .a1(SG1), .a2(PR1N), .a3(TFDV), .y(na1a));
a a1a(.clk(V1), .a1(K2), .y(na1a));
i a1b(.a(na1a), .y(K2N));
i a8d(.a(na8b), .y(K2));
a #(1) a8b(.clk(V1), .a1(K2N), .y(na8b));
a a29c(.clk(Y1), .a1(SG1N), .a2(PR1N), .a3(TFDVN), .y(na8b));
a a29d(.clk(Y1), .a1(SG1), .a2(PR1), .a3(TFDVN), .y(na8b));
a a22d(.clk(Z6), .a1(HOYVN), .a2(TMVN), .a3(G3VN), .y(na8b));
a a22e(.exp(na8c), .a1(DTMVN), .a2(G5V), .a3(G7VN), .y(na8b));
a a8c(.clk(Z6), .a1(HOYV), .y(na8c));
        
endmodule
`default_nettype wire
