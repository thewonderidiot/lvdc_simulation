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
a a22a(.clk(Y6), .a1(PAV), .a2(G5V), .a3(G6VN), .y(na29b));
a a29a(.a1(FCD), .y(na29a));
a #(1) a29b(.clk(V4MOD5), .exp(na29a), .a1(OP1N), .y(na29b));
i a29c(.a(na29b), .y(OP1));
i a30c(.a(na30a), .y(OP1N));
a a30a(.clk(V4MOD5), .a1(OP1), .y(na30a));
a a30b(.exp(na23a), .a1(TR13V), .y(na30a));
a a23a(.clk(Y6), .a1(PAV), .a2(G5VN), .a3(G6V), .y(na23a));

a a8a(.clk(Z2), .exp(na9a), .a1(PAV), .y(na8b));
a a9a(.a1(G6V), .a2(G7VN), .y(na9a));
a a8b(.clk(V4MOD5), .a1(HOPN), .y(na8b));
i a8c(.a(na8b), .y(HOP));
i a9c(.a(na9b), .y(HOPN));
a #(1) a9b(.clk(V1), .a1(HOP), .y(na9b));
a a2a(.clk(Z2), .exp(na2b), .a1(PAV), .a2(G5VN), .a3(G6V), .y(na9b));
a a2b(.a1(OP1N), .a2(OP2N), .a3(OP3N), .a4(OP4N), .y(na2b));

a a12a(.clk(W6), .a1(INT), .y(na11b));
a a11a(.a1(INTCV), .y(na11a));
a a11b(.clk(V1), .exp(na11a), .a1(INTB), .y(na11b));
i a11c(.a(na11b), .y(INTBN));
i a12c(.a(na12b), .y(INTB));
a #(1) a12b(.clk(V1), .a1(INTBN), .y(na12b));

a a22b(.clk(Y6), .a1(PAV), .a2(G5V), .a3(G6VN), .y(na15b));
a a15a(.a1(FCD), .y(na15a));
a #(1) a15b(.clk(V4MOD5), .exp(na15a), .a1(OP2N), .y(na15b));
i a15c(.a(na15b), .y(OP2));
i a16c(.a(na16a), .y(OP2N));
a a16a(.clk(V4MOD5), .a1(OP2), .y(na16a));
a a16b(.a1(TR12V), .a2(G5VN), .y(na16b));
a a23b(.clk(Y6), .exp(na16b), .a1(PAV), .a2(G6V), .y(na16a));

a a33a(.clk(Z2), .a1(PAV), .a2(G6VN), .a3(G7V), .y(na34a));
a #(1) a34a(.clk(V4MOD5), .a1(EXMN), .y(na34a));
i a34b(.a(na34a), .y(EXM));
i a27c(.a(na27a), .y(EXMN));
a a27a(.clk(V4MOD5), .a1(EXM), .y(na27a));
a a27b(.clk(Z2), .exp(na26a), .a1(OP1N), .y(na27a));
a a26a(.a1(A8V), .a2(OP2), .a3(OP4), .a4(A9V), .y(na26a));
a a26b(.a1(PAV), .a2(G1VN), .a3(G7VN), .a4(OP3), .y(na26a));

a a10a(.clk(X2), .a1(HOPN), .a2(HOYVN), .a3(VOYVN), .y(na10a));
a a10b(.exp(na10a), .a1(EXMN), .a2(INTCV), .a3(INTBN), .y(na3a));
a a3a(.clk(WN), .a1(INTA), .y(na3a));
i a3b(.a(na3a), .y(INTAN));
i a4b(.a(na4a), .y(INTA));
a #(1) a4a(.clk(V1), .a1(INTAN), .y(na4a));

// 10-35
a a24a(.clk(Y6), .a1(PAV), .a2(G5V), .a3(G6VN), .y(na31b));
a a31a(.a1(FCD), .y(na31a));
a #(1) a31b(.clk(V4MOD5), .exp(na31a), .a1(OP3N), .y(na31b));
i a31c(.a(na31b), .y(OP3));
i a32c(.a(na32a), .y(OP3N));
a a32a(.clk(V4MOD5), .a1(OP3), .y(na32a));
a a32b(.exp(na25a), .a1(TR11V), .y(na32a));
a a25a(.clk(Y6), .a1(PAV), .a2(G5VN), .a3(G6V), .y(na25a));
a a33b(.clk(Y6), .exp(na34c), .a1(PAV), .a2(G6V), .a3(CSTV), .y(na32a));
a a34c(.a1(G7VN), .y(na34c));

