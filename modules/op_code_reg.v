`timescale 1ns/1ps
`default_nettype none

module op_code_reg(
    input wire V1,
    input wire V4MOD5,
    input wire A8V,
    input wire A9V,
    input wire CSTV,
    input wire G1V,
    input wire G1VN,
    input wire G2VN,
    input wire G4VN,
    input wire G5V,
    input wire G5VN,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire HOYV,
    input wire HOYVN,
    input wire INTCV,
    input wire OP2V,
    input wire OP3V,
    input wire OP4V,
    input wire PAV,
    input wire PBVN,
    input wire TR1V,
    input wire TR2V,
    input wire TR3V,
    input wire TR4V,
    input wire TR5V,
    input wire TR6V,
    input wire TR7V,
    input wire TR8V,
    input wire TR9V,
    input wire TR10V,
    input wire TR11V,
    input wire TR12V,
    input wire TR13V,
    input wire VOYVN,
    input wire W6,
    input wire WN,
    input wire X2,
    input wire Y6,
    input wire Z2,
    output wire EXM,
    output wire EXMN,
    output wire HOP,
    output wire INT,
    output wire OP1,
    output wire OP1N,
    output wire OP2,
    output wire OP2N,
    output wire OP3,
    output wire OP3N,
    output wire OP4,
    output wire OP4N,
    output wire PIO,
    output wire SHF,
    output wire STON,
    output wire TTL
);

wire FCD;
wire HOPN;
wire INTN;
wire INTA;
wire INTAN;
wire INTB;
wire INTBN;
wire JBN;
wire SAPO;
wire SSF;
wire SSFSN;
wire TTLN;

wire na2b;
wor na3a;
wire na4a;
wor na6b;
wor na7a;
wor na8b;
wire na9a;
wor na9b;
wire na10a;
wire na11a;
wor na11b;
wire na12b;
wire na13a;
wire na15a;
wor na15b;
wor na16a;
wire na16b;
wor na16e;
wire na17a;
wor na17b;
wor na18a;
wire na19a;
wire na19b;
wire na23a;
wire na23c;
wire na23d;
wor na24d;
wire na25a;
wire na25b;
wire na25c;
wire na25d;
wand na26a;
wor na27a;
wor na27d;
wire na27f;
wire na29a;
wor na29b;
wor na30a;
wand na30d;
wire na31a;
wire na31d;
wor na31b;
wor na32a;
wor na32e;
wor na34a;
wor na34d;
wire na34c;
wand na34f;
wire na35b;

// 10-34
and a22a(na29b, Y6, PAV, G5V, G6VN);
and a29a(na29a, FCD);
and a29b(na29b, V4MOD5, na29a, OP1N);
inv #(0) a29c(OP1, na29b);
inv a30c(OP1N, na30a);
and a30a(na30a, V4MOD5, OP1);
and a30b(na30a, na23a, TR13V);
and a23a(na23a, Y6, PAV, G5VN, G6V);

and a8a(na8b, Z2, na9a, PAV);
and a9a(na9a, G6V, G7VN);
and a8b(na8b, V4MOD5, HOPN);
inv #(0) a8c(HOP, na8b);
inv a9c(HOPN, na9b);
and a9b(na9b, V1, HOP);
and a2a(na9b, Z2, na2b, PAV, G5VN, G6V);
and a2b(na2b, OP1N, OP2N, OP3N, OP4N);

and a12a(na11b, W6, INT);
and a11a(na11a, INTCV);
and a11b(na11b, V1, na11a, INTB);
inv a11c(INTBN, na11b);
inv #(0) a12c(INTB, na12b);
and a12b(na12b, V1, INTBN);

and a22b(na15b, Y6, PAV, G5V, G6VN);
and a15a(na15a, FCD);
and a15b(na15b, V4MOD5, na15a, OP2N);
inv #(0) a15c(OP2, na15b);
inv a16c(OP2N, na16a);
and a16a(na16a, V4MOD5, OP2);
and a16b(na16b, TR12V, G5VN);
and a23b(na16a, Y6, na16b, PAV, G6V);

