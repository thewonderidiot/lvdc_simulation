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

wire na1a;
wire na1a_a1a;
wire na1a_a1b;
wire na1a_a8a;
wire na1a_a8b;
assign na1a = na1a_a1a | na1a_a1b | na1a_a8a | na1a_a8b;
wire na2b;
wire na2b_a2a;
wire na2b_a2b;
assign na2b = na2b_a2a | na2b_a2b;
wire na3a;
wire na3c;
wire na3d;
wire na4a;
wire na4a_a4a;
wire na4a_a4b;
wire na4a_a5b;
assign na4a = na4a_a4a | na4a_a4b | na4a_a5b;
wire na3b;
wire na6a;
wire na6b;
wire na6b_a6b;
wire na6b_a14a;
assign na6b = na6b_a6b & na6b_a14a;
wire na6c;
wire na6c_a6c;
wire na6c_a14b;
assign na6c = na6c_a6c & na6c_a14b;
wire na6d;
wire na6e;
wire na8c;
wire na8d;
wire na8d_a1d;
wire na8d_a1e;
wire na8d_a8d;
assign na8d = na8d_a1d | na8d_a1e | na8d_a8d;
wire na9a;
wire na9b;
wire na9c;
wire na9c_a9c;
wire na9c_a2d;
wire na9c_a2e;
wire na9c_a3e;
assign na9c = na9c_a9c | na9c_a2d | na9c_a2e | na9c_a3e;
wire na9d;
wire na10c;
wire na11a;
wire na11b;
wire na11c;
wire na11d;
wire na11e;
wire na11e_a10d;
wire na11e_a4d;
wire na11e_a11e;
assign na11e = na11e_a10d | na11e_a4d | na11e_a11e;
wire na12a;
wire na12b;
wire na12b_a5a;
wire na12b_a13a;
wire na12b_a13b;
wire na12b_a12b;
assign na12b = na12b_a5a | na12b_a13a | na12b_a13b | na12b_a12b;
wire na12d;
wire na12d_a12d;
wire na12d_a4e;
wire na12d_a5c;
wire na12d_a5d;
assign na12d = na12d_a12d | na12d_a4e | na12d_a5c | na12d_a5d;
wire na12e;
wire na14c;
wire na14c_a7a;
wire na14c_a7b;
wire na14c_a14c;
assign na14c = na14c_a7a | na14c_a7b | na14c_a14c;
wire na14e;
wire na15a;
wire na15b;
wire na15b_a22a;
wire na15b_a22b;
wire na15b_a15b;
assign na15b = na15b_a22a | na15b_a22b | na15b_a15b;
wire na17a;
wire na17b;
wire na17b_a10a;
wire na17b_a10b;
wire na17b_a16a;
wire na17b_a16b;
wire na17b_a17b;
assign na17b = na17b_a10a | na17b_a10b | na17b_a16a | na17b_a16b | na17b_a17b;
wire na19a;
wire na19b;
wire na19b_a18b;
wire na19b_a20a;
wire na19b_a20b;
wire na19b_a19b;
assign na19b = na19b_a18b | na19b_a20a | na19b_a20b | na19b_a19b;
wire na21a;
wire na21a_a21a;
wire na21a_a13c;
wire na21a_a13d;
wire na21a_a20c;
wire na21a_a20d;
wire na21a_a27c;
assign na21a = na21a_a21a | na21a_a13c | na21a_a13d | na21a_a20c | na21a_a20d | na21a_a27c;
wire na21b;
wire na23a;
wire na23b;
wire na24a;
wire na24b;
wire na24b_a30a;
wire na24b_a30b;
wire na24b_a24b;
assign na24b = na24b_a30a | na24b_a30b | na24b_a24b;
wire na26a;
wire na26b;
wire na26b_a25b;
wire na26b_a18a;
wire na26b_a26b;
assign na26b = na26b_a25b | na26b_a18a | na26b_a26b;
wire na26d;
wire na27a;
wire na27b;
wire na28a;
wire na28a_a27d;
wire na28a_a35a;
wire na28a_a28a;
assign na28a = na28a_a27d | na28a_a35a | na28a_a28a;
wire na31a;
wire na31b;
wire na31b_a32a;
wire na31b_a32b;
wire na31b_a25a;
wire na31b_a31b;
assign na31b = na31b_a32a | na31b_a32b | na31b_a25a | na31b_a31b;
wire na33a;
wire na33b;
wire na33c;
wire na34a;
wire na34a_a34a;
wire na34a_a28c;
wire na34a_a35b;
wire na34a_a33d;
wire na34a_a33e;
assign na34a = na34a_a34a | na34a_a28c | na34a_a35b | na34a_a33d | na34a_a33e;
wire na34b;

