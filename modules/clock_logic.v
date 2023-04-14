`timescale 1ns/1ps
`default_nettype none

module clock_logic(
    input wire V1,
    input wire V5,

    input wire BO1,
    input wire BO2,
    input wire BO3,

    output wire A1RP,
    output wire A1RPN,
    output wire A1PP,
    output wire A1PPN,
    output wire A1QP,
    output wire A1QPN,
    output wire BO1P
);

// Internal wires
wire A1P;
wire A1PN;
wire A1Q;
wire A1QN;
wire A1R;
wire A1RN;
wire A1RV;
wire A1RVN;
wire A1S;
wire A1SN;
wire A1SV;
wire A1SVN;
wire A2P;
wire A2PN;
wire A2PP;
wire A2PPN;
wire A2Q;
wire A2QN;
wire A2QP;
wire A2QPN;
wire A2R;
wire A2RN;
wire A2RP;
wire A2RPN;
wire A2RV;
wire A2RVN;
wire A2S;
wire A2SN;
wire A2SV;
wire A2SVN;
wire A3P;
wire A3PN;
wire A3PP;
wire A3PPN;
wire A3Q;
wire A3QN;
wire A3QP;
wire A3QPN;
wire A3R;
wire A3RN;
wire A3RP;
wire A3RPN;
wire A3RV;
wire A3RVN;
wire A3S;
wire A3SN;
wire A3SV;
wire A3SVN;
wire BO1A;
wire BO2A;
wire BO2P;
wire BO3A;
wire BO3P;

wire na1a;
wire na1a_a1b;
wire na1a_a1a;
assign na1a = na1a_a1b | na1a_a1a;
wire na2a;
wire na2b;
wire na2c;
wire na3a;
wire na3a_a3a;
wire na3a_a3b;
assign na3a = na3a_a3a | na3a_a3b;
wire na4a;
wire na4a_a4b;
wire na4a_a4a;
assign na4a = na4a_a4b | na4a_a4a;
wire na5a;
wire na5b;
wire na5c;
wire na5d;
wire na6a;
wire na6a_a6b;
wire na6a_a6a;
assign na6a = na6a_a6b | na6a_a6a;
wire na6d;
wire na7a;
wire na7a_a7a;
wire na7a_a7b;
assign na7a = na7a_a7a | na7a_a7b;
wire na7d;
wire na8a;
wire na8a_a8a;
wire na8a_a8b;
assign na8a = na8a_a8a | na8a_a8b;
wire na8d;
wire na8d_a8d;
wire na8d_a8e;
assign na8d = na8d_a8d | na8d_a8e;
wire na9a;
wire na9a_a9a;
wire na9a_a9b;
assign na9a = na9a_a9a | na9a_a9b;
wire na9d;
wire na9d_a9e;
wire na9d_a9d;
assign na9d = na9d_a9e | na9d_a9d;
wire na10a;
wire na10a_a10b;
wire na10a_a10a;
assign na10a = na10a_a10b | na10a_a10a;
wire na11a;
wire na11b;
wire na11c;
wire na12a;
wire na13a;
wire na16a;
wire na16a_a16b;
wire na16a_a16a;
assign na16a = na16a_a16b | na16a_a16a;
wire na15c;
wire na15d;
wire na15e;
wire na16f;
wire na17a;
wire na17a_a17a;
wire na17a_a17b;
assign na17a = na17a_a17a | na17a_a17b;
wire na18a;
wire na18b;
wire na18c;
wire na19a;
wire na19b;
wire na20a;
wire na20b;
wire na22a;
wire na22a_a22a;
wire na22a_a22b;
assign na22a = na22a_a22a | na22a_a22b;
wire na22d;
wire na22d_a22d;
wire na22d_a22e;
assign na22d = na22d_a22d | na22d_a22e;
wire na23c;
wire na23c_a23d;
wire na23c_a23c;
assign na23c = na23c_a23d | na23c_a23c;
wire na24a;
wire na24a_a24b;
wire na24a_a24a;
assign na24a = na24a_a24b | na24a_a24a;
wire na25a;
wire na25a_a25a;
wire na25a_a25b;
assign na25a = na25a_a25a | na25a_a25b;
wire na26a;
wire na26b;
wire na26b_a26b;
wire na26b_a26c;
assign na26b = na26b_a26b | na26b_a26c;
wire na27a;
wire na27b;
wire na27b_a27c;
wire na27b_a27b;
assign na27b = na27b_a27c | na27b_a27b;
wire na29a;
wire na29a_a29b;
wire na29a_a29a;
assign na29a = na29a_a29b | na29a_a29a;
wire na29d;
wire na29e;
wire na29f;
wire na30a;
wire na30b;
wire na30c;
wire na31a;
wire na31a_a31a;
wire na31a_a31b;
assign na31a = na31a_a31a | na31a_a31b;
wire na32a;
wire na32a_a32b;
wire na32a_a32a;
assign na32a = na32a_a32b | na32a_a32a;
wire na33a;
wire na33b;
wire na33c;
wire na33d;
wire na33e;
wire na33f;
wire na34a;
wire na34a_a34a;
wire na34a_a34b;
assign na34a = na34a_a34a | na34a_a34b;
wire na35a;
wire na35a_a35b;
wire na35a_a35a;
assign na35a = na35a_a35b | na35a_a35a;

