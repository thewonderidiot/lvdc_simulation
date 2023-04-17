`timescale 1ns/1ps
`default_nettype none

module arithmetic(
    input wire SIM_CLK,
    input wire SIM_RST,
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

wire na1b;
wire na1b_a1a;
wire na1b_a1b;
assign na1b = na1b_a1a | na1b_a1b;
wire na3a;
wire na3b;
wire na3b_a3b;
wire na3b_a5b;
assign na3b = na3b_a3b | na3b_a5b;
wire na4a;
wire na5a;
wire na6c;
wire na7a;
wire na7a_a7a;
wire na7a_a21a;
wire na7a_a14a;
wire na7a_a14b;
wire na7a_a6a;
wire na7a_a6b;
wire na7a_a34a;
wire na7a_a35b;
assign na7a = na7a_a7a | na7a_a21a | na7a_a14a | na7a_a14b | na7a_a6a | na7a_a6b | na7a_a34a | na7a_a35b;
wire na7b;
wire na7d;
wire na8a;
wire na8a_a8a;
wire na8a_a8b;
wire na8a_a29b;
assign na8a = na8a_a8a | na8a_a8b | na8a_a29b;
wire na9a;
wire na9c;
wire na10a;
wire na11a;
wire na11a_a11a;
wire na11a_a12a;
wire na11a_a12b;
wire na11a_a18a;
wire na11a_a17a;
assign na11a = na11a_a11a | na11a_a12a | na11a_a12b | na11a_a18a | na11a_a17a;
wire na11b;
wire na11e;
wire na11e_a11d;
wire na11e_a11e;
assign na11e = na11e_a11d | na11e_a11e;
wire na12c;
wire na12c_a12c;
wire na12c_a18c;
wire na12c_a12d;
wire na12c_a18d;
wire na12c_a17d;
assign na12c = na12c_a12c | na12c_a18c | na12c_a12d | na12c_a18d | na12c_a17d;
wire na14c;
wire na14c_a6d;
wire na14c_a7e;
wire na14c_a14c;
assign na14c = na14c_a6d | na14c_a7e | na14c_a14c;
wire na15a;
wire na15a_a15a;
wire na15a_a22a;
wire na15a_a16c;
wire na15a_a22b;
wire na15a_a9b;
assign na15a = na15a_a15a | na15a_a22a | na15a_a16c | na15a_a22b | na15a_a9b;
wire na15d;
wire na15d_a15c;
wire na15d_a15d;
assign na15d = na15d_a15c | na15d_a15d;
wire na16a;
wire na16a_a30a;
wire na16a_a30b;
wire na16a_a23a;
wire na16a_a23b;
wire na16a_a16a;
assign na16a = na16a_a30a | na16a_a30b | na16a_a23a | na16a_a23b | na16a_a16a;
wire na16d;
wire na16d_a16d;
wire na16d_a16e;
assign na16d = na16d_a16d | na16d_a16e;
wire na17b;
wire na17c;
wire na18b;
wire na19a;
wire na19a_a31a;
wire na19a_a26a;
wire na19a_a26b;
wire na19a_a19a;
assign na19a = na19a_a31a | na19a_a26a | na19a_a26b | na19a_a19a;
wire na19c;
wire na19e;
wire na19f;
wire na20a;
wire na20b;
wire na20c;
wire na21b;
wire na21c;
wire na21c_a21c;
wire na21c_a14e;
wire na21c_a13a;
assign na21c = na21c_a21c | na21c_a14e | na21c_a13a;
wire na21d;
wire na22c;
wire na22c_a22c;
wire na22c_a22d;
assign na22c = na22c_a22c | na22c_a22d;
wire na23d;
wire na23d_a23c;
wire na23d_a23d;
assign na23d = na23d_a23c | na23d_a23d;
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a | na24a_a24b;
wire na25b;
wire na26c;
wire na26c_a26c;
wire na26c_a26d;
wire na26c_a25c;
wire na26c_a25d;
assign na26c = na26c_a26c | na26c_a26d | na26c_a25c | na26c_a25d;
wire na26e;
wire na27b;
wire na27c;
wire na28a;
wire na28a_a28a;
wire na28a_a28b;
wire na28a_a27a;
wire na28a_a33a;
wire na28a_a33b;
wire na28a_a32b;
wire na28a_a34b;
assign na28a = na28a_a28a | na28a_a28b | na28a_a27a | na28a_a33a | na28a_a33b | na28a_a32b | na28a_a34b;
wire na28d;
wire na28e;
wire na28e_a27d;
wire na28e_a35d;
wire na28e_a28e;
assign na28e = na28e_a27d | na28e_a35d | na28e_a28e;
wire na29a;
wire na29d;
wire na29d_a29c;
wire na29d_a29d;
assign na29d = na29d_a29c | na29d_a29d;
wire na30c;
wire na30c_a30c;
wire na30c_a30d;
assign na30c = na30c_a30c | na30c_a30d;
wire na32a;
wire na33c;
wire na34c;
wire na34d;
wire na34d_a13b;
wire na34d_a20d;
wire na34d_a20e;
wire na34d_a34d;
wire na34d_a19d;
assign na34d = na34d_a13b | na34d_a20d | na34d_a20e | na34d_a34d | na34d_a19d;
wire na35a;
wire na35c;
wire na35c_a35c;
wire na35c_a25a;
assign na35c = na35c_a35c & na35c_a25a;
wire na35e;

// 10-26
and a7a(na7a_a7a, V1, na7b, CN);
and a7b(na7b, ANDN);
and a21a(na7a_a21a, Z3, na35a, OP1V, AI4N, BN);
and a35a(na35a, OP2V);
and a20a(na20a, Z3, PAVN);
and a14a(na7a_a14a, na20a, OP3VN, BN, AI4);
and a14b(na7a_a14b, Z3, PAV, AI4N);
and a6a(na7a_a6a, X3, HOYV, VOYVN, P3VN);
and a6b(na7a_a6b, X3, na5a, AV, G1V, G3VN);
and a5a(na5a, PAV, CSTV);
and a34a(na7a_a34a, Z3, B, AI4N, OP2VN);
and a35b(na7a_a35b, X3, INTV);
inv #(0) a7c(C, na7a, SIM_CLK, SIM_RST);
and a28a(na28a_a28a, V1, C);
and a28b(na28a_a28b, na21b);
and a21b(na21b, Z3, AI4, B, OP1V, OP2V);
and a27a(na28a_a27a, na20b, OP3VN, OP4VN, AI4N);
and a20b(na20b, Z3, B);
and a27b(na27b, PCV, AI3V, G7VN, G1VN);
and a33a(na28a_a33a, Z3, na27b, SHFV, A1V);
and a33b(na28a_a33b, X3, na32a, SHFV, PCV, A2V);
and a32a(na32a, AVN, G5VN, AI1V, G7V);
and a32b(na28a_a32b, W1, na20c, PAV, AV, G3VN);
and a20c(na20c, G1V, EXMVN);
and a34b(na28a_a34b, na35c, TBCV, RACN, OP2VN);
and a35c(na35c_a35c, Z3, BN, AI4);
and a25a(na35c_a25a, OP3V);
inv a28c(CN, na28a, SIM_CLK, SIM_RST);

and a10a(na10a, V1, Q8DN);
inv #(0) a10b(Q8D, na10a, SIM_CLK, SIM_RST);
inv a24c(Q8DN, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, ZN, Q8D);
and a24b(na24a_a24b, W1, Q8V);

and a3a(na3a, V1, ANDN);
inv #(0) a3c(AND, na3a, SIM_CLK, SIM_RST);
inv a5c(ANDN, na3b, SIM_CLK, SIM_RST);
and a3b(na3b_a3b, ZN, AND);
and a4a(na4a, W1, OP1VN, OP2V, OP3V, OP4VN);
and a5b(na3b_a5b, na4a, TBCV);

and a25b(na25b, OP2V);
and a31a(na19a_a31a, Z3, na25b, PAV, OP1V, OP3VN);
and a26a(na19a_a26a, Z3, PAV, OP1VN, OP4V);
and a26b(na19a_a26b, Z3, PAV, OP2VN, OP4VN);
and a19a(na19a_a19a, V1, RAC);
inv a19b(RACN, na19a, SIM_CLK, SIM_RST);
inv #(0) a11c(RAC, na11a, SIM_CLK, SIM_RST);
and a11a(na11a_a11a, V1, RACN);
and a12a(na11a_a12a, Y7, PAV, G1VN, G7VN);
and a11b(na11b, Z3, SHFV);
and a12b(na11a_a12b, na11b, A5V, PBV, G4V);
and a19c(na19c, Z3, SHFV);
and a18a(na11a_a18a, na19c, G5V, A6V, PBV);
and a17a(na11a_a17a, Z3, na18b, G6VN);
and a18b(na18b, G7V, A2V, PCV, SHFV);

// 10-27
and a30a(na16a_a30a, X3, TTLV, TBCV, Q8D);
and a17b(na17b, W1, SHFV);
and a30b(na16a_a30b, na17b, A1V, AI2V, PAVN);
and a17c(na17c, W1, DATAV, PIOV);
and a23a(na16a_a23a, na17c, A1V, A2V, TBCV);
and a23b(na16a_a23b, W1, TRSV, TBCV, RACN);
and a16a(na16a_a16a, V1, B);
inv a16b(BN, na16a, SIM_CLK, SIM_RST);
inv #(0) a15b(B, na15a, SIM_CLK, SIM_RST);
and a15a(na15a_a15a, V1, BN);
and a22a(na15a_a22a, W1, TRSVN, RACN);
and a16c(na15a_a16c, Z3, na9a, OP4V);
and a9a(na9a, OP2V);
and a22b(na15a_a22b, X3, na29a, SHFV, A1V, G2VN);
and a29a(na29a, G7VN, AVN, PCV, PBVN);
and a9b(na15a_a9b, Z3, PAV);

and a1a(na1b_a1a, X3, ACC0);
and a1b(na1b_a1b, V1, ZERN);
inv #(0) a1c(ZER, na1b, SIM_CLK, SIM_RST);
inv a8c(ZERN, na8a, SIM_CLK, SIM_RST);
and a8a(na8a_a8a, V1, ZER);
and a8b(na8a_a8b, Z3, na9c, PCV);
and a9c(na9c, G6V);
and a29b(na8a_a29b, Z3, OP4V, PBV);

// 10-28
and a6c(na6c, Y7, OP1VN, OP2VN, PBV);
and a6d(na14c_a6d, na6c, ZERN, G4V, G3VN);
and a7d(na7d, Y7, OP1VN, OP2VN, OP3VN);
and a7e(na14c_a7e, na7d, PBV, G4V, G3VN);
and a14c(na14c_a14c, V1, UTR);
inv a14d(UACC0, na14c, SIM_CLK, SIM_RST);
inv #(0) a21e(UTR, na21c, SIM_CLK, SIM_RST);
and a21c(na21c_a21c, V4MOD3, UACC0);
and a21d(na21d, Y7, PCV);
and a14e(na21c_a14e, na21d, G4V);
and a13a(na21c_a13a, Z3, PBV, G3VN, CSTV);

and a23c(na23d_a23c, Y7, AI1);
and a23d(na23d_a23d, V4MOD3, AI2);
inv a23e(AI2N, na23d, SIM_CLK, SIM_RST);
inv #(0) a22e(AI2, na22c, SIM_CLK, SIM_RST);
and a22c(na22c_a22c, V4MOD3, AI2N);
and a22d(na22c_a22d, Y7, AI1N);

and a33c(na33c, Y7, AI1V, A2V);
and a13b(na34d_a13b, na33c, SHFV, RAC, PAVN);
and a20d(na34d_a20d, Y7, AI4, B, C);
and a20e(na34d_a20e, Y7, AI4, BN, CN);
and a34c(na34c, Y7, AI4N, B);
and a34d(na34d_a34d, na34c, CN);
and a19d(na34d_a19d, Y7, na27c);
and a27c(na27c, BN, C, ANDN, AI4N);
inv a34e(DL44, na34d, SIM_CLK, SIM_RST);

and a15c(na15d_a15c, X3, AI2V);
and a15d(na15d_a15d, V4MOD3, AI3);
inv a15e(AI3N, na15d, SIM_CLK, SIM_RST);
inv #(0) a16f(AI3, na16d, SIM_CLK, SIM_RST);
and a16d(na16d_a16d, V4MOD3, AI3N);
and a16e(na16d_a16e, X3, AI2VN);

// 10-29
and a27d(na28e_a27d, X3, TRSV, UTRV);
and a35d(na28e_a35d, X3, na28d);
and a28d(na28d, ACC0, UACC0);
and a28e(na28e_a28e, WN, ACC1);
inv a28f(ACC1N, na28e, SIM_CLK, SIM_RST);
inv #(0) a35f(ACC1, na35e, SIM_CLK, SIM_RST);
and a35e(na35e, V4MOD3, ACC1N);

and a11d(na11e_a11d, W1, AI3V);
and a11e(na11e_a11e, V1, AI4);
inv a11f(AI4N, na11e, SIM_CLK, SIM_RST);
inv #(0) a12e(AI4, na12c, SIM_CLK, SIM_RST);
and a12c(na12c_a12c, V1, AI4N);
and a18c(na12c_a18c, X3, na19e, PIOV, A1V, TBCV);
and a19e(na19e, A2V);
and a12d(na12c_a12d, W1, AI3VN);
and a18d(na12c_a18d, na19f, OP2V, OP3V, OP4V);
and a19f(na19f, X3, TBCV, OP1V);
and a17d(na12c_a17d, X3, SHFV, TBCV);

and a29c(na29d_a29c, Z3, AI0);
and a29d(na29d_a29d, V1, AI1);
inv a29e(AI1N, na29d, SIM_CLK, SIM_RST);
inv #(0) a30e(AI1, na30c, SIM_CLK, SIM_RST);
and a30c(na30c_a30c, V4MOD3, AI1N);
and a30d(na30c_a30d, Z3, AI0N);

and a26c(na26c_a26c, W1, HOPC1V);
and a26d(na26c_a26d, W1, na26e, UTR);
and a26e(na26e, ACC0);
and a25c(na26c_a25c, Z3, ACC1V, G5VN, G6VN);
and a25d(na26c_a25d, Z3, ACC1V, PCVN);
inv a33d(DL31, na26c, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