// 10-18
and a11a(na11a, W2, AV);
and a10a(na17b_a10a, na11a, HOYV, TMVN, ZDLN);
and a11b(na11b, X7, P3VN, AV);
and a10b(na17b_a10b, na11b, G1V, HOYVN, P1VN);
and a9a(na9a, G1V, DTMVN, Q1, MR2N);
and a16a(na17b_a16a, W2, na9a, SG2, G6V, AVN);
and a9b(na9b, G1V, DTMVN, Q1N, MR2);
and a16b(na17b_a16b, W2, na9b, SG2N, G6V, AVN);
and a17a(na17a, ZDLN);
and a17b(na17b_a17b, V1, na17a, TMDN);
inv a17c(FMDN, na17b);

and a32a(na31b_a32a, X7, HOYVN, VOYVN);
and a33a(na33a, X7, HOYVN, DTMV);
and a32b(na31b_a32b, na33a, G1VN, G6VN, AV);
and a25a(na31b_a25a, X7, HOYV, TMVN, DTMVN);
and a31a(na31a, TMDN);
and a31b(na31b_a31b, V1, na31a, FMDN);
inv #(0) a31c(ZDLN, na31b);

and a6a(na6a, Z4, G3V, G4VN);
and a5a(na12b_a5a, na6a, ZDHN, HOYV, TMVN);
and a6b(na6b_a6b, W2, G3V);
and a14a(na6b_a14a, SG1, HOYV, DTMVN, MR2N);
and a13a(na12b_a13a, na6b, G1VN, AVN, Q1);
and a6c(na6c_a6c, W2, G3V);
and a14b(na6c_a14b, SG1N, HOYV, DTMVN, MR2);
and a13b(na12b_a13b, na6c, G1VN, AVN, Q1N);
and a12a(na12a, ZDHN);
and a12b(na12b_a12b, V1, na12a, EMDN);
inv a12c(SMDN, na12b);

and a15a(na15a, X7, BD);
and a22a(na15b_a22a, na15a, SG2, TMVN, AV);
and a22b(na15b_a22b, Z4, MD7V, PR6);
and a15b(na15b_a15b, V1, CD);
inv a15c(CDN, na15b);
inv #(0) a1c(CD, na1a);
and a1a(na1a_a1a, V1, CDN);
and a1b(na1a_a1b, Z4, na3a, MD7N);
and a3a(na3a, PR6N);
and a8a(na1a_a8a, W2, SG2, TMVN, AV);
and a8b(na1a_a8b, Y7, TMVN, DTMVN, G7VN);

// 10-19
and a33b(na33b, X7, HOYVN);
and a25b(na26b_a25b, na33b, P1VN, TMVN, G2VN);
and a33c(na33c, Z4, HOYV);
and a18a(na26b_a18a, na33c, DTMVN, G1V, G4V);
and a26a(na26a, EMDN);
and a26b(na26b_a26b, V1, na26a, SMDN);
inv #(0) a26c(ZDHN, na26b);

and a3b(na3b, Z4, MD7V);
and a2a(na2b_a2a, na3b, PR6N);
and a2b(na2b_a2b, V1, BD);
inv a2c(BDN, na2b);
inv #(0) a4c(BD, na4a);
and a4a(na4a_a4a, V1, BDN);
and a4b(na4a_a4b, Z4, na3c, MD7N);
and a3c(na3c, PR6);
and a5b(na4a_a5b, Y7, TMVN, G2V, G6VN);