// 10-96
and a30a(na30a, V1, A1P, BO1);
and a22a(na22a_a22a, V1, na30a, A1Q);
and a22b(na22a_a22b, V1, A1RN);
inv #(0) a22c(A1R, na22a);
and a30b(na30b, V1, A1P, BO1);
and a29b(na29a_a29b, V1, na30b, A1QN);
and a29a(na29a_a29a, V1, A1R);
inv a29c(A1RN, na29a);
efl a23a(.a(A1R), .y(A1RP));
efl a23b(.a(A1RN), .y(A1RPN));

and a11a(na11a, V1, A2P, BO2);
and a9a(na9a_a9a, V1, na11a, A2Q);
and a9b(na9a_a9b, V1, A2RN);
inv #(0) a9c(A2R, na9a);
and a11b(na11b, V1, A2P, BO2);
and a10b(na10a_a10b, V1, na11b, A2QN);
and a10a(na10a_a10a, V1, A2R);
inv a10c(A2RN, na10a);
efl a15a(.a(A2R), .y(A2RP));
efl a15b(.a(A2RN), .y(A2RPN));

and a2a(na2a, V1, A3P, BO3);
and a8a(na8a_a8a, V1, na2a, A3Q);
and a8b(na8a_a8b, V1, A3RN);
inv #(0) a8c(A3R, na8a);
and a2b(na2b, V1, A3P, BO3);
and a1b(na1a_a1b, V1, na2b, A3QN);
and a1a(na1a_a1a, V1, A3R);
inv a1c(A3RN, na1a);

tmv a26a(.en1(V5), .en2(V5), .en3(V5), .a1(A1R), .a2(A2R), .a3(A3R), .y(na26a));
vi a28a(.a(na26a), .y(A1RV));
tmv a19a(.en1(V5), .en2(V5), .en3(V5), .a1(A1R), .a2(A2R), .a3(A3R), .y(na19a));
vi a21a(.a(na19a), .y(A2RV));
tmv a12a(.en1(V5), .en2(V5), .en3(V5), .a1(A1R), .a2(A2R), .a3(A3R), .y(na12a));
vi a14a(.a(na12a), .y(A3RV));

tmv a27a(.en1(V5), .en2(V5), .en3(V5), .a1(A1RN), .a2(A2RN), .a3(A3RN), .y(na27a));
vi a28b(.a(na27a), .y(A1RVN));
tmv a20a(.en1(V5), .en2(V5), .en3(V5), .a1(A1RN), .a2(A2RN), .a3(A3RN), .y(na20a));
vi a21b(.a(na20a), .y(A2RVN));
tmv a13a(.en1(V5), .en2(V5), .en3(V5), .a1(A1RN), .a2(A2RN), .a3(A3RN), .y(na13a));
vi a14b(.a(na13a), .y(A3RVN));

// 10-97
and a30c(na30c, V1, A1PN, BO1);
and a31a(na31a_a31a, V1, na30c, A1RVN);
and a31b(na31a_a31b, V1, A1QN);
inv #(0) a31c(A1Q, na31a);
and a33a(na33a, V1, BO1, A1PN);
and a32b(na32a_a32b, V1, na33a, A1RV);
and a32a(na32a_a32a, V1, A1Q);
inv a32c(A1QN, na32a);

and a11c(na11c, V1, A2PN, BO2);
and a17a(na17a_a17a, V1, na11c, A2RVN);
and a17b(na17a_a17b, V1, A2QN);
inv #(0) a17c(A2Q, na17a);
and a18a(na18a, V1, BO2, A2PN);
and a16b(na16a_a16b, V1, na18a, A2RV);
and a16a(na16a_a16a, V1, A2Q);
inv a16c(A2QN, na16a);

and a2c(na2c, V1, A3PN, BO3);
and a3a(na3a_a3a, V1, na2c, A3RVN);
and a3b(na3a_a3b, V1, A3QN);
inv #(0) a3c(A3Q, na3a);
and a5a(na5a, V1, BO3, A3PN);
and a4b(na4a_a4b, V1, na5a, A3RV);
and a4a(na4a_a4a, V1, A3Q);
inv a4c(A3QN, na4a);

and a33b(na33b, V1, BO1, A1P);
and a34a(na34a_a34a, na33b);
and a34b(na34a_a34b, V1, A1SN);
inv #(0) a34c(A1S, na34a);
and a33c(na33c, V1, BO1, A1PN);
and a35b(na35a_a35b, na33c);
and a35a(na35a_a35a, V1, A1S);
inv a35c(A1SN, na35a);

