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

wire na1a;
wire na1a_a1a;
wire na1a_a1b;
wire na1a_a9b;
assign na1a = na1a_a1a | na1a_a1b | na1a_a9b;
wire na2a;
wire na2b;
wire na2d;
wire na2e;
wire na2e_a3d;
wire na2e_a6d;
wire na2e_a2e;
assign na2e = na2e_a3d | na2e_a6d | na2e_a2e;
wire na3b;
wire na3b_a3a;
wire na3b_a3b;
assign na3b = na3b_a3a | na3b_a3b;
wire na3e;
wire na4a;
wire na4a_a4a;
wire na4a_a4b;
wire na4a_a11c;
assign na4a = na4a_a4a | na4a_a4b | na4a_a11c;
wire na4e;
wire na4e_a4d;
wire na4e_a4e;
assign na4e = na4e_a4d | na4e_a4e;
wire na5d;
wire na6a;
wire na6a_a6a;
wire na6a_a6b;
assign na6a = na6a_a6a | na6a_a6b;
wire na7b;
wire na7b_a7a;
wire na7b_a7b;
assign na7b = na7b_a7a | na7b_a7b;
wire na7d;
wire na8a;
wire na8a_a15a;
wire na8a_a15b;
wire na8a_a2c;
wire na8a_a24a;
wire na8a_a8a;
assign na8a = na8a_a15a | na8a_a15b | na8a_a2c | na8a_a24a | na8a_a8a;
wire na8c;
wire na9a;
wire na10a;
wire na10a_a10a;
wire na10a_a10b;
assign na10a = na10a_a10a | na10a_a10b;
wire na10e;
wire na10e_a10d;
wire na10e_a10e;
assign na10e = na10e_a10d | na10e_a10e;
wire na11a;
wire na11a_a12a;
wire na11a_a12b;
wire na11a_a5b;
wire na11a_a11a;
assign na11a = na11a_a12a | na11a_a12b | na11a_a5b | na11a_a11a;
wire na11d;
wire na11e;
wire na12d;
wire na12d_a12c;
wire na12d_a5c;
wire na12d_a12d;
assign na12d = na12d_a12c | na12d_a5c | na12d_a12d;
wire na13c;
wire na14a;
wire na14b;
wire na14c;
wire na14d;
wire na14d_a13d;
wire na14d_a6e;
wire na14d_a14d;
assign na14d = na14d_a13d | na14d_a6e | na14d_a14d;
wire na15c;
wire na15d;
wire na15d_a15d;
wire na15d_a16c;
wire na15d_a16d;
assign na15d = na15d_a15d | na15d_a16c | na15d_a16d;
wire na16b;
wire na17a;
wire na17b;
wire na17c;
wire na18c;
wire na20b;
wire na20b_a18b;
wire na20b_a19a;
wire na20b_a19b;
wire na20b_a20a;
wire na20b_a20b;
assign na20b = na20b_a18b | na20b_a19a | na20b_a19b | na20b_a20a | na20b_a20b;
wire na20d;
wire na20d_a20d;
wire na20d_a20e;
assign na20d = na20d_a20d | na20d_a20e;
wire na21a;
wire na21a_a21a;
wire na21a_a5a;
wire na21a_a21b;
assign na21a = na21a_a21a | na21a_a5a | na21a_a21b;
wire na21d;
wire na21e;
wire na21e_a19d;
wire na21e_a21e;
assign na21e = na21e_a19d | na21e_a21e;
wire na22b;
wire na22d;
wire na22e;
wire na22e_a30e;
wire na22e_a29d;
wire na22e_a29e;
wire na22e_a22e;
assign na22e = na22e_a30e | na22e_a29d | na22e_a29e | na22e_a22e;
wire na23b;
wire na23b_a23b;
wire na23b_a24b;
assign na23b = na23b_a23b & na23b_a24b;
wire na25a;
wire na25a_a22c;
wire na25a_a31a;
wire na25a_a25a;
assign na25a = na25a_a22c | na25a_a31a | na25a_a25a;
wire na26c;
wire na27a;
wire na27a_a26a;
wire na27a_a26b;
wire na27a_a13b;
wire na27a_a18a;
wire na27a_a27a;
assign na27a = na27a_a26a | na27a_a26b | na27a_a13b | na27a_a18a | na27a_a27a;
wire na27e;
wire na27e_a27d;
wire na27e_a27e;
assign na27e = na27e_a27d | na27e_a27e;
wire na28a;
wire na28a_a28a;
wire na28a_a28b;
wire na28a_a27c;
assign na28a = na28a_a28a | na28a_a28b | na28a_a27c;
wire na28d;
wire na28d_a28d;
wire na28d_a26d;
wire na28d_a28e;
wire na28d_a34f;
assign na28d = na28d_a28d | na28d_a26d | na28d_a28e | na28d_a34f;
wire na29a;
wire na29a_a29a;
wire na29a_a23a;
wire na29a_a16a;
wire na29a_a30c;
assign na29a = na29a_a29a | na29a_a23a | na29a_a16a | na29a_a30c;
wire na29b;
wire na30a;
wire na30a_a22a;
wire na30a_a30a;
assign na30a = na30a_a22a | na30a_a30a;
wire na30d;
wire na32a;
wire na32a_a32a;
wire na32a_a31b;
assign na32a = na32a_a32a | na32a_a31b;
wire na33c;
wire na33d;
wire na33d_a33d;
wire na33d_a19c;
assign na33d = na33d_a33d | na33d_a19c;
wire na34a;
wire na34a_a33a;
wire na34a_a33b;
wire na34a_a13a;
wire na34a_a34a;
assign na34a = na34a_a33a | na34a_a33b | na34a_a13a | na34a_a34a;
wire na34d;
wire na35a;
wire na35a_a35a;
wire na35a_a35b;
wire na35a_a34c;
assign na35a = na35a_a35a | na35a_a35b | na35a_a34c;
wire na35e;
wire na35e_a35d;
wire na35e_a35e;
assign na35e = na35e_a35d | na35e_a35e;

