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
and a33a(na34a, Y6, BRA10, TBR, MAOV);
and a33b(na34a, Y6, BRB10, TBR, MBOV);
and a13a(na34a, X2, SRTR, TR9D);
and a34a(na34a, V1, TR10);
inv a34b(TR10N, na34a);
inv #(0) a35c(TR10, na35a);
and a35a(na35a, V4MOD2, TR10N);
and a35b(na35a, X2, na14a, TR9DN);
and a14a(na14a, SRTR);
and a34c(na35a, X2, CLTR);

and a26a(na27a, X2, BRA11, TBR, MAOV);
and a26b(na27a, X2, BRB11, TBR, MBOV);
and a13b(na27a, W1, SRTR, TR10);
and a18a(na27a, X2, A6V, SHFV, AI2V);
and a27a(na27a, V1, TR11);
inv a27b(TR11N, na27a);
inv #(0) a28c(TR11, na28a);
and a28a(na28a, V4MOD2, TR11N);
and a28b(na28a, W1, na14b, TR10N);
and a14b(na14b, SRTR);
and a27c(na28a, X2, CLTR);

and a18b(na20b, X2, A5V, SHFV, AI2V);
and a19a(na20b, X2, BRA12, TBR, MAOV);
and a19b(na20b, X2, BRB12, TBR, MBOV);
and a14c(na14c, Z8, SRTR, TR11);
and a20a(na20b, Z8, na14c);
and a20b(na20b, V1, TR12);
inv a20c(TR12N, na20b);
inv #(0) a21c(TR12, na21a);
and a21a(na21a, V4MOD2, TR12N);
and a5a(na21a, Z8, SRTR, TR11N);
and a21b(na21a, X2, CLTR);

and a12a(na11a, X2, BRA13, TBR, MAOV);
and a12b(na11a, X2, BRB13, TBR, MBOV);
and a5b(na11a, W1, SRTR, TR12D);
and a11a(na11a, V1, TR13);
inv a11b(TR13N, na11a);
inv #(0) a4c(TR13, na4a);
and a4a(na4a, V4MOD2, TR13N);
and a4b(na4a, W1, na2a, TR12DN);
and a2a(na2a, SRTR);
and a11c(na4a, W1, CLTR);

and a3a(na3b, Y6, TR13);
and a3b(na3b, V4MOD2, TRS);
inv a3c(TRSN, na3b);
inv #(0) a10c(TRS, na10a);
and a10a(na10a, V4MOD2, TRSN);
and a10b(na10a, Y6, TR13N);

and a22a(na30a, X2, AV);
and a30a(na30a, V1, CLTRN);
inv #(0) a30b(CLTR, na30a);
inv a29c(CLTRN, na29a);
and a29a(na29a, V1, CLTR);
and a23a(na29a, Y6, na2b, PAV, G3VN, RUNVN);
and a2b(na2b, OP2V, G2V);
and a16a(na29a, Y6, na29b, PAV, G1VN, G2V);
and a29b(na29b, RUNV);
and a16b(na16b, PAV, G1VN, G7VN, TTT);
and a30c(na29a, Y6, na16b);

// 10-31
and a7a(na7b, Y6, TR12);
and a7b(na7b, V1, TR12D);
inv a7c(TR12DN, na7b);
inv #(0) a6c(TR12D, na6a);
and a6a(na6a, V1, TR12DN);
and a6b(na6a, Y6, TR12N);

and a15a(na8a, Y6, na17a, PBV, G3V, TTT);
and a17a(na17a, EXMVN, G6VN);
and a15b(na8a, Y6, na17b, PBV, CDSN, G5V);
and a17b(na17b, EXMVN, G6VN);
and a9a(na9a, Y6, PBV, G1V, G2VN);
and a2c(na8a, na9a, STO);
and a17c(na17c, Y6, CDS);
and a24a(na8a, na17c, PBV, G7VN, G1VN);
and a8a(na8a, V1, SRTR);
inv a8b(SRTRN, na8a);
inv #(0) a1c(SRTR, na1a);
and a1a(na1a, V1, SRTRN);
and a1b(na1a, Y6, na8c, PAV);
and a8c(na8c, G7V);
and a9b(na1a, Y6, na22b, PAV, G2V, OP2V);
and a22b(na22b, RUNVN);

