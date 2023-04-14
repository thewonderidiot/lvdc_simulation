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
and a2a(na4b, X1, HOYV, TMVN);
and a18a(na18a, X1, P2VN, P3VN);
and a11a(na4b, na18a, AI2VN, HOYV);
and a4a(na4b, W8, MR0N);
and a4b(na4b, V4MOD4, MR1N);
inv #(0) a4c(MR1, na4b);
inv a3c(MR1N, na3a);
and a3a(na3a, V4MOD4, MR1);
and a3b(na3a, W8, MR0);
and a18b(na18b, X1, P2VN, P3VN);
and a11b(na3a, na18b, TMV, AI2V, HOYV);
and a17a(na17a, SG2, HOYVN, P3VN, TMVN);
and a10a(na3a, X1, na17a, G3V, G5VN, AV);
and a17b(na17b, SG1, HOYVN, P3VN, TMVN);
and a10b(na3a, X1, na17b, G2V, G4VN, AVN);

and a29a(na29b, Z6, MR1VN);
and a29b(na29b, V1, MR2N);
inv #(0) a29c(MR2, na29b);
inv a30c(MR2N, na30a);
and a30a(na30a, V1, MR2);
and a30b(na30a, Z6, MR1V);

and a23a(na23b, Y8, MR2N);
and a23b(na23b, V1, Q1N);
inv #(0) a23c(Q1, na23b);
inv a22c(Q1N, na22a);
and a22a(na22a, V1, Q1);
and a22b(na22a, Y8, MR2);

and a15a(na15b, X1, Q1N);
and a15b(na15b, V1, Q2N);
inv #(0) a15c(Q2, na15b);
inv a16c(Q2N, na16a);
and a16a(na16a, V1, Q2);
and a16b(na16a, X1, Q1);

and a9a(na9b, W8, Q2N);
and a9b(na9b, V1, Q3N);
inv #(0) a9c(Q3, na9b);
inv a8c(Q3N, na8a);
and a8a(na8a, V1, Q3);
and a8b(na8a, W8, Q2);

and a26a(na26b, Y8, Q6N);
and a26b(na26b, V1, Q7N);
inv #(0) a26c(Q7, na26b);
inv a33c(Q7N, na33a);
and a33a(na33a, V1, Q7);
and a33b(na33a, Y8, Q6);

// 10-23
and a14a(na14a, V1, Q6N);
inv #(0) a14b(Q6, na14a);
inv a7c(Q6N, na7a);
and a7a(na7a, ZN, Q6);
and a7b(na7a, W8, Q5);

and a25a(na25a, OP2V);
and a21a(na28b, Y8, na25a, TTLV, OP1V, OP3VN);
and a27a(na28b, X1, Q1N, P1VN, P2VN);
and a21b(na28b, Y8, PRN, HOYV);
and a20a(na28b, X1, na28a);
and a28a(na28a, P3VN, Q7N);
and a28b(na28b, V4MOD4, Q8N);
inv #(0) a28c(Q8, na28b);
inv a35c(Q8N, na35a);
and a35a(na35a, V1, Q8);
and a35b(na35b, X1, P3VN);
and a34a(na35a, na35b, Q7);
and a34b(na34b, Y8, PR);
and a34c(na35a, na34b, HOYV);
and a27b(na35a, X1, Q1, P1VN, P2VN);

and a18c(na18c, X1, SG2, G7V);
and a19a(na12b, na18c, PAV, STP, G2V);
and a12a(na12b, Z6, Q3N);
and a12b(na12b, V1, Q4N);
inv #(0) a12c(Q4, na12b);
inv a5c(Q4N, na5a);
and a5a(na5a, V1, Q4);
and a5b(na5a, Z6, Q3);
and a20b(na5a, X1, na19b, G7V);
and a19b(na19b, PAV, STP, G2V, SG2N);

and a6a(na6a, V1, Q5N);
inv #(0) a6b(Q5, na6a);
inv a13c(Q5N, na13a);
and a13a(na13a, XN, Q5);
and a13b(na13b, Y8, Q4);
and a6c(na13a, na13b, TMV);
and a20c(na20c, Y8, G7V, Q4);
and a14c(na13a, na20c);

