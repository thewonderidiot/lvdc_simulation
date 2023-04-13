`timescale 1ns/1ps
`default_nettype none

module mult_div_2(
    input wire V1,
    input wire V4MOD4,
    input wire AV,
    input wire AVN,
    input wire DTMV,
    input wire DTMVN,
    input wire G1V,
    input wire G1VN,
    input wire G2V,
    input wire G2VN,
    input wire G3V,
    input wire G3VN,
    input wire G4V,
    input wire G4VN,
    input wire G5V,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire HOYV,
    input wire HOYVN,
    input wire MD2,
    input wire MD2N,
    input wire MD3,
    input wire MD3N,
    input wire MD4,
    input wire MD4N,
    input wire MD5,
    input wire MD5N,
    input wire MD6,
    input wire MD6N,
    input wire MD7V,
    input wire MD7N,
    input wire MR1V,
    input wire MR2,
    input wire MR2N,
    input wire P1VN,
    input wire P3VN,
    input wire PR4,
    input wire PR4N,
    input wire PR6,
    input wire PR6N,
    input wire Q1,
    input wire Q1N,
    input wire TMVN,
    input wire VOYVN,
    input wire W2,
    input wire X7,
    input wire Y7,
    input wire Z4,
    output wire ESD,
    output wire ESDN,
    output wire SG1,
    output wire SG1N,
    output wire SG2,
    output wire SG2N,
    output wire TFD,
    output wire TFDN
);

wire BD;
wire BDN;
wire CD;
wire CDN;
wire EMDN;
wire FMDN;
wire SMDN;
wire TMDN;
wire ZDHN;
wire ZDLN;

wor na1a;
wor na2b;
wire na3a;
wire na3c;
wire na3d;
wor na4a;
wire na3b;
wire na6a;
wand na6b;
wand na6c;
wire na6d;
wire na6e;
wire na8c;
wor na8d;
wire na9a;
wire na9b;
wor na9c;
wire na9d;
wire na10c;
wire na11a;
wire na11b;
wire na11c;
wire na11d;
wor na11e;
wire na12a;
wor na12b;
wor na12d;
wire na12e;
wor na14c;
wire na14e;
wire na15a;
wor na15b;
wire na17a;
wor na17b;
wire na19a;
wor na19b;
wor na21a;
wire na21b;
wire na23a;
wire na23b;
wire na24a;
wor na24b;
wire na26a;
wor na26b;
wire na26d;
wire na27a;
wire na27b;
wor na28a;
wire na31a;
wor na31b;
wire na33a;
wire na33b;
wire na33c;
wor na34a;
wire na34b;

// 10-18
a a11a(.clk(W2), .a1(AV), .y(na11a));
a a10a(.exp(na11a), .a1(HOYV), .a2(TMVN), .a3(ZDLN), .y(na17b));
a a11b(.clk(X7), .a1(P3VN), .a2(AV), .y(na11b));
a a10b(.exp(na11b), .a1(G1V), .a2(HOYVN), .a3(P1VN), .y(na17b));
a a9a(.a1(G1V), .a2(DTMVN), .a3(Q1), .a4(MR2N), .y(na9a));
a a16a(.clk(W2), .exp(na9a), .a1(SG2), .a2(G6V), .a3(AVN), .y(na17b));
a a9b(.a1(G1V), .a2(DTMVN), .a3(Q1N), .a4(MR2), .y(na9b));
a a16b(.clk(W2), .exp(na9b), .a1(SG2N), .a2(G6V), .a3(AVN), .y(na17b));
a a17a(.a1(ZDLN), .y(na17a));
a a17b(.clk(V1), .exp(na17a), .a1(TMDN), .y(na17b));
i a17c(.a(na17b), .y(FMDN));

a a32a(.clk(X7), .a1(HOYVN), .a2(VOYVN), .y(na31b));
a a33a(.clk(X7), .a1(HOYVN), .a2(DTMV), .y(na33a));
a a32b(.exp(na33a), .a1(G1VN), .a2(G6VN), .a3(AV), .y(na31b));
a a25a(.clk(X7), .a1(HOYV), .a2(TMVN), .a3(DTMVN), .y(na31b));
a a31a(.a1(TMDN), .y(na31a));
a a31b(.clk(V1), .exp(na31a), .a1(FMDN), .y(na31b));
i #(0) a31c(.a(na31b), .y(ZDLN));

