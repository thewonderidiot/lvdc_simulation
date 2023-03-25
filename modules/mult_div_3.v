`timescale 1ns/1ps
`default_nettype none

module mult_div_3(
    input wire V1,
    input wire V4MOD4,
    input wire AI2V,
    input wire AI2VN,
    input wire AI3V,
    input wire AI3VN,
    input wire AV,
    input wire AVN,
    input wire ESDV,
    input wire ESDVN,
    input wire G2V,
    input wire G3V,
    input wire G4VN,
    input wire G5VN,
    input wire G7V,
    input wire HOYV,
    input wire HOYVN,
    input wire K1,
    input wire K1N,
    input wire K2,
    input wire K2N,
    input wire MR0,
    input wire MR0N,
    input wire MR1V,
    input wire MR1VN,
    input wire OP1V,
    input wire OP2V,
    input wire OP3VN,
    input wire P1VN,
    input wire P2VN,
    input wire P3VN,
    input wire PAV,
    input wire PR,
    input wire PRN,
    input wire PR0V,
    input wire PR0VN,
    input wire PR2V,
    input wire PR2VN,
    input wire SG1,
    input wire SG2,
    input wire SG2N,
    input wire STP,
    input wire TBCV,
    input wire TFDV,
    input wire TFDVN,
    input wire TMV,
    input wire TMVN,
    input wire TTLV,
    input wire VOYV,
    input wire W8,
    input wire X1,
    input wire XN,
    input wire Y8,
    input wire Z6,
    input wire ZN,
    output wire MR1,
    output wire MR1N,
    output wire MR2,
    output wire MR2N,
    output wire PR0,
    output wire PR0N,
    output wire PR1,
    output wire PR1N,
    output wire PR2,
    output wire PR2N,
    output wire PR4,
    output wire PR4N,
    output wire PR6,
    output wire PR6N,
    output wire PR10,
    output wire Q1,
    output wire Q1N,
    output wire Q8
);

wire PR3;
wire PR3N;
wire PR5;
wire PR5N;
wire PR7;
wire PR7N;
wire PR8;
wire PR8N;
wire PR9;
wire PR9N;
wire PR10N;
wire Q2;
wire Q2N;
wire Q3;
wire Q3N;
wire Q4;
wire Q4N;
wire Q5;
wire Q5N;
wire Q6;
wire Q6N;
wire Q7;
wire Q7N;
wire Q8N;

wire na2b;
wire na2c;
wor na3a;
wor na4b;
wor na4e;
wor na5a;
wor na5d;
wire na6a;
wor na6e;
wor na7a;
wor na7d;
wor na8a;
wor na9b;
wor na9e;
wor na10c;
wor na11c;
wor na12b;
wor na12e;
wor na13a;
wire na13b;
wor na13d;
wire na14a;
wor na14e;
wor na15b;
wor na15d;
wor na16a;
wor na16d;
wire na17a;
wire na17b;
wire na17d;
wire na18a;
wire na18b;
wire na18c;
wire na18d;
wor na18e;
wire na19b;
wire na20c;
wor na20e;
wor na21c;
wor na22a;
wire na22d;
wor na23b;
wire na25a;
wor na26b;
wor na27c;
wire na28a;
wor na28b;
wor na28e;
wor na29b;
wor na29e;
wor na30a;
wire na30d;
wor na30e;
wor na33a;
wire na34b;
wor na34e;
wor na35a;
wire na35b;
wor na35d;