and a18b(na18b, V1, BO2, A2P);
and a25a(na25a_a25a, na18b);
and a25b(na25a_a25b, V1, A2SN);
inv #(0) a25c(A2S, na25a);
and a18c(na18c, V1, BO2, A2PN);
and a24b(na24a_a24b, na18c);
and a24a(na24a_a24a, V1, A2S);
inv a24c(A2SN, na24a);

and a5b(na5b, V1, BO3, A3P);
and a7a(na7a_a7a, na5b);
and a7b(na7a_a7b, V1, A3SN);
inv #(0) a7c(A3S, na7a);
and a5c(na5c, V1, BO3, A3PN);
and a6b(na6a_a6b, na5c);
and a6a(na6a_a6a, V1, A3S);
inv a6c(A3SN, na6a);

// 10-98
and a15c(na15c, V1, A1SVN);
and a8d(na8d_a8d, V1, na15c, A1PN);
and a15d(na15d, BO1);
and a8e(na8d_a8e, V1, na15d, A1PN);
inv #(0) a8f(A1P, na8d);
and a15e(na15e, V1, A1SV);
and a9e(na9d_a9e, V1, na15e, A1P);
and a9d(na9d_a9d, V1, BO1A, A1P);
inv a9f(A1PN, na9d);
efl a16d(.a(A1P), .y(A1PP));
efl a16e(.a(A1PN), .y(A1PPN));

and a29d(na29d, V1, A2SVN);
and a22d(na22d_a22d, V1, na29d, A2PN);
and a29e(na29e, BO2);
and a22e(na22d_a22e, V1, na29e, A2PN);
inv #(0) a22f(A2P, na22d);
and a29f(na29f, V1, A2SV);
and a23d(na23c_a23d, V1, na29f, A2P);
and a23c(na23c_a23c, V1, BO2A, A2P);
inv a23e(A2PN, na23c);
efl a30d(.a(A2P), .y(A2PP));
efl a30e(.a(A2PN), .y(A2PPN));

and a33d(na33d, V1, A3SVN);
and a26b(na26b_a26b, V1, na33d, A3PN);
and a33e(na33e, BO3);
and a26c(na26b_a26c, V1, na33e, A3PN);
inv #(0) a26d(A3P, na26b);
and a33f(na33f, V1, A3SV);
and a27c(na27b_a27c, V1, na33f, A3P);
and a27b(na27b_a27b, V1, BO3A, A3P);
inv a27d(A3PN, na27b);
efl a34d(.a(A3P), .y(A3PP));
efl a34e(.a(A3PN), .y(A3PPN));

efl a10d(.a(BO1), .y(BO1P));
efl a24d(.a(BO2), .y(BO2P));
efl a28c(.a(BO3), .y(BO3P));

tmv a5d(.en1(V5), .en2(V5), .en3(V5), .a1(A1S), .a2(A2S), .a3(A3S), .y(na5d));
vi a12b(.a(na5d), .y(A1SV));
tmv a6d(.en1(V5), .en2(V5), .en3(V5), .a1(A1S), .a2(A2S), .a3(A3S), .y(na6d));
vi a13b(.a(na6d), .y(A2SV));
tmv a7d(.en1(V5), .en2(V5), .en3(V5), .a1(A1S), .a2(A2S), .a3(A3S), .y(na7d));
vi a14c(.a(na7d), .y(A3SV));

tmv a16f(.en1(V5), .en2(V5), .en3(V5), .a1(A1SN), .a2(A2SN), .a3(A3SN), .y(na16f));
vi a12c(.a(na16f), .y(A1SVN));
tmv a19b(.en1(V5), .en2(V5), .en3(V5), .a1(A1SN), .a2(A2SN), .a3(A3SN), .y(na19b));
vi a13c(.a(na19b), .y(A2SVN));
tmv a20b(.en1(V5), .en2(V5), .en3(V5), .a1(A1SN), .a2(A2SN), .a3(A3SN), .y(na20b));
vi a14d(.a(na20b), .y(A3SVN));

// 10-99
efl a10e(.a(BO1), .y(BO1A));
efl a24e(.a(BO2), .y(BO2A));
efl a28d(.a(BO3), .y(BO3A));

efl a1d(.a(A1Q), .y(A1QP));
efl a1e(.a(A1QN), .y(A1QPN));

efl a2d(.a(A2Q), .y(A2QP));
efl a2e(.a(A2QN), .y(A2QPN));

efl a3d(.a(A3Q), .y(A3QP));
efl a3e(.a(A3QN), .y(A3QPN));

efl a4d(.a(A3R), .y(A3RP));
efl a4e(.a(A3RN), .y(A3RPN));

endmodule
`default_nettype wire