a a6a(.clk(Z4), .a1(G3V), .a2(G4VN), .y(na6a));
a a5a(.exp(na6a), .a1(ZDHN), .a2(HOYV), .a3(TMVN), .y(na12b));
a a6b(.clk(W2), .a1(G3V), .y(na6b));
a a14a(.a1(SG1), .a2(HOYV), .a3(DTMVN), .a4(MR2N), .y(na6b));
a a13a(.exp(na6b), .a1(G1VN), .a2(AVN), .a3(Q1), .y(na12b));
a a6c(.clk(W2), .a1(G3V), .y(na6c));
a a14b(.a1(SG1N), .a2(HOYV), .a3(DTMVN), .a4(MR2), .y(na6c));
a a13b(.exp(na6c), .a1(G1VN), .a2(AVN), .a3(Q1N), .y(na12b));
a a12a(.a1(ZDHN), .y(na12a));
a a12b(.clk(V1), .exp(na12a), .a1(EMDN), .y(na12b));
i a12c(.a(na12b), .y(SMDN));

a a15a(.clk(X7), .a1(BD), .y(na15a));
a a22a(.exp(na15a), .a1(SG2), .a2(TMVN), .a3(AV), .y(na15b));
a a22b(.clk(Z4), .a1(MD7V), .a2(PR6), .y(na15b));
a a15b(.clk(V1), .a1(CD), .y(na15b));
i a15c(.a(na15b), .y(CDN));
i #(0) a1c(.a(na1a), .y(CD));
a a1a(.clk(V1), .a1(CDN), .y(na1a));
a a1b(.clk(Z4), .exp(na3a), .a1(MD7N), .y(na1a));
a a3a(.a1(PR6N), .y(na3a));
a a8a(.clk(W2), .a1(SG2), .a2(TMVN), .a3(AV), .y(na1a));
a a8b(.clk(Y7), .a1(TMVN), .a2(DTMVN), .a3(G7VN), .y(na1a));

// 10-19
a a33b(.clk(X7), .a1(HOYVN), .y(na33b));
a a25b(.exp(na33b), .a1(P1VN), .a2(TMVN), .a3(G2VN), .y(na26b));
a a33c(.clk(Z4), .a1(HOYV), .y(na33c));
a a18a(.exp(na33c), .a1(DTMVN), .a2(G1V), .a3(G4V), .y(na26b));
a a26a(.a1(EMDN), .y(na26a));
a a26b(.clk(V1), .exp(na26a), .a1(SMDN), .y(na26b));
i #(0) a26c(.a(na26b), .y(ZDHN));

a a3b(.clk(Z4), .a1(MD7V), .y(na3b));
a a2a(.exp(na3b), .a1(PR6N), .y(na2b));
a a2b(.clk(V1), .a1(BD), .y(na2b));
i a2c(.a(na2b), .y(BDN));
i #(0) a4c(.a(na4a), .y(BD));
a a4a(.clk(V1), .a1(BDN), .y(na4a));
a a4b(.clk(Z4), .exp(na3c), .a1(MD7N), .y(na4a));
a a3c(.a1(PR6), .y(na3c));
a a5b(.clk(Y7), .a1(TMVN), .a2(G2V), .a3(G6VN), .y(na4a));

a a11c(.clk(W2), .a1(AVN), .a2(P3VN), .y(na11c));
a a18b(.exp(na11c), .a1(HOYVN), .a2(P1VN), .a3(TMVN), .y(na19b));
a a27a(.a1(MR2N), .a2(G7V), .a3(AV), .a4(DTMVN), .y(na27a));
a a20a(.clk(W2), .exp(na27a), .a1(SG1), .a2(G2V), .y(na19b));
a a27b(.a1(MR2), .a2(G7V), .a3(AV), .a4(DTMVN), .y(na27b));
a a20b(.clk(W2), .exp(na27b), .a1(SG1N), .a2(HOYV), .a3(G2V), .y(na19b));
a a19a(.a1(ZDHN), .y(na19a));
a a19b(.clk(V1), .exp(na19a), .a1(SMDN), .y(na19b));
i a19c(.a(na19b), .y(EMDN));

a a23a(.clk(X7), .a1(SG2), .a2(G7VN), .a3(MR2N), .a4(HOYV), .y(na23a));
a a30a(.exp(na23a), .a1(G5V), .a2(AV), .a3(DTMVN), .y(na24b));
a a23b(.clk(X7), .a1(SG2N), .a2(G7VN), .a3(MR2), .a4(HOYV), .y(na23b));
a a30b(.exp(na23b), .a1(DTMVN), .a2(G5V), .a3(AV), .y(na24b));
a a24a(.a1(ZDLN), .y(na24a));
a a24b(.clk(V1), .exp(na24a), .a1(FMDN), .y(na24b));
i a24c(.a(na24b), .y(TMDN));