// 10-22
a a2a(.clk(X1), .a1(HOYV), .a2(TMVN), .y(na4b));
a a18a(.clk(X1), .a1(P2VN), .a2(P3VN), .y(na18a));
a a11a(.exp(na18a), .a1(AI2VN), .a2(HOYV), .y(na4b));
a a4a(.clk(W8), .a1(MR0N), .y(na4b));
a #(1) a4b(.clk(V4MOD4), .a1(MR1N), .y(na4b));
i a4c(.a(na4b), .y(MR1));
i a3c(.a(na3a), .y(MR1N));
a a3a(.clk(V4MOD4), .a1(MR1), .y(na3a));
a a3b(.clk(W8), .a1(MR0), .y(na3a));
a a18b(.clk(X1), .a1(P2VN), .a2(P3VN), .y(na18b));
a a11b(.exp(na18b), .a1(TMV), .a2(AI2V), .a3(HOYV), .y(na3a));
a a17a(.a1(SG2), .a2(HOYVN), .a3(P3VN), .a4(TMVN), .y(na17a));
a a10a(.clk(X1), .exp(na17a), .a1(G3V), .a2(G5VN), .a3(AV), .y(na3a));
a a17b(.a1(SG1), .a2(HOYVN), .a3(P3VN), .a4(TMVN), .y(na17b));
a a10b(.clk(X1), .exp(na17b), .a1(G2V), .a2(G4VN), .a3(AVN), .y(na3a));

a a29a(.clk(Z6), .a1(MR1VN), .y(na29b));
a #(1) a29b(.clk(V1), .a1(MR2N), .y(na29b));
i a29c(.a(na29b), .y(MR2));
i a30c(.a(na30a), .y(MR2N));
a a30a(.clk(V1), .a1(MR2), .y(na30a));
a a30b(.clk(Z6), .a1(MR1V), .y(na30a));

a a23a(.clk(Y8), .a1(MR2N), .y(na23b));
a #(1) a23b(.clk(V1), .a1(Q1N), .y(na23b));
i a23c(.a(na23b), .y(Q1));
i a22c(.a(na22a), .y(Q1N));
a a22a(.clk(V1), .a1(Q1), .y(na22a));
a a22b(.clk(Y8), .a1(MR2), .y(na22a));

a a15a(.clk(X1), .a1(Q1N), .y(na15b));
a #(1) a15b(.clk(V1), .a1(Q2N), .y(na15b));
i a15c(.a(na15b), .y(Q2));
i a16c(.a(na16a), .y(Q2N));
a a16a(.clk(V1), .a1(Q2), .y(na16a));
a a16b(.clk(X1), .a1(Q1), .y(na16a));

a a9a(.clk(W8), .a1(Q2N), .y(na9b));
a #(1) a9b(.clk(V1), .a1(Q3N), .y(na9b));
i a9c(.a(na9b), .y(Q3));
i a8c(.a(na8a), .y(Q3N));
a a8a(.clk(V1), .a1(Q3), .y(na8a));
a a8b(.clk(W8), .a1(Q2), .y(na8a));

a a26a(.clk(Y8), .a1(Q6N), .y(na26b));
a #(1) a26b(.clk(V1), .a1(Q7N), .y(na26b));
i a26c(.a(na26b), .y(Q7));
i a33c(.a(na33a), .y(Q7N));
a a33a(.clk(V1), .a1(Q7), .y(na33a));
a a33b(.clk(Y8), .a1(Q6), .y(na33a));

// 10-23
a #(1) a14a(.clk(V1), .a1(Q6N), .y(na14a));
i a14b(.a(na14a), .y(Q6));
i a7c(.a(na7a), .y(Q6N));
a a7a(.clk(ZN), .a1(Q6), .y(na7a));
a a7b(.clk(W8), .a1(Q5), .y(na7a));

a a25a(.a1(OP2V), .y(na25a));
a a21a(.clk(Y8), .exp(na25a), .a1(TTLV), .a2(OP1V), .a3(OP3VN), .y(na28b));
a a27a(.clk(X1), .a1(Q1N), .a2(P1VN), .a3(P2VN), .y(na28b));
a a21b(.clk(Y8), .a1(PRN), .a2(HOYV), .y(na28b));
a a20a(.clk(X1), .exp(na28a), .y(na28b));
a a28a(.a1(P3VN), .a2(Q7N), .y(na28a));
a #(1) a28b(.clk(V4MOD4), .a1(Q8N), .y(na28b));
i a28c(.a(na28b), .y(Q8));
i a35c(.a(na35a), .y(Q8N));
a a35a(.clk(V1), .a1(Q8), .y(na35a));
a a35b(.clk(X1), .a1(P3VN), .y(na35b));
a a34a(.exp(na35b), .a1(Q7), .y(na35a));
a a34b(.clk(Y8), .a1(PR), .y(na34b));
a a34c(.exp(na34b), .a1(HOYV), .y(na35a));
a a27b(.clk(X1), .a1(Q1), .a2(P1VN), .a3(P2VN), .y(na35a));

