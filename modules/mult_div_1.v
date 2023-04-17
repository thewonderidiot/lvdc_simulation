`timescale 1ns/1ps
`default_nettype none

module mult_div_1(
    input wire SIM_CLK,
    input wire SIM_RST,
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

wire na1a;
wire na1a_a15d;
wire na1a_a15e;
wire na1a_a1a;
assign na1a = na1a_a15d | na1a_a15e | na1a_a1a;
wire na2a;
wire na2a_a16c;
wire na2a_a16d;
wire na2a_a2a;
assign na2a = na2a_a16c | na2a_a16d | na2a_a2a;
wire na4a;
wire na4c;
wire na4d;
wire na5a;
wire na5a_a5a;
wire na5a_a6c;
assign na5a = na5a_a5a | na5a_a6c;
wire na5b;
wire na6a;
wire na6a_a13b;
wire na6a_a6a;
assign na6a = na6a_a13b | na6a_a6a;
wire na6d;
wire na6d_a6d;
wire na6d_a6e;
wire na6d_a5e;
assign na6d = na6d_a6d | na6d_a6e | na6d_a5e;
wire na7a;
wire na7a_a7a;
wire na7a_a7b;
assign na7a = na7a_a7a | na7a_a7b;
wire na7e;
wire na7e_a5d;
wire na7e_a7d;
wire na7e_a7e;
assign na7e = na7e_a5d | na7e_a7d | na7e_a7e;
wire na8a;
wire na8b;
wire na8b_a8b;
wire na8b_a29c;
wire na8b_a29d;
wire na8b_a22d;
wire na8b_a22e;
assign na8b = na8b_a8b | na8b_a29c | na8b_a29d | na8b_a22d | na8b_a22e;
wire na8c;
wire na9c;
wire na9c_a9c;
wire na9c_a23c;
wire na9c_a23d;
wire na9c_a30d;
wire na9c_a30e;
assign na9c = na9c_a9c | na9c_a23c | na9c_a23d | na9c_a30d | na9c_a30e;
wire na9d;
wire na10b;
wire na10d;
wire na10d_a3a;
wire na10d_a10c;
wire na10d_a10d;
assign na10d = na10d_a3a | na10d_a10c | na10d_a10d;
wire na11a;
wire na11a_a11a;
wire na11a_a11b;
wire na11a_a10a;
assign na11a = na11a_a11a | na11a_a11b | na11a_a10a;
wire na11d;
wire na11d_a11d;
wire na11d_a11e;
wire na11d_a3b;
assign na11d = na11d_a11d | na11d_a11e | na11d_a3b;
wire na12c;
wire na12c_a12c;
wire na12c_a12d;
assign na12c = na12c_a12c | na12c_a12d;
wire na13d;
wire na13d_a13c;
wire na13d_a13d;
assign na13d = na13d_a13c | na13d_a13d;
wire na14a;
wire na14a_a21b;
wire na14a_a13a;
wire na14a_a14a;
assign na14a = na14a_a21b | na14a_a13a | na14a_a14a;
wire na14c;
wire na14e;
wire na14e_a14d;
wire na14e_a14e;
assign na14e = na14e_a14d | na14e_a14e;
wire na15b;
wire na15b_a15a;
wire na15b_a15b;
assign na15b = na15b_a15a | na15b_a15b;
wire na16b;
wire na17a;
wire na17b;
wire na17b_a16a;
wire na17b_a17b;
assign na17b = na17b_a16a | na17b_a17b;
wire na17d;
wire na17d_a17d;
wire na17d_a17e;
assign na17d = na17d_a17d | na17d_a17e;
wire na18a;
wire na18a_a18a;
wire na18a_a18b;
assign na18a = na18a_a18a | na18a_a18b;
wire na18e;
wire na18e_a18d;
wire na18e_a18e;
assign na18e = na18e_a18d | na18e_a18e;
wire na19a;
wire na19b;
wire na19b_a12a;
wire na19b_a12b;
wire na19b_a19b;
assign na19b = na19b_a12a | na19b_a12b | na19b_a19b;
wire na19e;
wire na19e_a19d;
wire na19e_a19e;
assign na19e = na19e_a19d | na19e_a19e;
wire na20a;
wire na20a_a28a;
wire na20a_a20a;
assign na20a = na20a_a28a | na20a_a20a;
wire na20b;
wire na20d;
wire na20d_a20d;
wire na20d_a20e;
assign na20d = na20d_a20d | na20d_a20e;
wire na21c;
wire na21c_a21c;
wire na21c_a21d;
assign na21c = na21c_a21c | na21c_a21d;
wire na22a;
wire na22a_a22a;
wire na22a_a22b;
assign na22a = na22a_a22a | na22a_a22b;
wire na23a;
wire na25a;
wire na25a_a25a;
wire na25a_a33a;
assign na25a = na25a_a25a & na25a_a33a;
wire na25b;
wire na25c;
wire na26b;
wire na26c;
wire na27a;
wire na27b;
wire na27b_a28b;
wire na27b_a21a;
wire na27b_a27b;
assign na27b = na27b_a28b | na27b_a21a | na27b_a27b;
wire na28d;
wire na28d_a28c;
wire na28d_a28d;
assign na28d = na28d_a28c | na28d_a28d;
wire na29b;
wire na30b;
wire na30b_a9a;
wire na30b_a9b;
wire na30b_a30a;
wire na30b_a23b;
wire na30b_a29a;
wire na30b_a30b;
wire na30b_a24a;
wire na30b_a24b;
assign na30b = na30b_a9a | na30b_a9b | na30b_a30a | na30b_a23b | na30b_a29a | na30b_a30b | na30b_a24a | na30b_a24b;
wire na31a;
wire na31b;
wire na31b_a32a;
wire na31b_a32b;
wire na31b_a31b;
wire na31b_a26a;
assign na31b = na31b_a32a | na31b_a32b | na31b_a31b | na31b_a26a;
wire na33b;
wire na33c;
wire na35a;
wire na35a_a35a;
wire na35a_a35b;
assign na35a = na35a_a35a | na35a_a35b;

// 10-14
and a17a(na17a, Z6, OP2VN, PBV);
and a16a(na17b_a16a, na17a, OP4VN, OP1V, G2V);
and a17b(na17b_a17b, V4MOD4, HOY);
inv a17c(HOYN, na17b, SIM_CLK, SIM_RST);
inv #(0) a18c(HOY, na18a, SIM_CLK, SIM_RST);
and a18a(na18a_a18a, V4MOD4, HOYN);
and a25a(na25a_a25a, Z6, PAV, P2VN);
and a18b(na18a_a18b, na25a, TMVN);
and a33a(na25a_a33a, G2V);

and a15a(na15b_a15a, Z6, na16b, OP4VN);
and a16b(na16b, OP3VN, OP1V, PBV, G2V);
and a15b(na15b_a15b, V4MOD4, VOY);
inv a15c(VOYN, na15b, SIM_CLK, SIM_RST);
inv #(0) a22c(VOY, na22a, SIM_CLK, SIM_RST);
and a22a(na22a_a22a, V4MOD4, VOYN);
and a23a(na23a, G5V, P1VN, PCVN, P2VN);
and a22b(na22a_a22b, Y1, na23a);

and a4a(na4a, V1, Q9N);
inv #(0) a4b(Q9, na4a, SIM_CLK, SIM_RST);
inv a11c(Q9N, na11a, SIM_CLK, SIM_RST);
and a11a(na11a_a11a, ZN, Q9);
and a11b(na11a_a11b, W2, Q8V);
and a10a(na11a_a10a, W2, na10b, TBCV, OP1V, OP2V);
and a10b(na10b, OP3VN, AI3V, TTLV);

and a9a(na30b_a9a, W2, NU, HOYN, VOYN);
and a9b(na30b_a9b, W2, MD7V, HOY);
and a8a(na8a, VOY);
and a30a(na30b_a30a, W2, na8a, MD7V);
and a23b(na30b_a23b, X7, PQR, P1VN, P2VN);
and a29a(na30b_a29a, X7, MR2, HOYV, P3VN);
and a29b(na29b, X7, P3VN, HOYVN, VOYV);
and a30b(na30b_a30b, na29b, Q9);
and a24a(na30b_a24a, Z6, PR2V, P3N, HOYV);
and a24b(na30b_a24b, Z6, PR10, P3N, HOYVN);
inv a30c(DL44, na30b, SIM_CLK, SIM_RST);

and a25b(na25b, Y1, HOYV, G4VN);
and a32a(na31b_a32a, na25b, PBV, P2VN, G5V);
and a25c(na25c, Y1, P2VN, G7VN);
and a32b(na31b_a32b, na25c, PCV, G6V, VOYV);
and a31a(na31a, Y1, P3VN);
and a31b(na31b_a31b, na31a, STP);
and a26a(na31b_a26a, X7, na33b, Q9);
and a33b(na33b, TBCV);
inv a31c(DL31, na31b, SIM_CLK, SIM_RST);

// 10-15
and a12a(na19b_a12a, Y1, HOYV, P2VN, PBV);
and a26b(na26b, Y1, VOYV);
and a12b(na19b_a12b, na26b, G4VN, P2VN, PBV);
and a19a(na19a, P2N, P3N);
and a19b(na19b_a19b, V4MOD4, na19a, RUNV);
inv a19c(P1N, na19b, SIM_CLK, SIM_RST);

and a28a(na20a_a28a, Z6, PAV, P3VN);
and a20a(na20a_a20a, V4MOD4, na20b, RUNV);
and a20b(na20b, P1N, P3N);
inv a20c(P2N, na20a, SIM_CLK, SIM_RST);

and a26c(na26c, Y1, PCV);
and a28b(na27b_a28b, na26c, STP, G5V, G6VN);
and a33c(na33c, Y1, PBV);
and a21a(na27b_a21a, na33c, STP, G4V, G5VN);
and a27a(na27a, P1N);
and a27b(na27b_a27b, V4MOD4, na27a, P2N);
inv a27c(P3N, na27b, SIM_CLK, SIM_RST);

and a21b(na14a_a21b, Z6, HOYV, G4V, DTMVN);
and a13a(na14a_a13a, Z6, VOYV, G7V, DTMVN);
and a14a(na14a_a14a, V4MOD4, TM);
inv a14b(TMN, na14a, SIM_CLK, SIM_RST);
inv #(0) a7c(TM, na7a, SIM_CLK, SIM_RST);
and a7a(na7a_a7a, V4MOD4, TMN);
and a7b(na7a_a7b, Z6, na14c, G1VN);
and a14c(na14c, G7VN, DTMV);

and a13b(na6a_a13b, Z6, G2V, G3VN, TMV);
and a6a(na6a_a6a, V4MOD4, DTM);
inv a6b(DTMN, na6a, SIM_CLK, SIM_RST);
inv #(0) a5c(DTM, na5a, SIM_CLK, SIM_RST);
and a5a(na5a_a5a, V4MOD4, DTMN);
and a6c(na5a_a6c, Z6, na5b, G2V);
and a5b(na5b, TMVN);

// 10-16
and a3a(na10d_a3a, W2, HOYV, P2VN, TBCV);
and a10c(na10d_a10c, Z6, MD0N);
and a10d(na10d_a10d, V1, MD1N);
inv #(0) a10e(MD1, na10d, SIM_CLK, SIM_RST);
inv a11f(MD1N, na11d, SIM_CLK, SIM_RST);
and a11d(na11d_a11d, V1, MD1);
and a11e(na11d_a11e, Z6, MD0);
and a3b(na11d_a3b, na4c, HOYV, P2VN, P3VN);
and a4c(na4c, X7, TRSV);

and a5d(na7e_a5d, W2, HOYVN, P2VN, TBCV);
and a7d(na7e_a7d, Z6, MD4N);
and a7e(na7e_a7e, V1, MD5N);
inv #(0) a7f(MD5, na7e, SIM_CLK, SIM_RST);
inv a6f(MD5N, na6d, SIM_CLK, SIM_RST);
and a6d(na6d_a6d, V1, MD5);
and a6e(na6d_a6e, Z6, MD4);
and a5e(na6d_a5e, na4d, HOYVN, P2VN, P3VN);
and a4d(na4d, X7, TRSV);

and a18d(na18e_a18d, Y1, MD1N);
and a18e(na18e_a18e, V4MOD4, MD2N);
inv #(0) a18f(MD2, na18e, SIM_CLK, SIM_RST);
inv a17f(MD2N, na17d, SIM_CLK, SIM_RST);
and a17d(na17d_a17d, V1, MD2);
and a17e(na17d_a17e, Y1, MD1);

and a14d(na14e_a14d, Y1, MD5N);
and a14e(na14e_a14e, V1, MD6N);
inv #(0) a14f(MD6, na14e, SIM_CLK, SIM_RST);
inv a21e(MD6N, na21c, SIM_CLK, SIM_RST);
and a21c(na21c_a21c, V1, MD6);
and a21d(na21c_a21d, Y1, MD5);

and a28c(na28d_a28c, X7, MD6N);
and a28d(na28d_a28d, V4MOD4, MD7N);
inv #(0) a28e(MD7, na28d, SIM_CLK, SIM_RST);
inv a35c(MD7N, na35a, SIM_CLK, SIM_RST);
and a35a(na35a_a35a, V1, MD7);
and a35b(na35a_a35b, X7, MD6);

// 10-17
and a19d(na19e_a19d, X7, MD2N);
and a19e(na19e_a19e, V1, MD3N);
inv #(0) a19f(MD3, na19e, SIM_CLK, SIM_RST);
inv a12e(MD3N, na12c, SIM_CLK, SIM_RST);
and a12c(na12c_a12c, V1, MD3);
and a12d(na12c_a12d, X7, MD2);

and a13c(na13d_a13c, W2, MD3N);
and a13d(na13d_a13d, V1, MD4N);
inv #(0) a13e(MD4, na13d, SIM_CLK, SIM_RST);
inv a20f(MD4N, na20d, SIM_CLK, SIM_RST);
and a20d(na20d_a20d, V1, MD4);
and a20e(na20d_a20e, W2, MD3);

and a16c(na2a_a16c, X7, SG2N, PR0V, ESDV);
and a16d(na2a_a16d, X7, SG2, PR0VN, ESDV);
and a2a(na2a_a2a, V1, K1);
inv a2b(K1N, na2a, SIM_CLK, SIM_RST);
inv #(0) a9e(K1, na9c, SIM_CLK, SIM_RST);
and a9c(na9c_a9c, V1, K1N);
and a23c(na9c_a23c, X7, SG2N, PR0VN, ESDVN);
and a23d(na9c_a23d, X7, SG2, PR0V, ESDVN);
and a30d(na9c_a30d, Y1, HOYVN, TMVN, G4VN);
and a30e(na9c_a30e, Y1, na9d, HOYV, DTMVN, G2V);
and a9d(na9d, G5V);

and a15d(na1a_a15d, Y1, SG1N, PR1, TFDV);
and a15e(na1a_a15e, Y1, SG1, PR1N, TFDV);
and a1a(na1a_a1a, V1, K2);
inv a1b(K2N, na1a, SIM_CLK, SIM_RST);
inv #(0) a8d(K2, na8b, SIM_CLK, SIM_RST);
and a8b(na8b_a8b, V1, K2N);
and a29c(na8b_a29c, Y1, SG1N, PR1N, TFDVN);
and a29d(na8b_a29d, Y1, SG1, PR1, TFDVN);
and a22d(na8b_a22d, Z6, HOYVN, TMVN, G3VN);
and a22e(na8b_a22e, na8c, DTMVN, G5V, G7VN);
and a8c(na8c, Z6, HOYV);
        
endmodule
`default_nettype wire