and a23b(na23b, Z8, TR13N, TR12D, TR11, TR10);
and a24b(na23b, TR9DN, PCVN, G6VN, G7V);
and a22c(na25a, na23b, SRTRN);
and a31a(na25a, Z8, HOPV, PCV);
and a25a(na25a, V1, CDS);
inv a25b(CDSN, na25a);
inv #(0) a32b(CDS, na32a);
and a32a(na32a, V4MOD2, CDSN);
and a31b(na32a, Z8, PCVN, G5V);

// 10-32
and a30d(na30d, W1, PAV, G3VN, G5V);
and a30e(na22e, na30d, AVN);
and a29d(na22e, W1, na22d, G2V, G4VN, RDV);
and a22d(na22d, PBV, AVN);
and a29e(na22e, W1, na15c, RDV, G1V, G3VN);
and a15c(na15c, PCV, AV);
and a22e(na22e, V1, TBR);
inv a22f(TBRN, na22e);
inv #(0) a15e(TBR, na15d);
and a15d(na15d, V4MOD2, TBRN);
and a16c(na15d, W1, AV, PCVN);
and a16d(na15d, W1, AVN, PCV, G2V);

and a3d(na2e, V1, CDS);
and a6d(na2e, V1, OP1VN, OP2VN, OP3V);
and a2d(na2d, V1, OP1VN, OP2VN);
and a2e(na2e, na2d, OP4V);
inv a2f(TTT, na2e);

and a18c(na18c, V1, STOVN);
inv a18d(STO, na18c);

and a35d(na35e, X2, SRTR);
and a35e(na35e, WN, CKP);
inv a35f(CKPN, na35e);
inv #(0) a34e(CKP, na34d);
and a34d(na34d, V1, CKPN);

and a12c(na12d, W1, na26c, STO);
and a26c(na26c, PBV, G1VN, G6VN, AV);
and a5c(na12d, W1, na13c, PCV);
and a13c(na13c, STO, G5VN, G7V, AVN);
and a12d(na12d, YN, SBRX);
inv a12e(SBRXN, na12d);
inv #(0) a5e(SBRX, na5d);
and a5d(na5d, V4MOD2, SBRXN);

and a33c(na33c, G6V);
and a33d(na33d, V4MOD2, na33c, G7VN);
and a19c(na33d, V4MOD2, na11d, PAV, G7VN, G1VN);
and a11d(na11d, PCVN);
inv a33e(CBRN, na33d);

// 10-33
and a19d(na21e, Z8, na21d, TR1V, PDD, SBRZN);
and a21d(na21d, CKP);
and a21e(na21e, V1, PODN);
inv #(0) a21f(POD, na21e);
inv a28f(PODN, na28d);
and a28d(na28d, V1, POD);
and a26d(na28d, Z8, CKP, TR1V, PDDN);
and a28e(na28d, Z8, SBRZ);
and a34f(na28d, Z8, PAV);

and a13d(na14d, Z8, TR1N, PDD, SBRZ);
and a6e(na14d, Z8, TR1V, PDDN, SBRZ);
and a14d(na14d, YN, PAR);
inv a14e(PARN, na14d);
inv #(0) a7e(PAR, na7d);
and a7d(na7d, V4MOD2, PARN);

and a27d(na27e, W1, POD);
and a27e(na27e, V1, PDD);
inv a27f(PDDN, na27e);
inv #(0) a20f(PDD, na20d);
and a20d(na20d, V1, PDDN);
and a20e(na20d, W1, PODN);

and a4d(na4e, X2, SBRX);
and a4e(na4e, ZN, SBRY);
inv a4f(SBRYN, na4e);
inv #(0) a11f(SBRY, na11e);
and a11e(na11e, V4MOD2, SBRYN);

and a10d(na10e, Y6, SBRY);
and a10e(na10e, WN, SBRZ);
inv a10f(SBRZN, na10e);
inv #(0) a3f(SBRZ, na3e);
and a3e(na3e, V4MOD2, SBRZN);

endmodule
`default_nettype wire