// 10-30
and a33a(na34a_a33a, Y6, BRA10, TBR, MAOV);
and a33b(na34a_a33b, Y6, BRB10, TBR, MBOV);
and a13a(na34a_a13a, X2, SRTR, TR9D);
and a34a(na34a_a34a, V1, TR10);
inv a34b(TR10N, na34a);
inv #(0) a35c(TR10, na35a);
and a35a(na35a_a35a, V4MOD2, TR10N);
and a35b(na35a_a35b, X2, na14a, TR9DN);
and a14a(na14a, SRTR);
and a34c(na35a_a34c, X2, CLTR);

and a26a(na27a_a26a, X2, BRA11, TBR, MAOV);
and a26b(na27a_a26b, X2, BRB11, TBR, MBOV);
and a13b(na27a_a13b, W1, SRTR, TR10);
and a18a(na27a_a18a, X2, A6V, SHFV, AI2V);
and a27a(na27a_a27a, V1, TR11);
inv a27b(TR11N, na27a);
inv #(0) a28c(TR11, na28a);
and a28a(na28a_a28a, V4MOD2, TR11N);
and a28b(na28a_a28b, W1, na14b, TR10N);
and a14b(na14b, SRTR);
and a27c(na28a_a27c, X2, CLTR);

and a18b(na20b_a18b, X2, A5V, SHFV, AI2V);
and a19a(na20b_a19a, X2, BRA12, TBR, MAOV);
and a19b(na20b_a19b, X2, BRB12, TBR, MBOV);
and a14c(na14c, Z8, SRTR, TR11);
and a20a(na20b_a20a, Z8, na14c);
and a20b(na20b_a20b, V1, TR12);
inv a20c(TR12N, na20b);
inv #(0) a21c(TR12, na21a);
and a21a(na21a_a21a, V4MOD2, TR12N);
and a5a(na21a_a5a, Z8, SRTR, TR11N);
and a21b(na21a_a21b, X2, CLTR);

and a12a(na11a_a12a, X2, BRA13, TBR, MAOV);
and a12b(na11a_a12b, X2, BRB13, TBR, MBOV);
and a5b(na11a_a5b, W1, SRTR, TR12D);
and a11a(na11a_a11a, V1, TR13);
inv a11b(TR13N, na11a);
inv #(0) a4c(TR13, na4a);
and a4a(na4a_a4a, V4MOD2, TR13N);
and a4b(na4a_a4b, W1, na2a, TR12DN);
and a2a(na2a, SRTR);
and a11c(na4a_a11c, W1, CLTR);

and a3a(na3b_a3a, Y6, TR13);
and a3b(na3b_a3b, V4MOD2, TRS);
inv a3c(TRSN, na3b);
inv #(0) a10c(TRS, na10a);
and a10a(na10a_a10a, V4MOD2, TRSN);
and a10b(na10a_a10b, Y6, TR13N);

and a22a(na30a_a22a, X2, AV);
and a30a(na30a_a30a, V1, CLTRN);
inv #(0) a30b(CLTR, na30a);
inv a29c(CLTRN, na29a);
and a29a(na29a_a29a, V1, CLTR);
and a23a(na29a_a23a, Y6, na2b, PAV, G3VN, RUNVN);
and a2b(na2b, OP2V, G2V);
and a16a(na29a_a16a, Y6, na29b, PAV, G1VN, G2V);
and a29b(na29b, RUNV);
and a16b(na16b, PAV, G1VN, G7VN, TTT);
and a30c(na29a_a30c, Y6, na16b);

// 10-31
and a7a(na7b_a7a, Y6, TR12);
and a7b(na7b_a7b, V1, TR12D);
inv a7c(TR12DN, na7b);
inv #(0) a6c(TR12D, na6a);
and a6a(na6a_a6a, V1, TR12DN);
and a6b(na6a_a6b, Y6, TR12N);

