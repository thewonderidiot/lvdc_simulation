`timescale 1ns/1ps
`default_nettype none

module transfer_reg_2(
    input wire V1,
    input wire V4MOD2,
    input wire AV,
    input wire AVN,
    input wire A5V,
    input wire A6V,
    input wire AI2V,
    input wire BRA10,
    input wire BRA11,
    input wire BRA12,
    input wire BRA13,
    input wire BRB10,
    input wire BRB11,
    input wire BRB12,
    input wire BRB13,
    input wire EXMVN,
    input wire G1V,
    input wire G1VN,
    input wire G2V,
    input wire G2VN,
    input wire G3V,
    input wire G3VN,
    input wire G4VN,
    input wire G5V,
    input wire G5VN,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire HOPV,
    input wire MAOV,
    input wire MBOV,
    input wire OP1VN,
    input wire OP2V,
    input wire OP2VN,
    input wire OP3V,
    input wire OP4V,
    input wire PAV,
    input wire PBV,
    input wire PCV,
    input wire PCVN,
    input wire RDV,
    input wire RUNV,
    input wire RUNVN,
    input wire SHFV,
    input wire STOVN,
    input wire TR1N,
    input wire TR1V,
    input wire TR9D,
    input wire TR9DN,
    input wire W1,
    input wire WN,
    input wire X2,
    input wire Y6,
    input wire YN,
    input wire Z8,
    input wire ZN,
    output wire CBRN,
    output wire CDS,
    output wire CLTR,
    output wire PAR,
    output wire SBRX,
    output wire SBRY,
    output wire SBRZ,
    output wire SRTR,
    output wire STO,
    output wire TBR,
    output wire TR10,
    output wire TR11,
    output wire TR12,
    output wire TR13,
    output wire TRS,
    output wire TRSN
);

wire CDSN;
wire CKP;
wire CKPN;
wire CLTRN;
wire PARN;
wire PDD;
wire PDDN;
wire POD;
wire PODN;
wire SBRXN;
wire SBRYN;
wire SBRZN;
wire SRTRN;
wire TBRN;
wire TR10N;
wire TR11N;
wire TR12N;
wire TR12D;
wire TR12DN;
wire TR13N;
wire TTT;

wor na1a;
wire na2a;
wire na2b;
wire na2d;
wor na2e;
wor na3b;
wire na3e;
wor na4a;
wor na4e;
wire na5d;
wor na6a;
wor na7b;
wire na7d;
wor na8a;
wire na8c;
wire na9a;
wor na10a;
wor na10e;
wor na11a;
wire na11d;
wire na11e;
wor na12d;
wire na13c;
wire na14a;
wire na14b;
wire na14c;
wor na14d;
wire na15c;
wor na15d;
wire na16b;
wire na17a;
wire na17b;
wire na17c;
wire na18c;
wor na20b;
wor na20d;
wor na21a;
wire na21d;
wor na21e;
wire na22b;
wire na22d;
wor na22e;
wand na23b;
wor na25a;
wire na26c;
wor na27a;
wor na27e;
wor na28a;
wor na28d;
wor na29a;
wire na29b;
wor na30a;
wire na30d;
wor na32a;
wire na33c;
wor na33d;
wor na34a;
wire na34d;
wor na35a;
wor na35e;

// 10-30
a a33a(.clk(Y6), .a1(BRA10), .a2(TBR), .a3(MAOV), .y(na34a));
a a33b(.clk(Y6), .a1(BRB10), .a2(TBR), .a3(MBOV), .y(na34a));
a a13a(.clk(X2), .a1(SRTR), .a2(TR9D), .y(na34a));
a a34a(.clk(V1), .a1(TR10), .y(na34a));
i a34b(.a(na34a), .y(TR10N));
i a35c(.a(na35a), .y(TR10));
a #(1) a35a(.clk(V4MOD2), .a1(TR10N), .y(na35a));
a a35b(.clk(X2), .exp(na14a), .a1(TR9DN), .y(na35a));
a a14a(.a1(SRTR), .y(na14a));
a a34c(.clk(X2), .a1(CLTR), .y(na35a));