a a19a(.a1(PAV), .a2(HOYV), .y(na19a));
a a19b(.clk(WN), .exp(na19a), .a1(VOYVN), .y(na19b));
i a19c(.a(na19b), .y(FCD));

a a24b(.clk(Y6), .a1(PAV), .a2(G5V), .a3(G6VN), .y(na17b));
a a17a(.a1(FCD), .y(na17a));
a #(1) a17b(.clk(V4MOD5), .exp(na17a), .a1(OP4N), .y(na17b));
i a17c(.a(na17b), .y(OP4));
i a18c(.a(na18a), .y(OP4N));
a a18a(.clk(V4MOD5), .a1(OP4), .y(na18a));
a a18b(.exp(na25b), .a1(TR10V), .y(na18a));
a a25b(.clk(Y6), .a1(PAV), .a2(G5VN), .a3(G6V), .y(na25b));

a a13a(.clk(Y6), .a1(PAV), .a2(G1V), .a3(G2VN), .a4(PBVN), .y(na13a));
a a6a(.exp(na13a), .a1(INTA), .y(na6b));
a a6b(.clk(V1), .a1(INT), .y(na6b));
i a6c(.a(na6b), .y(INTN));
i a7b(.a(na7a), .y(INT));
a #(1) a7a(.clk(V4MOD5), .a1(INTN), .y(na7a));
a a13b(.clk(Y6), .a1(G4VN), .a2(G5V), .y(na7a));

// 10-36
a a30d(.clk(V1), .a1(TR1V), .a2(TR2V), .a3(TR3V), .a4(TR4V), .y(na30d));
a a30e(.a1(TR5V), .a2(TR6V), .a3(TR8V), .a4(TR9V), .y(na30d));
a a31d(.exp(na30d), .a1(G5VN), .y(na31d));
i a31e(.a(na31d), .y(SSFSN));
a a32d(.clk(V1), .a1(TR7V), .y(na32e));
a a32e(.clk(V1), .a1(SSFSN), .y(na32e));
i a32f(.a(na32e), .y(SSF));

a a31f(.clk(V4MOD5), .a1(A8V), .y(na24d));
a a24c(.clk(V4MOD5), .a1(JBN), .y(na24d));
a a24d(.clk(V4MOD5), .a1(SAPO), .y(na24d));
i a24e(.a(na24d), .y(SHF));

a a23c(.clk(V1), .a1(OP1N), .a2(OP2V), .y(na23c));
a a23d(.exp(na23c), .a1(OP4V), .y(na23d));
i a23e(.a(na23d), .y(SAPO));

a a25c(.clk(V1), .a1(OP3V), .y(na25c));
a a25d(.exp(na25c), .a1(A8V), .y(na25d));
i a25e(.a(na25d), .y(JBN));

a a16d(.clk(V4MOD5), .a1(OP3V), .y(na16e));
a a16e(.clk(V4MOD5), .a1(SAPO), .y(na16e));
i a16f(.a(na16e), .y(PIO));

// 10-37
a a33c(.clk(Y6), .a1(SSF), .a2(PAV), .a3(G6V), .y(na27d));
a a27d(.clk(V1), .a1(TTL), .y(na27d));
i a27e(.a(na27d), .y(TTLN));
i a34e(.a(na34d), .y(TTL));
a #(1) a34d(.clk(V4MOD5), .exp(na27f), .a1(TTLN), .y(na34d));
a a27f(.a1(FCD), .y(na27f));
a a33d(.clk(Y6), .a1(PAV), .a2(G5V), .a3(G6VN), .y(na34d));

a a34f(.a1(OP1), .y(na34f));
a a35a(.a1(OP2V), .a2(OP3N), .y(na34f));
a a35b(.clk(V4MOD5), .exp(na34f), .a1(OP4V), .y(na35b));
i a35c(.a(na35b), .y(STON));

endmodule
`default_nettype wire