// 10-20
a a8c(.clk(Z4), .a1(G5V), .y(na8c));
a a1d(.exp(na8c), .a1(DTMVN), .a2(HOYV), .a3(G6VN), .y(na8d));
a a1e(.clk(Z4), .a1(HOYVN), .a2(TMVN), .a3(G2VN), .y(na8d));
a a8d(.clk(V1), .a1(SG1N), .y(na8d));
i #(0) a8e(.a(na8d), .y(SG1));
i a9e(.a(na9c), .y(SG1N));
a a9c(.clk(V1), .a1(SG1), .y(na9c));
a a9d(.clk(Z4), .a1(MR1V), .a2(G7VN), .y(na9d));
a a2d(.exp(na9d), .a1(DTMVN), .a2(HOYV), .a3(G6V), .y(na9c));
a a2e(.clk(Y7), .exp(na3d), .a1(CDN), .a2(PR6N), .y(na9c));
a a3d(.a1(G2V), .a2(G3VN), .a3(HOYVN), .a4(DTMV), .y(na3d));
a a3e(.clk(Y7), .exp(na10c), .a1(G2V), .a2(HOYVN), .y(na9c));
a a10c(.a1(CD), .a2(PR6), .a3(DTMV), .a4(G3VN), .y(na10c));

a a11d(.clk(Z4), .a1(G7V), .y(na11d));
a a10d(.exp(na11d), .a1(DTMVN), .a2(G1V), .a3(HOYV), .y(na11e));
a a4d(.clk(Y7), .a1(HOYVN), .a2(TMVN), .a3(G2VN), .y(na11e));
a a11e(.clk(V1), .a1(SG2N), .y(na11e));
i #(0) a11f(.a(na11e), .y(SG2));
i a12f(.a(na12d), .y(SG2N));
a a12d(.clk(V1), .a1(SG2), .y(na12d));
a a12e(.clk(Z4), .a1(MR1V), .a2(G1VN), .y(na12e));
a a4e(.exp(na12e), .a1(G2V), .a2(DTMVN), .a3(HOYV), .y(na12d));
a a6d(.clk(Z4), .a1(G1V), .a2(PR4N), .a3(HOYVN), .y(na6d));
a a5c(.exp(na6d), .a1(DTMV), .a2(G2VN), .a3(MD6N), .y(na12d));
a a6e(.clk(Z4), .a1(G1V), .a2(MD6), .a3(HOYVN), .y(na6e));
a a5d(.exp(na6e), .a1(DTMV), .a2(G2VN), .a3(PR4), .y(na12d));

// 10-21
a a7a(.clk(Z4), .a1(ZDLN), .a2(FMDN), .a3(MD2), .y(na14c));
a a7b(.clk(Z4), .a1(ZDLN), .a2(TMDN), .a3(MD3), .y(na14c));
a a14c(.clk(V4MOD4), .a1(TFD), .y(na14c));
i a14d(.a(na14c), .y(TFDN));
i #(0) a21c(.a(na21a), .y(TFD));
a a21a(.clk(V4MOD4), .a1(TFDN), .y(na21a));
a a13c(.clk(Z4), .a1(ZDLN), .a2(FMDN), .a3(MD2N), .y(na21a));
a a13d(.clk(Z4), .a1(ZDLN), .a2(TMDN), .a3(MD3N), .y(na21a));
a a21b(.clk(Z4), .a1(DTMVN), .y(na21b));
a a20c(.exp(na21b), .a1(HOYV), .a2(G5V), .a3(G6VN), .y(na21a));
a a14e(.clk(Z4), .a1(DTMV), .y(na14e));
a a20d(.exp(na14e), .a1(HOYVN), .a2(G2VN), .a3(G7VN), .y(na21a));
a a27c(.clk(Z4), .a1(HOYVN), .a2(VOYVN), .a3(G7V), .y(na21a));

a a27d(.clk(Y7), .a1(ZDHN), .a2(SMDN), .a3(MD4), .y(na28a));
a a35a(.clk(Y7), .a1(ZDHN), .a2(EMDN), .a3(MD5), .y(na28a));
a a28a(.clk(V4MOD4), .a1(ESD), .y(na28a));
i a28b(.a(na28a), .y(ESDN));
i #(0) a34c(.a(na34a), .y(ESD));
a a34a(.clk(V4MOD4), .a1(ESDN), .y(na34a));
a a34b(.clk(Y7), .a1(SMDN), .y(na34b));
a a28c(.exp(na34b), .a1(MD4N), .y(na34a));
a a35b(.clk(Y7), .a1(EMDN), .a2(MD5N), .y(na34a));
a a26d(.clk(Y7), .a1(DTMVN), .y(na26d));
a a33d(.exp(na26d), .a1(HOYV), .a2(G1V), .a3(G5V), .y(na34a));
a a33e(.clk(Y7), .a1(HOYVN), .a2(TMVN), .a3(G3VN), .y(na34a));

endmodule
`default_nettype wire
