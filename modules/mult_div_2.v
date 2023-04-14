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
and a11a(na11a, W2, AV);
and a10a(na17b, na11a, HOYV, TMVN, ZDLN);
and a11b(na11b, X7, P3VN, AV);
and a10b(na17b, na11b, G1V, HOYVN, P1VN);
and a9a(na9a, G1V, DTMVN, Q1, MR2N);
and a16a(na17b, W2, na9a, SG2, G6V, AVN);
and a9b(na9b, G1V, DTMVN, Q1N, MR2);
and a16b(na17b, W2, na9b, SG2N, G6V, AVN);
and a17a(na17a, ZDLN);
and a17b(na17b, V1, na17a, TMDN);
inv a17c(FMDN, na17b);

and a32a(na31b, X7, HOYVN, VOYVN);
and a33a(na33a, X7, HOYVN, DTMV);
and a32b(na31b, na33a, G1VN, G6VN, AV);
and a25a(na31b, X7, HOYV, TMVN, DTMVN);
and a31a(na31a, TMDN);
and a31b(na31b, V1, na31a, FMDN);
inv #(0) a31c(ZDLN, na31b);

and a6a(na6a, Z4, G3V, G4VN);
and a5a(na12b, na6a, ZDHN, HOYV, TMVN);
and a6b(na6b, W2, G3V);
and a14a(na6b, SG1, HOYV, DTMVN, MR2N);
and a13a(na12b, na6b, G1VN, AVN, Q1);
and a6c(na6c, W2, G3V);
and a14b(na6c, SG1N, HOYV, DTMVN, MR2);
and a13b(na12b, na6c, G1VN, AVN, Q1N);
and a12a(na12a, ZDHN);
and a12b(na12b, V1, na12a, EMDN);
inv a12c(SMDN, na12b);

and a15a(na15a, X7, BD);
and a22a(na15b, na15a, SG2, TMVN, AV);
and a22b(na15b, Z4, MD7V, PR6);
and a15b(na15b, V1, CD);
inv a15c(CDN, na15b);
inv #(0) a1c(CD, na1a);
and a1a(na1a, V1, CDN);
and a1b(na1a, Z4, na3a, MD7N);
and a3a(na3a, PR6N);
and a8a(na1a, W2, SG2, TMVN, AV);
and a8b(na1a, Y7, TMVN, DTMVN, G7VN);

// 10-19
and a33b(na33b, X7, HOYVN);
and a25b(na26b, na33b, P1VN, TMVN, G2VN);
and a33c(na33c, Z4, HOYV);
and a18a(na26b, na33c, DTMVN, G1V, G4V);
and a26a(na26a, EMDN);
and a26b(na26b, V1, na26a, SMDN);
inv #(0) a26c(ZDHN, na26b);

and a3b(na3b, Z4, MD7V);
and a2a(na2b, na3b, PR6N);
and a2b(na2b, V1, BD);
inv a2c(BDN, na2b);
inv #(0) a4c(BD, na4a);
and a4a(na4a, V1, BDN);
and a4b(na4a, Z4, na3c, MD7N);
and a3c(na3c, PR6);
and a5b(na4a, Y7, TMVN, G2V, G6VN);

and a11c(na11c, W2, AVN, P3VN);
and a18b(na19b, na11c, HOYVN, P1VN, TMVN);
and a27a(na27a, MR2N, G7V, AV, DTMVN);
and a20a(na19b, W2, na27a, SG1, G2V);
and a27b(na27b, MR2, G7V, AV, DTMVN);
and a20b(na19b, W2, na27b, SG1N, HOYV, G2V);
and a19a(na19a, ZDHN);
and a19b(na19b, V1, na19a, SMDN);
inv a19c(EMDN, na19b);

and a23a(na23a, X7, SG2, G7VN, MR2N, HOYV);
and a30a(na24b, na23a, G5V, AV, DTMVN);
and a23b(na23b, X7, SG2N, G7VN, MR2, HOYV);
and a30b(na24b, na23b, DTMVN, G5V, AV);
and a24a(na24a, ZDLN);
and a24b(na24b, V1, na24a, FMDN);
inv a24c(TMDN, na24b);

// 10-20
and a8c(na8c, Z4, G5V);
and a1d(na8d, na8c, DTMVN, HOYV, G6VN);
and a1e(na8d, Z4, HOYVN, TMVN, G2VN);
and a8d(na8d, V1, SG1N);
inv #(0) a8e(SG1, na8d);
inv a9e(SG1N, na9c);
and a9c(na9c, V1, SG1);
and a9d(na9d, Z4, MR1V, G7VN);
and a2d(na9c, na9d, DTMVN, HOYV, G6V);
and a2e(na9c, Y7, na3d, CDN, PR6N);
and a3d(na3d, G2V, G3VN, HOYVN, DTMV);
and a3e(na9c, Y7, na10c, G2V, HOYVN);
and a10c(na10c, CD, PR6, DTMV, G3VN);

and a11d(na11d, Z4, G7V);
and a10d(na11e, na11d, DTMVN, G1V, HOYV);
and a4d(na11e, Y7, HOYVN, TMVN, G2VN);
and a11e(na11e, V1, SG2N);
inv #(0) a11f(SG2, na11e);
inv a12f(SG2N, na12d);
and a12d(na12d, V1, SG2);
and a12e(na12e, Z4, MR1V, G1VN);
and a4e(na12d, na12e, G2V, DTMVN, HOYV);
and a6d(na6d, Z4, G1V, PR4N, HOYVN);
and a5c(na12d, na6d, DTMV, G2VN, MD6N);
and a6e(na6e, Z4, G1V, MD6, HOYVN);
and a5d(na12d, na6e, DTMV, G2VN, PR4);

// 10-21
and a7a(na14c, Z4, ZDLN, FMDN, MD2);
and a7b(na14c, Z4, ZDLN, TMDN, MD3);
and a14c(na14c, V4MOD4, TFD);
inv a14d(TFDN, na14c);
inv #(0) a21c(TFD, na21a);
and a21a(na21a, V4MOD4, TFDN);
and a13c(na21a, Z4, ZDLN, FMDN, MD2N);
and a13d(na21a, Z4, ZDLN, TMDN, MD3N);
and a21b(na21b, Z4, DTMVN);
and a20c(na21a, na21b, HOYV, G5V, G6VN);
and a14e(na14e, Z4, DTMV);
and a20d(na21a, na14e, HOYVN, G2VN, G7VN);
and a27c(na21a, Z4, HOYVN, VOYVN, G7V);

and a27d(na28a, Y7, ZDHN, SMDN, MD4);
and a35a(na28a, Y7, ZDHN, EMDN, MD5);
and a28a(na28a, V4MOD4, ESD);
inv a28b(ESDN, na28a);
inv #(0) a34c(ESD, na34a);
and a34a(na34a, V4MOD4, ESDN);
and a34b(na34b, Y7, SMDN);
and a28c(na34a, na34b, MD4N);
and a35b(na34a, Y7, EMDN, MD5N);
and a26d(na26d, Y7, DTMVN);
and a33d(na34a, na26d, HOYV, G1V, G5V);
and a33e(na34a, Y7, HOYVN, TMVN, G3VN);

endmodule
`default_nettype wire