and a15a(na8a_a15a, Y6, na17a, PBV, G3V, TTT);
and a17a(na17a, EXMVN, G6VN);
and a15b(na8a_a15b, Y6, na17b, PBV, CDSN, G5V);
and a17b(na17b, EXMVN, G6VN);
and a9a(na9a, Y6, PBV, G1V, G2VN);
and a2c(na8a_a2c, na9a, STO);
and a17c(na17c, Y6, CDS);
and a24a(na8a_a24a, na17c, PBV, G7VN, G1VN);
and a8a(na8a_a8a, V1, SRTR);
inv a8b(SRTRN, na8a);
inv #(0) a1c(SRTR, na1a);
and a1a(na1a_a1a, V1, SRTRN);
and a1b(na1a_a1b, Y6, na8c, PAV);
and a8c(na8c, G7V);
and a9b(na1a_a9b, Y6, na22b, PAV, G2V, OP2V);
and a22b(na22b, RUNVN);

and a23b(na23b_a23b, Z8, TR13N, TR12D, TR11, TR10);
and a24b(na23b_a24b, TR9DN, PCVN, G6VN, G7V);
and a22c(na25a_a22c, na23b, SRTRN);
and a31a(na25a_a31a, Z8, HOPV, PCV);
and a25a(na25a_a25a, V1, CDS);
inv a25b(CDSN, na25a);
inv #(0) a32b(CDS, na32a);
and a32a(na32a_a32a, V4MOD2, CDSN);
and a31b(na32a_a31b, Z8, PCVN, G5V);

// 10-32
and a30d(na30d, W1, PAV, G3VN, G5V);
and a30e(na22e_a30e, na30d, AVN);
and a29d(na22e_a29d, W1, na22d, G2V, G4VN, RDV);
and a22d(na22d, PBV, AVN);
and a29e(na22e_a29e, W1, na15c, RDV, G1V, G3VN);
and a15c(na15c, PCV, AV);
and a22e(na22e_a22e, V1, TBR);
inv a22f(TBRN, na22e);
inv #(0) a15e(TBR, na15d);
and a15d(na15d_a15d, V4MOD2, TBRN);
and a16c(na15d_a16c, W1, AV, PCVN);
and a16d(na15d_a16d, W1, AVN, PCV, G2V);

and a3d(na2e_a3d, V1, CDS);
and a6d(na2e_a6d, V1, OP1VN, OP2VN, OP3V);
and a2d(na2d, V1, OP1VN, OP2VN);
and a2e(na2e_a2e, na2d, OP4V);
inv a2f(TTT, na2e);

and a18c(na18c, V1, STOVN);
inv a18d(STO, na18c);

and a35d(na35e_a35d, X2, SRTR);
and a35e(na35e_a35e, WN, CKP);
inv a35f(CKPN, na35e);
inv #(0) a34e(CKP, na34d);
and a34d(na34d, V1, CKPN);

and a12c(na12d_a12c, W1, na26c, STO);
and a26c(na26c, PBV, G1VN, G6VN, AV);
and a5c(na12d_a5c, W1, na13c, PCV);
and a13c(na13c, STO, G5VN, G7V, AVN);
and a12d(na12d_a12d, YN, SBRX);
inv a12e(SBRXN, na12d);
inv #(0) a5e(SBRX, na5d);
and a5d(na5d, V4MOD2, SBRXN);

and a33c(na33c, G6V);
and a33d(na33d_a33d, V4MOD2, na33c, G7VN);
and a19c(na33d_a19c, V4MOD2, na11d, PAV, G7VN, G1VN);
and a11d(na11d, PCVN);
inv a33e(CBRN, na33d);

// 10-33
and a19d(na21e_a19d, Z8, na21d, TR1V, PDD, SBRZN);
and a21d(na21d, CKP);
and a21e(na21e_a21e, V1, PODN);
inv #(0) a21f(POD, na21e);
inv a28f(PODN, na28d);
and a28d(na28d_a28d, V1, POD);
and a26d(na28d_a26d, Z8, CKP, TR1V, PDDN);
and a28e(na28d_a28e, Z8, SBRZ);
and a34f(na28d_a34f, Z8, PAV);

and a13d(na14d_a13d, Z8, TR1N, PDD, SBRZ);
and a6e(na14d_a6e, Z8, TR1V, PDDN, SBRZ);
and a14d(na14d_a14d, YN, PAR);
inv a14e(PARN, na14d);
inv #(0) a7e(PAR, na7d);
and a7d(na7d, V4MOD2, PARN);

and a27d(na27e_a27d, W1, POD);
and a27e(na27e_a27e, V1, PDD);
inv a27f(PDDN, na27e);
inv #(0) a20f(PDD, na20d);
and a20d(na20d_a20d, V1, PDDN);
and a20e(na20d_a20e, W1, PODN);

and a4d(na4e_a4d, X2, SBRX);
and a4e(na4e_a4e, ZN, SBRY);
inv a4f(SBRYN, na4e);
inv #(0) a11f(SBRY, na11e);
and a11e(na11e, V4MOD2, SBRYN);

and a10d(na10e_a10d, Y6, SBRY);
and a10e(na10e_a10e, WN, SBRZ);
inv a10f(SBRZN, na10e);
inv #(0) a3f(SBRZ, na3e);
and a3e(na3e, V4MOD2, SBRZN);

endmodule
`default_nettype wire