// 10-24
and a22d(na22d, Y8, PRN);
and a22e(na29e, na22d, HOYVN);
and a30d(na30d, Y8, PRN);
and a29d(na29e, na30d, TMV);
and a29e(na29e, V4MOD4, PR0N);
inv #(0) a29f(PR0, na29e);
inv a30f(PR0N, na30e);
and a30e(na30e, V4MOD4, PR0);
and a31a(na30e, Y8, PR, P1VN, TMV);
and a31b(na30e, Y8, PR, P1VN, HOYVN);

and a25b(na18e, W8, PR0VN, ESDVN, K1);
and a25c(na18e, W8, PR0VN, ESDV, K1N);
and a19c(na18e, W8, PR0V, ESDV, K1);
and a18d(na18d, W8, ESDVN, K1N);
and a17c(na18e, na18d, PR0V);
and a18e(na18e, ZN, PR1);
inv a18f(PR1N, na18e);
inv #(0) a17e(PR1, na17d);
and a17d(na17d, V1, PR1N);

and a24a(na16d, X1, PR1N, TFDVN, K2);
and a23d(na16d, X1, PR1N, TFDV, K2N);
and a23e(na16d, X1, PR1, TFDV, K2);
and a24b(na16d, X1, PR1, TFDVN, K2N);
and a16d(na16d, V4MOD4, PR2);
inv a16e(PR2N, na16d);
inv #(0) a15f(PR2, na15d);
and a15d(na15d, V4MOD4, PR2N);
and a15e(na15d, W8);

and a4d(na4e, X1, PR4N);
and a4e(na4e, V1, PR5N);
inv #(0) a4f(PR5, na4e);
inv a5f(PR5N, na5d);
and a5d(na5d, V1, PR5);
and a5e(na5d, X1, PR4);

and a6d(na6e, W8, PR5N);
and a6e(na6e, V1, PR6N);
inv #(0) a6f(PR6, na6e);
inv a7f(PR6N, na7d);
and a7d(na7d, V1, PR6);
and a7e(na7d, W8, PR5);

and a14d(na14e, Z6, PR6N);
and a14e(na14e, V1, PR7N);
inv #(0) a14f(PR7, na14e);
inv a13f(PR7N, na13d);
and a13d(na13d, V1, PR7);
and a13e(na13d, Z6, PR6);

// 10-25
and a2b(na2b, W8, TBCV, AI3VN, P3VN);
and a3d(na9e, na2b, VOYV, P2VN, HOYVN);
and a9d(na9e, Z6, PR2VN);
and a9e(na9e, V1, PR3N);
inv #(0) a9f(PR3, na9e);
inv a10e(PR3N, na10c);
and a10c(na10c, V1, PR3);
and a10d(na10c, Z6, PR2V);
and a2c(na2c, W8, TBCV, AI3V, P3VN);
and a3e(na10c, na2c, VOYV, P2VN, HOYVN);

and a19d(na12e, Z6, TMVN, G2V, G4VN);
and a12d(na12e, Y8, PR3N);
and a12e(na12e, V1, PR4N);
inv #(0) a12f(PR4, na12e);
inv a11e(PR4N, na11c);
and a11c(na11c, V1, PR4);
and a11d(na11c, Y8, PR3);

and a20d(na20e, Y8, PR7N);
and a20e(na20e, V1, PR8N);
inv #(0) a20f(PR8, na20e);
inv a21e(PR8N, na21c);
and a21c(na21c, V1, PR8);
and a21d(na21c, Y8, PR7);

and a28d(na28e, X1, PR8N);
and a28e(na28e, V1, PR9N);
inv #(0) a28f(PR9, na28e);
inv a27e(PR9N, na27c);
and a27c(na27c, V1, PR9);
and a27d(na27c, X1, PR8);

and a34d(na34e, W8, PR9N);
and a34e(na34e, V1, PR10N);
inv #(0) a34f(PR10, na34e);
inv a35f(PR10N, na35d);
and a35d(na35d, V1, PR10);
and a35e(na35d, W8, PR9);

endmodule
`default_nettype wire