a a18c(.clk(X1), .a1(SG2), .a2(G7V), .y(na18c));
a a19a(.exp(na18c), .a1(PAV), .a2(STP), .a3(G2V), .y(na12b));
a a12a(.clk(Z6), .a1(Q3N), .y(na12b));
a #(1) a12b(.clk(V1), .a1(Q4N), .y(na12b));
i a12c(.a(na12b), .y(Q4));
i a5c(.a(na5a), .y(Q4N));
a a5a(.clk(V1), .a1(Q4), .y(na5a));
a a5b(.clk(Z6), .a1(Q3), .y(na5a));
a a20b(.clk(X1), .exp(na19b), .a1(G7V), .y(na5a));
a a19b(.a1(PAV), .a2(STP), .a3(G2V), .a4(SG2N), .y(na19b));

a #(1) a6a(.clk(V1), .a1(Q5N), .y(na6a));
i a6b(.a(na6a), .y(Q5));
i a13c(.a(na13a), .y(Q5N));
a a13a(.clk(XN), .a1(Q5), .y(na13a));
a a13b(.clk(Y8), .a1(Q4), .y(na13b));
a a6c(.exp(na13b), .a1(TMV), .y(na13a));
a a20c(.clk(Y8), .a1(G7V), .a2(Q4), .y(na20c));
a a14c(.exp(na20c), .y(na13a));

// 10-24
a a22d(.clk(Y8), .a1(PRN), .y(na22d));
a a22e(.exp(na22d), .a1(HOYVN), .y(na29e));
a a30d(.clk(Y8), .a1(PRN), .y(na30d));
a a29d(.exp(na30d), .a1(TMV), .y(na29e));
a #(1) a29e(.clk(V4MOD4), .a1(PR0N), .y(na29e));
i a29f(.a(na29e), .y(PR0));
i a30f(.a(na30e), .y(PR0N));
a a30e(.clk(V4MOD4), .a1(PR0), .y(na30e));
a a31a(.clk(Y8), .a1(PR), .a2(P1VN), .a3(TMV), .y(na30e));
a a31b(.clk(Y8), .a1(PR), .a2(P1VN), .a3(HOYVN), .y(na30e));

a a25b(.clk(W8), .a1(PR0VN), .a2(ESDVN), .a3(K1), .y(na18e));
a a25c(.clk(W8), .a1(PR0VN), .a2(ESDV), .a3(K1N), .y(na18e));
a a19c(.clk(W8), .a1(PR0V), .a2(ESDV), .a3(K1), .y(na18e));
a a18d(.clk(W8), .a1(ESDVN), .a2(K1N), .y(na18d));
a a17c(.exp(na18d), .a1(PR0V), .y(na18e));
a a18e(.clk(ZN), .a1(PR1), .y(na18e));
i a18f(.a(na18e), .y(PR1N));
i a17e(.a(na17d), .y(PR1));
a #(1) a17d(.clk(V1), .a1(PR1N), .y(na17d));

a a24a(.clk(X1), .a1(PR1N), .a2(TFDVN), .a3(K2), .y(na16d));
a a23d(.clk(X1), .a1(PR1N), .a2(TFDV), .a3(K2N), .y(na16d));
a a23e(.clk(X1), .a1(PR1), .a2(TFDV), .a3(K2), .y(na16d));
a a24b(.clk(X1), .a1(PR1), .a2(TFDVN), .a3(K2N), .y(na16d));
a a16d(.clk(V4MOD4), .a1(PR2), .y(na16d));
i a16e(.a(na16d), .y(PR2N));
i a15f(.a(na15d), .y(PR2));
a #(1) a15d(.clk(V4MOD4), .a1(PR2N), .y(na15d));
a a15e(.clk(W8), .y(na15d));