a a26a(.clk(X2), .a1(BRA11), .a2(TBR), .a3(MAOV), .y(na27a));
a a26b(.clk(X2), .a1(BRB11), .a2(TBR), .a3(MBOV), .y(na27a));
a a13b(.clk(W1), .a1(SRTR), .a2(TR10), .y(na27a));
a a18a(.clk(X2), .a1(A6V), .a2(SHFV), .a3(AI2V), .y(na27a));
a a27a(.clk(V1), .a1(TR11), .y(na27a));
i a27b(.a(na27a), .y(TR11N));
i a28c(.a(na28a), .y(TR11));
a #(1) a28a(.clk(V4MOD2), .a1(TR11N), .y(na28a));
a a28b(.clk(W1), .exp(na14b), .a1(TR10N), .y(na28a));
a a14b(.a1(SRTR), .y(na14b));
a a27c(.clk(X2), .a1(CLTR), .y(na28a));

a a18b(.clk(X2), .a1(A5V), .a2(SHFV), .a3(AI2V), .y(na20b));
a a19a(.clk(X2), .a1(BRA12), .a2(TBR), .a3(MAOV), .y(na20b));
a a19b(.clk(X2), .a1(BRB12), .a2(TBR), .a3(MBOV), .y(na20b));
a a14c(.clk(Z8), .a1(SRTR), .a2(TR11), .y(na14c));
a a20a(.clk(Z8), .exp(na14c), .y(na20b));
a a20b(.clk(V1), .a1(TR12), .y(na20b));
i a20c(.a(na20b), .y(TR12N));
i a21c(.a(na21a), .y(TR12));
a #(1) a21a(.clk(V4MOD2), .a1(TR12N), .y(na21a));
a a5a(.clk(Z8), .a1(SRTR), .a2(TR11N), .y(na21a));
a a21b(.clk(X2), .a1(CLTR), .y(na21a));

a a12a(.clk(X2), .a1(BRA13), .a2(TBR), .a3(MAOV), .y(na11a));
a a12b(.clk(X2), .a1(BRB13), .a2(TBR), .a3(MBOV), .y(na11a));
a a5b(.clk(W1), .a1(SRTR), .a2(TR12D), .y(na11a));
a a11a(.clk(V1), .a1(TR13), .y(na11a));
i a11b(.a(na11a), .y(TR13N));
i a4c(.a(na4a), .y(TR13));
a #(1) a4a(.clk(V4MOD2), .a1(TR13N), .y(na4a));
a a4b(.clk(W1), .exp(na2a), .a1(TR12DN), .y(na4a));
a a2a(.a1(SRTR), .y(na2a));
a a11c(.clk(W1), .a1(CLTR), .y(na4a));

a a3a(.clk(Y6), .a1(TR13), .y(na3b));
a a3b(.clk(V4MOD2), .a1(TRS), .y(na3b));
i a3c(.a(na3b), .y(TRSN));
i a10c(.a(na10a), .y(TRS));
a #(1) a10a(.clk(V4MOD2), .a1(TRSN), .y(na10a));
a a10b(.clk(Y6), .a1(TR13N), .y(na10a));

a a22a(.clk(X2), .a1(AV), .y(na30a));
a a30a(.clk(V1), .a1(CLTRN), .y(na30a));
i a30b(.a(na30a), .y(CLTR));
i a29c(.a(na29a), .y(CLTRN));
a #(1) a29a(.clk(V1), .a1(CLTR), .y(na29a));
a a23a(.clk(Y6), .exp(na2b), .a1(PAV), .a2(G3VN), .a3(RUNVN), .y(na29a));
a a2b(.a1(OP2V), .a2(G2V), .y(na2b));
a a16a(.clk(Y6), .exp(na29b), .a1(PAV), .a2(G1VN), .a3(G2V), .y(na29a));
a a29b(.a1(RUNV), .y(na29b));
a a16b(.a1(PAV), .a2(G1VN), .a3(G7VN), .a4(TTT), .y(na16b));
a a30c(.clk(Y6), .exp(na16b), .y(na29a));