and a33a(na34a, Z2, PAV, G6VN, G7V);
and a34a(na34a, V4MOD5, EXMN);
inv #(0) a34b(EXM, na34a);
inv a27c(EXMN, na27a);
and a27a(na27a, V4MOD5, EXM);
and a27b(na27a, Z2, na26a, OP1N);
and a26a(na26a, A8V, OP2, OP4, A9V);
and a26b(na26a, PAV, G1VN, G7VN, OP3);

and a10a(na10a, X2, HOPN, HOYVN, VOYVN);
and a10b(na3a, na10a, EXMN, INTCV, INTBN);
and a3a(na3a, WN, INTA);
inv a3b(INTAN, na3a);
inv #(0) a4b(INTA, na4a);
and a4a(na4a, V1, INTAN);

// 10-35
and a24a(na31b, Y6, PAV, G5V, G6VN);
and a31a(na31a, FCD);
and a31b(na31b, V4MOD5, na31a, OP3N);
inv #(0) a31c(OP3, na31b);
inv a32c(OP3N, na32a);
and a32a(na32a, V4MOD5, OP3);
and a32b(na32a, na25a, TR11V);
and a25a(na25a, Y6, PAV, G5VN, G6V);
and a33b(na32a, Y6, na34c, PAV, G6V, CSTV);
and a34c(na34c, G7VN);

and a19a(na19a, PAV, HOYV);
and a19b(na19b, WN, na19a, VOYVN);
inv a19c(FCD, na19b);

and a24b(na17b, Y6, PAV, G5V, G6VN);
and a17a(na17a, FCD);
and a17b(na17b, V4MOD5, na17a, OP4N);
inv #(0) a17c(OP4, na17b);
inv a18c(OP4N, na18a);
and a18a(na18a, V4MOD5, OP4);
and a18b(na18a, na25b, TR10V);
and a25b(na25b, Y6, PAV, G5VN, G6V);

and a13a(na13a, Y6, PAV, G1V, G2VN, PBVN);
and a6a(na6b, na13a, INTA);
and a6b(na6b, V1, INT);
inv a6c(INTN, na6b);
inv #(0) a7b(INT, na7a);
and a7a(na7a, V4MOD5, INTN);
and a13b(na7a, Y6, G4VN, G5V);

// 10-36
and a30d(na30d, V1, TR1V, TR2V, TR3V, TR4V);
and a30e(na30d, TR5V, TR6V, TR8V, TR9V);
and a31d(na31d, na30d, G5VN);
inv a31e(SSFSN, na31d);
and a32d(na32e, V1, TR7V);
and a32e(na32e, V1, SSFSN);
inv a32f(SSF, na32e);

and a31f(na24d, V4MOD5, A8V);
and a24c(na24d, V4MOD5, JBN);
and a24d(na24d, V4MOD5, SAPO);
inv a24e(SHF, na24d);

and a23c(na23c, V1, OP1N, OP2V);
and a23d(na23d, na23c, OP4V);
inv a23e(SAPO, na23d);

and a25c(na25c, V1, OP3V);
and a25d(na25d, na25c, A9V);
inv a25e(JBN, na25d);

and a16d(na16e, V4MOD5, OP3V);
and a16e(na16e, V4MOD5, SAPO);
inv a16f(PIO, na16e);

// 10-37
and a33c(na27d, Y6, SSF, PAV, G6V);
and a27d(na27d, V1, TTL);
inv a27e(TTLN, na27d);
inv #(0) a34e(TTL, na34d);
and a34d(na34d, V4MOD5, na27f, TTLN);
and a27f(na27f, FCD);
and a33d(na34d, Y6, PAV, G5V, G6VN);

and a34f(na34f, OP1);
and a35a(na34f, OP2V, OP3N);
and a35b(na35b, V4MOD5, na34f, OP4V);
inv a35c(STON, na35b);

endmodule
`default_nettype wire