a a4d(.clk(X1), .a1(PR4N), .y(na4e));
a #(1) a4e(.clk(V1), .a1(PR5N), .y(na4e));
i a4f(.a(na4e), .y(PR5));
i a5f(.a(na5d), .y(PR5N));
a a5d(.clk(V1), .a1(PR5), .y(na5d));
a a5e(.clk(X1), .a1(PR4), .y(na5d));

a a6d(.clk(W8), .a1(PR5N), .y(na6e));
a #(1) a6e(.clk(V1), .a1(PR6N), .y(na6e));
i a6f(.a(na6e), .y(PR6));
i a7f(.a(na7d), .y(PR6N));
a a7d(.clk(V1), .a1(PR6), .y(na7d));
a a7e(.clk(W8), .a1(PR5), .y(na7d));

a a14d(.clk(Z6), .a1(PR6N), .y(na14e));
a #(1) a14e(.clk(V1), .a1(PR7N), .y(na14e));
i a14f(.a(na14e), .y(PR7));
i a13f(.a(na13d), .y(PR7N));
a a13d(.clk(V1), .a1(PR7), .y(na13d));
a a13e(.clk(Z6), .a1(PR6), .y(na13d));

// 10-25
a a2b(.clk(W8), .a1(TBCV), .a2(AI3VN), .a3(P3VN), .y(na2b));
a a3d(.exp(na2b), .a1(VOYV), .a2(P2VN), .a3(HOYVN), .y(na9e));
a a9d(.clk(Z6), .a2(PR2VN), .y(na9e));
a #(1) a9e(.clk(V1), .a1(PR3N), .y(na9e));
i a9f(.a(na9e), .y(PR3));
i a10e(.a(na10c), .y(PR3N));
a a10c(.clk(V1), .a1(PR3), .y(na10c));
a a10d(.clk(Z6), .a1(PR2V), .y(na10c));
a a2c(.clk(W8), .a1(TBCV), .a2(AI3V), .a3(P3VN), .y(na2c));
a a3e(.exp(na2c), .a1(VOYV), .a2(P2VN), .a3(HOYVN), .y(na10c));

a a19d(.clk(Z6), .a1(TMVN), .a2(G2V), .a3(G4VN), .y(na12e));
a a12d(.clk(Y8), .a1(PR3N), .y(na12e));
a #(1) a12e(.clk(V1), .a1(PR4N), .y(na12e));
i a12f(.a(na12e), .y(PR4));
i a11e(.a(na11c), .y(PR4N));
a a11c(.clk(V1), .a1(PR4), .y(na11c));
a a11d(.clk(Y8), .a1(PR3), .y(na11c));

a a20d(.clk(Y8), .a1(PR7N), .y(na20e));
a #(1) a20e(.clk(V1), .a1(PR8N), .y(na20e));
i a20f(.a(na20e), .y(PR8));
i a21e(.a(na21c), .y(PR8N));
a a21c(.clk(V1), .a1(PR8), .y(na21c));
a a21d(.clk(Y8), .a1(PR7), .y(na21c));

a a28d(.clk(X1), .a1(PR8N), .y(na28e));
a #(1) a28e(.clk(V1), .a1(PR9N), .y(na28e));
i a28f(.a(na28e), .y(PR9));
i a27e(.a(na27c), .y(PR9N));
a a27c(.clk(V1), .a1(PR9), .y(na27c));
a a27d(.clk(X1), .a1(PR8), .y(na27c));

a a34d(.clk(W8), .a1(PR9N), .y(na34e));
a #(1) a34e(.clk(V1), .a1(PR10N), .y(na34e));
i a34f(.a(na34e), .y(PR10));
i a35f(.a(na35d), .y(PR10N));
a a35d(.clk(V1), .a1(PR10), .y(na35d));
a a35e(.clk(W8), .a1(PR9), .y(na35d));

endmodule
`default_nettype wire