// 10-31
a a7a(.clk(Y6), .a1(TR12), .y(na7b));
a a7b(.clk(V1), .a1(TR12D), .y(na7b));
i a7c(.a(na7b), .y(TR12DN));
i a6c(.a(na6a), .y(TR12D));
a #(1) a6a(.clk(V1), .a1(TR12DN), .y(na6a));
a a6b(.clk(Y6), .a1(TR12N), .y(na6a));

a a15a(.clk(Y6), .exp(na17a), .a1(PBV), .a2(G3V), .a3(TTT), .y(na8a));
a a17a(.a1(EXMVN), .a2(G6VN), .y(na17a));
a a15b(.clk(Y6), .exp(na17b), .a1(PBV), .a2(CDSN), .a3(G5V), .y(na8a));
a a17b(.a1(EXMVN), .a2(G6VN), .y(na17b));
a a9a(.clk(Y6), .a1(PBV), .a2(G1V), .a3(G2VN), .y(na9a));
a a2c(.exp(na9a), .a1(STO), .y(na8a));
a a17c(.clk(Y6), .a1(CDS), .y(na17c));
a a24a(.exp(na17c), .a1(PBV), .a2(G7VN), .a3(G1VN), .y(na8a));
a a8a(.clk(V1), .a1(SRTR), .y(na8a));
i a8b(.a(na8a), .y(SRTRN));
i a1c(.a(na1a), .y(SRTR));
a #(1) a1a(.clk(V1), .a1(SRTRN), .y(na1a));
a a1b(.clk(Y6), .exp(na8c), .a1(PAV), .y(na1a));
a a8c(.a1(G7V), .y(na8c));
a a9b(.clk(Y6), .exp(na22b), .a1(PAV), .a2(G2V), .a3(OP2V), .y(na1a));
a a22b(.a1(RUNVN), .y(na22b));

a a23b(.clk(Z8), .a1(TR13N), .a2(TR12D), .a3(TR11), .a4(TR10), .y(na23b));
a a24b(.a1(TR9DN), .a2(PCVN), .a3(G6VN), .a4(G7V), .y(na23b));
a a22c(.exp(na23b), .a1(SRTRN), .y(na25a));
a a31a(.clk(Z8), .a1(HOPV), .a2(PCV), .y(na25a));
a a25a(.clk(V1), .a1(CDS), .y(na25a));
i a25b(.a(na25a), .y(CDSN));
i a32b(.a(na32a), .y(CDS));
a #(1) a32a(.clk(V4MOD2), .a1(CDSN), .y(na32a));
a a31b(.clk(Z8), .a1(PCVN), .a2(G5V), .y(na32a));

// 10-32
a a30d(.clk(W1), .a1(PAV), .a2(G3VN), .a3(G5V), .y(na30d));
a a30e(.exp(na30d), .a1(AVN), .y(na22e));
a a29d(.clk(W1), .exp(na22d), .a1(G2V), .a2(G4VN), .a3(RDV), .y(na22e));
a a22d(.a1(PBV), .a2(AVN), .y(na22d));
a a29e(.clk(W1), .exp(na15c), .a1(RDV), .a2(G1V), .a3(G3VN), .y(na22e));
a a15c(.a1(PCV), .a2(AV), .y(na15c));
a a22e(.clk(V1), .a1(TBR), .y(na22e));
i a22f(.a(na22e), .y(TBRN));
i a15e(.a(na15d), .y(TBR));
a #(1) a15d(.clk(V4MOD2), .a1(TBRN), .y(na15d));
a a16c(.clk(W1), .a1(AV), .a2(PCVN), .y(na15d));
a a16d(.clk(W1), .a1(AVN), .a2(PCV), .a3(G2V), .y(na15d));

a a3d(.clk(V1), .a1(CDS), .y(na2e));
a a6d(.clk(V1), .a1(OP1VN), .a2(OP2VN), .a3(OP3V), .y(na2e));
a a2d(.clk(V1), .a1(OP1VN), .a2(OP2VN), .y(na2d));
a a2e(.exp(na2d), .a1(OP4V), .y(na2e));
i a2f(.a(na2e), .y(TTT));