and a11c(na11c, W2, AVN, P3VN);
and a18b(na19b_a18b, na11c, HOYVN, P1VN, TMVN);
and a27a(na27a, MR2N, G7V, AV, DTMVN);
and a20a(na19b_a20a, W2, na27a, SG1, G2V);
and a27b(na27b, MR2, G7V, AV, DTMVN);
and a20b(na19b_a20b, W2, na27b, SG1N, HOYV, G2V);
and a19a(na19a, ZDHN);
and a19b(na19b_a19b, V1, na19a, SMDN);
inv a19c(EMDN, na19b);

and a23a(na23a, X7, SG2, G7VN, MR2N, HOYV);
and a30a(na24b_a30a, na23a, G5V, AV, DTMVN);
and a23b(na23b, X7, SG2N, G7VN, MR2, HOYV);
and a30b(na24b_a30b, na23b, DTMVN, G5V, AV);
and a24a(na24a, ZDLN);
and a24b(na24b_a24b, V1, na24a, FMDN);
inv a24c(TMDN, na24b);

// 10-20
and a8c(na8c, Z4, G5V);
and a1d(na8d_a1d, na8c, DTMVN, HOYV, G6VN);
and a1e(na8d_a1e, Z4, HOYVN, TMVN, G2VN);
and a8d(na8d_a8d, V1, SG1N);
inv #(0) a8e(SG1, na8d);
inv a9e(SG1N, na9c);
and a9c(na9c_a9c, V1, SG1);
and a9d(na9d, Z4, MR1V, G7VN);
and a2d(na9c_a2d, na9d, DTMVN, HOYV, G6V);
and a2e(na9c_a2e, Y7, na3d, CDN, PR6N);
and a3d(na3d, G2V, G3VN, HOYVN, DTMV);
and a3e(na9c_a3e, Y7, na10c, G2V, HOYVN);
and a10c(na10c, CD, PR6, DTMV, G3VN);

and a11d(na11d, Z4, G7V);
and a10d(na11e_a10d, na11d, DTMVN, G1V, HOYV);
and a4d(na11e_a4d, Y7, HOYVN, TMVN, G2VN);
and a11e(na11e_a11e, V1, SG2N);
inv #(0) a11f(SG2, na11e);
inv a12f(SG2N, na12d);
and a12d(na12d_a12d, V1, SG2);
and a12e(na12e, Z4, MR1V, G1VN);
and a4e(na12d_a4e, na12e, G2V, DTMVN, HOYV);
and a6d(na6d, Z4, G1V, PR4N, HOYVN);
and a5c(na12d_a5c, na6d, DTMV, G2VN, MD6N);
and a6e(na6e, Z4, G1V, MD6, HOYVN);
and a5d(na12d_a5d, na6e, DTMV, G2VN, PR4);

// 10-21
and a7a(na14c_a7a, Z4, ZDLN, FMDN, MD2);
and a7b(na14c_a7b, Z4, ZDLN, TMDN, MD3);
and a14c(na14c_a14c, V4MOD4, TFD);
inv a14d(TFDN, na14c);
inv #(0) a21c(TFD, na21a);
and a21a(na21a_a21a, V4MOD4, TFDN);
and a13c(na21a_a13c, Z4, ZDLN, FMDN, MD2N);
and a13d(na21a_a13d, Z4, ZDLN, TMDN, MD3N);
and a21b(na21b, Z4, DTMVN);
and a20c(na21a_a20c, na21b, HOYV, G5V, G6VN);
and a14e(na14e, Z4, DTMV);
and a20d(na21a_a20d, na14e, HOYVN, G2VN, G7VN);
and a27c(na21a_a27c, Z4, HOYVN, VOYVN, G7V);

and a27d(na28a_a27d, Y7, ZDHN, SMDN, MD4);
and a35a(na28a_a35a, Y7, ZDHN, EMDN, MD5);
and a28a(na28a_a28a, V4MOD4, ESD);
inv a28b(ESDN, na28a);
inv #(0) a34c(ESD, na34a);
and a34a(na34a_a34a, V4MOD4, ESDN);
and a34b(na34b, Y7, SMDN);
and a28c(na34a_a28c, na34b, MD4N);
and a35b(na34a_a35b, Y7, EMDN, MD5N);
and a26d(na26d, Y7, DTMVN);
and a33d(na34a_a33d, na26d, HOYV, G1V, G5V);
and a33e(na34a_a33e, Y7, HOYVN, TMVN, G3VN);

endmodule
`default_nettype wire
