`timescale 1ns/1ps
`default_nettype none

module arithmetic(
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

wor na1b;
wire na3a;
wor na3b;
wire na4a;
wire na5a;
wire na6c;
wor na7a;
wire na7b;
wire na7d;
wor na8a;
wire na9a;
wire na9c;
wire na10a;
wor na11a;
wire na11b;
wor na11e;
wor na12c;
wor na14c;
wor na15a;
wor na15d;
wor na16a;
wor na16d;
wire na17b;
wire na17c;
wire na18b;
wor na19a;
wire na19c;
wire na19e;
wire na19f;
wire na20a;
wire na20b;
wire na20c;
wire na21b;
wor na21c;
wire na21d;
wor na22c;
wor na23d;
wor na24a;
wire na25b;
wor na26c;
wire na26e;
wire na27b;
wire na27c;
wor na28a;
wire na28d;
wor na28e;
wire na29a;
wor na29d;
wor na30c;
wire na32a;
wire na33c;
wire na34c;
wor na34d;
wire na35a;
wand na35c;
wire na35e;

// 10-26
a a7a(.clk(V1), .exp(na7b), .a1(CN), .y(na7a));
a a7b(.a1(ANDN), .y(na7b));
a a21a(.clk(Z3), .exp(na35a), .a1(OP1V), .a2(AI4N), .a3(BN), .y(na7a));
a a35a(.a1(OP2V), .y(na35a));
a a20a(.clk(Z3), .a1(PAVN), .y(na20a));
a a14a(.exp(na20a), .a1(OP3VN), .a2(BN), .a3(AI4), .y(na7a));
a a14b(.clk(Z3), .a1(PAV), .a2(AI4N), .y(na7a));
a a6a(.clk(X3), .a1(HOYV), .a2(VOYVN), .a3(P3VN), .y(na7a));
a a6b(.clk(X3), .exp(na5a), .a1(AV), .a2(G1V), .a3(G3VN), .y(na7a));
a a5a(.a1(PAV), .a2(CSTV), .y(na5a));
a a34a(.clk(Z3), .a1(B), .a2(AI4N), .a3(OP2VN), .y(na7a));
a a35b(.clk(X3), .a1(INTV), .y(na7a));
i #(0) a7c(.a(na7a), .y(C));
a a28a(.clk(V1), .a1(C), .y(na28a));
a a28b(.exp(na21b), .y(na28a));
a a21b(.clk(Z3), .a1(AI4), .a2(B), .a3(OP1V), .a4(OP2V), .y(na21b));
a a27a(.exp(na20b), .a1(OP3VN), .a2(OP4VN), .a3(AI4N), .y(na28a));
a a20b(.clk(Z3), .a1(B), .y(na20b));
a a27b(.a1(PCV), .a2(AI3V), .a3(G7VN), .a4(G1VN), .y(na27b));
a a33a(.clk(Z3), .exp(na27b), .a1(SHFV), .a2(A1V), .y(na28a));
a a33b(.clk(X3), .exp(na32a), .a1(SHFV), .a2(PCV), .a3(A2V), .y(na28a));
a a32a(.a1(AVN), .a2(G5VN), .a3(AI1V), .a4(G7V), .y(na32a));
a a32b(.clk(W1), .exp(na20c), .a1(PAV), .a2(AV), .a3(G3VN), .y(na28a));
a a20c(.a1(G1V), .a2(EXMVN), .y(na20c));
a a34b(.exp(na35c), .a1(TBCV), .a2(RACN), .a3(OP2VN), .y(na28a));
a a35c(.clk(Z3), .a1(BN), .a2(AI4), .y(na35c));
a a25a(.a1(OP3V), .y(na35c));
i a28c(.a(na28a), .y(CN));

a a10a(.clk(V1), .a1(Q8DN), .y(na10a));
i #(0) a10b(.a(na10a), .y(Q8D));
i a24c(.a(na24a), .y(Q8DN));
a a24a(.clk(ZN), .a1(Q8D), .y(na24a));
a a24b(.clk(W1), .a1(Q8V), .y(na24a));

a a3a(.clk(V1), .a1(ANDN), .y(na3a));
i #(0) a3c(.a(na3a), .y(AND));
i a5c(.a(na3b), .y(ANDN));
a a3b(.clk(ZN), .a1(AND), .y(na3b));
a a4a(.clk(W1), .a1(OP1VN), .a2(OP2V), .a3(OP3V), .a4(OP4VN), .y(na4a));
a a5b(.exp(na4a), .a1(TBCV), .y(na3b));

a a25b(.a1(OP2V), .y(na25b));
a a31a(.clk(Z3), .exp(na25b), .a1(PAV), .a2(OP1V), .a3(OP3VN), .y(na19a));
a a26a(.clk(Z3), .a1(PAV), .a2(OP1VN), .a3(OP4V), .y(na19a));
a a26b(.clk(Z3), .a1(PAV), .a2(OP2VN), .a3(OP4VN), .y(na19a));
a a19a(.clk(V1), .a1(RAC), .y(na19a));
i a19b(.a(na19a), .y(RACN));
i #(0) a11c(.a(na11a), .y(RAC));
a a11a(.clk(V1), .a1(RACN), .y(na11a));
a a12a(.clk(Y7), .a1(PAV), .a2(G1VN), .a3(G7VN), .y(na11a));
a a11b(.clk(Z3), .a1(SHFV), .y(na11b));
a a12b(.exp(na11b), .a1(A5V), .a2(PBV), .a3(G4V), .y(na11a));
a a19c(.clk(Z3), .a1(SHFV), .y(na19c));
a a18a(.exp(na19c), .a1(G5V), .a2(A6V), .a3(PBV), .y(na11a));
a a17a(.clk(Z3), .exp(na18b), .a1(G6VN), .y(na11a));
a a18b(.a1(G7V), .a2(A2V), .a3(PCV), .a4(SHFV), .y(na18b));

// 10-27
a a30a(.clk(X3), .a1(TTLV), .a2(TBCV), .a3(Q8D), .y(na16a));
a a17b(.clk(W1), .a1(SHFV), .y(na17b));
a a30b(.exp(na17b), .a1(A1V), .a2(AI2V), .a3(PAVN), .y(na16a));
a a17c(.clk(W1), .a1(DATAV), .a2(PIOV), .y(na17c));
a a23a(.exp(na17c), .a1(A1V), .a2(A2V), .a3(TBCV), .y(na16a));
a a23b(.clk(W1), .a1(TRSV), .a2(TBCV), .a3(RACN), .y(na16a));
a a16a(.clk(V1), .a1(B), .y(na16a));
i a16b(.a(na16a), .y(BN));
i #(0) a15b(.a(na15a), .y(B));
a a15a(.clk(V1), .a1(BN), .y(na15a));
a a22a(.clk(W1), .a1(TRSVN), .a2(RACN), .y(na15a));
a a16c(.clk(Z3), .exp(na9a), .a1(OP4V), .y(na15a));
a a9a(.a1(OP2V), .y(na9a));
a a22b(.clk(X3), .exp(na29a), .a1(SHFV), .a2(A1V), .a3(G2VN), .y(na15a));
a a29a(.a1(G7VN), .a2(AVN), .a3(PCV), .a4(PBVN), .y(na29a));
a a9b(.clk(Z3), .a1(PAV), .y(na15a));

a a1a(.clk(X3), .a1(ACC0), .y(na1b));
a a1b(.clk(V1), .a1(ZERN), .y(na1b));
i #(0) a1c(.a(na1b), .y(ZER));
i a8c(.a(na8a), .y(ZERN));
a a8a(.clk(V1), .a1(ZER), .y(na8a));
a a8b(.clk(Z3), .exp(na9c), .a1(PCV), .y(na8a));
a a9c(.a1(G6V), .y(na9c));
a a29b(.clk(Z3), .a1(OP4V), .a2(PBV), .y(na8a));

// 10-28
a a6c(.clk(Y7), .a1(OP1VN), .a2(OP2VN), .a3(PBV), .y(na6c));
a a6d(.exp(na6c), .a1(ZERN), .a2(G4V), .a3(G3VN), .y(na14c));
a a7d(.clk(Y7), .a1(OP1VN), .a2(OP2VN), .a3(OP3VN), .y(na7d));
a a7e(.exp(na7d), .a1(PBV), .a2(G4V), .a3(G3VN), .y(na14c));
a a14c(.clk(V1), .a1(UTR), .y(na14c));
i a14d(.a(na14c), .y(UACC0));
i #(0) a21e(.a(na21c), .y(UTR));
a a21c(.clk(V4MOD3), .a1(UACC0), .y(na21c));
a a21d(.clk(Y7), .a1(PCV), .y(na21d));
a a14e(.exp(na21d), .a1(G4V), .y(na21c));
a a13a(.clk(Z3), .a1(PBV), .a2(G3VN), .a3(CSTV), .y(na21c));

a a23c(.clk(Y7), .a1(AI1), .y(na23d));
a a23d(.clk(V4MOD3), .a1(AI2), .y(na23d));
i a23e(.a(na23d), .y(AI2N));
i #(0) a22e(.a(na22c), .y(AI2));
a a22c(.clk(V4MOD3), .a1(AI2N), .y(na22c));
a a22d(.clk(Y7), .a1(AI1N), .y(na22c));

a a33c(.clk(Y7), .a1(AI1V), .a2(A2V), .y(na33c));
a a13b(.exp(na33c), .a1(SHFV), .a2(RAC), .a3(PAVN), .y(na34d));
a a20d(.clk(Y7), .a1(AI4), .a2(B), .a3(C), .y(na34d));
a a20e(.clk(Y7), .a1(AI4), .a2(BN), .a3(CN), .y(na34d));
a a34c(.clk(Y7), .a1(AI4N), .a2(B), .y(na34c));
a a34d(.exp(na34c), .a1(CN), .y(na34d));
a a19d(.clk(Y7), .exp(na27c), .y(na34d));
a a27c(.a1(BN), .a2(C), .a3(ANDN), .a4(AI4N), .y(na27c));
i a34e(.a(na34d), .y(DL44));

a a15c(.clk(X3), .a1(AI2V), .y(na15d));
a a15d(.clk(V4MOD3), .a1(AI3), .y(na15d));
i a15e(.a(na15d), .y(AI3N));
i #(0) a16f(.a(na16d), .y(AI3));
a a16d(.clk(V4MOD3), .a1(AI3N), .y(na16d));
a a16e(.clk(X3), .a1(AI2VN), .y(na16d));

// 10-29
a a27d(.clk(X3), .a1(TRSV), .a2(UTRV), .y(na28e));
a a35d(.clk(X3), .exp(na28d), .y(na28e));
a a28d(.a1(ACC0), .a2(UACC0), .y(na28d));
a a28e(.clk(WN), .a1(ACC1), .y(na28e));
i a28f(.a(na28e), .y(ACC1N));
i #(0) a35f(.a(na35e), .y(ACC1));
a a35e(.clk(V4MOD3), .a1(ACC1N), .y(na35e));

a a11d(.clk(W1), .a1(AI3V), .y(na11e));
a a11e(.clk(V1), .a1(AI4), .y(na11e));
i a11f(.a(na11e), .y(AI4N));
i #(0) a12e(.a(na12c), .y(AI4));
a a12c(.clk(V1), .a1(AI4N), .y(na12c));
a a18c(.clk(X3), .exp(na19e), .a1(PIOV), .a2(A1V), .a3(TBCV), .y(na12c));
a a19e(.a1(A2V), .y(na19e));
a a12d(.clk(W1), .a1(AI3VN), .y(na12c));
a a18d(.exp(na19f), .a1(OP2V), .a2(OP3V), .a3(OP4V), .y(na12c));
a a19f(.clk(X3), .a1(TBCV), .a2(OP1V), .y(na19f));
a a17d(.clk(X3), .a1(SHFV), .a2(TBCV), .y(na12c));

a a29c(.clk(Z3), .a1(AI0), .y(na29d));
a a29d(.clk(V1), .a1(AI1), .y(na29d));
i a29e(.a(na29d), .y(AI1N));
i #(0) a30e(.a(na30c), .y(AI1));
a a30c(.clk(V4MOD3), .a1(AI1N), .y(na30c));
a a30d(.clk(Z3), .a1(AI0N), .y(na30c));

a a26c(.clk(W1), .a1(HOPC1V), .y(na26c));
a a26d(.clk(W1), .exp(na26e), .a1(UTR), .y(na26c));
a a26e(.a1(ACC0), .y(na26e));
a a25c(.clk(Z3), .a1(ACC1V), .a2(G5VN), .a3(G6VN), .y(na26c));
a a25d(.clk(Z3), .a1(ACC1V), .a2(PCVN), .y(na26c));
i a33d(.a(na26c), .y(DL31));

endmodule
`default_nettype wire