a a18c(.clk(V1), .a1(STOVN), .y(na18c));
i a18d(.a(na18c), .y(STO));

a a35d(.clk(X2), .a1(SRTR), .y(na35e));
a a35e(.clk(WN), .a1(CKP), .y(na35e));
i a35f(.a(na35e), .y(CKPN));
i a34e(.a(na34d), .y(CKP));
a #(1) a34d(.clk(V1), .a1(CKPN), .y(na34d));

a a12c(.clk(W1), .exp(na26c), .a1(STO), .y(na12d));
a a26c(.a1(PBV), .a2(G1VN), .a3(G6VN), .a4(AV), .y(na26c));
a a5c(.clk(W1), .exp(na13c), .a1(PCV), .y(na12d));
a a13c(.a1(STO), .a2(G5VN), .a3(G7V), .a4(AVN), .y(na13c));
a a12d(.clk(YN), .a1(SBRX), .y(na12d));
i a12e(.a(na12d), .y(SBRXN));
i a5e(.a(na5d), .y(SBRX));
a #(1) a5d(.clk(V4MOD2), .a1(SBRXN), .y(na5d));

a a33c(.a1(G6V), .y(na33c));
a a33d(.clk(V4MOD2), .exp(na33c), .a1(G7VN), .y(na33d));
a a19c(.clk(V4MOD2), .exp(na11d), .a1(PAV), .a2(G7VN), .a3(G1VN), .y(na33d));
a a11d(.a1(PCVN), .y(na11d));
i a33e(.a(na33d), .y(CBRN));

// 10-33
a a19d(.clk(Z8), .exp(na21d), .a1(TR1V), .a2(PDD), .a3(SBRZN), .y(na21e));
a a21d(.a1(CKP), .y(na21d));
a a21e(.clk(V1), .a1(PODN), .y(na21e));
i a21f(.a(na21e), .y(POD));
i a28f(.a(na28d), .y(PODN));
a #(1) a28d(.clk(V1), .a1(POD), .y(na28d));
a a26d(.clk(Z8), .a1(CKP), .a2(TR1V), .a3(PDDN), .y(na28d));
a a28e(.clk(Z8), .a1(SBRZ), .y(na28d));
a a34f(.clk(Z8), .a1(PAV), .y(na28d));

a a13d(.clk(Z8), .a1(TR1N), .a2(PDD), .a3(SBRZ), .y(na14d));
a a6e(.clk(Z8), .a1(TR1V), .a2(PDDN), .a3(SBRZ), .y(na14d));
a a14d(.clk(YN), .a1(PAR), .y(na14d));
i a14e(.a(na14d), .y(PARN));
i a7e(.a(na7d), .y(PAR));
a #(1) a7d(.clk(V4MOD2), .a1(PARN), .y(na7d));

a a27d(.clk(W1), .a1(POD), .y(na27e));
a a27e(.clk(V1), .a1(PDD), .y(na27e));
i a27f(.a(na27e), .y(PDDN));
i a20f(.a(na20d), .y(PDD));
a #(1) a20d(.clk(V1), .a1(PDDN), .y(na20d));
a a20e(.clk(W1), .a1(PODN), .y(na20d));

a a4d(.clk(X2), .a1(SBRX), .y(na4e));
a a4e(.clk(ZN), .a1(SBRY), .y(na4e));
i a4f(.a(na4e), .y(SBRYN));
i a11f(.a(na11e), .y(SBRY));
a #(1) a11e(.clk(V4MOD2), .a1(SBRYN), .y(na11e));

a a10d(.clk(Y6), .a1(SBRY), .y(na10e));
a a10e(.clk(WN), .a1(SBRZ), .y(na10e));
i a10f(.a(na10e), .y(SBRZN));
i a3f(.a(na3e), .y(SBRZ));
a #(1) a3e(.clk(V4MOD2), .a1(SBRZN), .y(na3e));

endmodule
`default_nettype wire
