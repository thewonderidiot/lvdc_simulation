`timescale 1ns/1ps
`default_nettype none

module mem_timing(
    input wire V1,
    input wire V4MOD7,
    input wire CSTN,
    input wire DMA,
    input wire DMB,
    input wire EAC,
    input wire EAP,
    input wire EBC,
    input wire EBP,
    input wire EXMV,
    input wire EXMVN,
    input wire G1V,
    input wire G1VN,
    input wire G2V,
    input wire G2VN,
    input wire G3V,
    input wire G3VN,
    input wire G4V,
    input wire G5VN,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire HALTV,
    input wire HOPV,
    input wire IMA,
    input wire IMB,
    input wire INTV,
    input wire MZOVN,
    input wire MTTVN,
    input wire MFFVN,
    input wire MSSVN,
    input wire OP1VN,
    input wire OP2VN,
    input wire OP3V,
    input wire OP4V,
    input wire PAV,
    input wire PAVN,
    input wire PBV,
    input wire PBVN,
    input wire PCV,
    input wire PCVN,
    input wire RUNVN,
    input wire STOVN,
    input wire TER,
    input wire TR4V,
    input wire TR13V,
    input wire TTLV,
    input wire UTRV,
    input wire W3,
    input wire X4,
    input wire XN,
    input wire Y1,
    input wire Y3,
    input wire Z5,
    input wire Z7,
    input wire ZN,
    output wire CNC,
    output wire COC,
    output wire CST,
    output wire INHBS,
    output wire MAO,
    output wire MBO,
    output wire MZO,
    output wire MTT,
    output wire MFF,
    output wire MSS,
    output wire RD,
    output wire RDM,
    output wire RDMN,
    output wire RECN,
    output wire RUN,
    output wire RUNN,
    output wire SYL0N,
    output wire SYL1N,
    output wire SYLC1,
    output wire SYNC,
    output wire SYNCN,
    output wire TIME
);

wire COCN;
wire CNCN;
wire MOP;
wire SINK;
wire SINKN;
wire SLD;
wire SLDN;
wire SYLC1N;
wire TIMEN;
wire TLC;
wire TLCN;

wor na1a;
wor na2c;
wor na3d;
wor na4b;
wor na5b;
wire na7a;
wor na9a;
wire na9c;
wire na9d;
wire na9e;
wor na10a;
wire na10c;
wor na11a;
wire na11b;
wor na11e;
wire na12a;
wor na12b;
wire na12d;
wire na12e;
wor na13a;
wire na15a;
wire na15b;
wor na15d;
wire na16c;
wor na16d;
wor na17d;
wire na18a;
wor na18c;
wire na19a;
wire na20a;
wire na20b;
wire na20c;
wire na20d;
wire na21a;
wor na21b;
wire na22a;
wire na22b;
wire na23a;
wire na24a;
wor na24b;
wire na25a;
wire na25b;
wire na25c;
wire na26a;
wor na26b;
wire na27a;
wire na27c;
wor na29a;
wire na29d;
wire na29e;
wor na30b;
wire na30d;
wire na31b;
wire na31c;
wire na32c;
wor na33c;
wor na34c;

// 10-46
and a15a(na15a, MOP, STOVN);
and a15b(na15b, V4MOD7, na15a);
inv a15c(INHBS, na15b);

and a23a(na23a, V4MOD7, INHBS);
inv a23b(RD, na23a);

and a23c(na24b, V1, TTLV);
and a16a(na24b, V1, INTV, G6V);
and a16b(na24b, V1, PAV, G6V, RUNVN);
and a17a(na24b, V1, OP1VN, OP2VN, OP3V);
and a17b(na24b, V1, OP1VN, OP2VN, OP4V);
and a31a(na24b, V1, OP1VN, OP3V, OP4V);
and a24a(na24a, V1, HOPV, RUNVN);
and a24b(na24b, na24a);
inv a24c(MOP, na24b);

and a31b(na31b, Z7, G7VN, PAV, G6V);
and a30a(na30b, na31b, HALTV);
and a30b(na30b, V4MOD7, RUNN);
inv #(0) a30c(RUN, na30b);
inv a29c(RUNN, na29a);
and a29a(na29a, V4MOD7, RUN);
and a29b(na29a, Y1, na22a, G7VN);
and a22a(na22a, G6V, PAV);

and a22b(na22b, V4MOD7, CSTN);
inv a22c(CST, na22b);

and a32a(na26b, na25a, G1V, G7V);
and a25a(na25a, Z7, PAV, MOP);
and a32b(na26b, na25b, G3VN, G4V);
and a25b(na25b, Z7, PAV, MOP);
and a33a(na26b, Z7, na25c, RD, G7V);
and a25c(na25c, PAV, G6VN);
and a33b(na26b, Z7, na26a, PAVN, G3VN);
and a26a(na26a, G2V, RD);
and a34a(na26b, na27a, G5VN, G6V);
and a27a(na27a, Y1, MOP, PBV);
and a20a(na20a, INHBS, PBVN, G2V, MOP);
and a27b(na26b, Y1, na20a, G3VN);
and a34b(na26b, na27c, INHBS, G5VN, MOP);
and a27c(na27c, Y1, PCV, G6V);
and a26b(na26b, XN, SINK);
inv a26c(SINKN, na26b);
inv #(0) a19b(SINK, na19a);
and a19a(na19a, V1, SINKN);

// 10-47
and a19c(na12b, na18a, G7VN);
and a18a(na18a, Z7, G1VN, TR4V, PAV);
and a12a(na12a, TR13V, EXMVN);
and a18b(na12b, Z7, na12a, PBV, G2VN, G3V);
and a12b(na12b, V1, SLD);
inv a12c(SLDN, na12b);
inv #(0) a13c(SLD, na13a);
and a13a(na13a, V1, SLDN);
and a13b(na13a, na20b, EXMVN);
and a20b(na20b, Z7, PCVN, G1VN, G2V);

and a8a(na1a, X4, UTRV, SLD);
and a1a(na1a, V1, SYLC1);
inv a1b(SYLC1N, na1a);
inv #(0) a9b(SYLC1, na9a);
and a9a(na9a, V4MOD7, SYLC1N);
and a8b(na9a, X4, UTRV, SLDN);

and a2a(na10a, Z7, na9c, PBV, G6V);
and a9c(na9c, RD, G7VN);
and a2b(na10a, Z7, PCV, G6V, G7VN);
and a10a(na10a, V4MOD7, SYL0N);
inv a10b(SYL1N, na10a);
inv #(0) a11c(SYL0N, na11a);
and a11a(na11a, V4MOD7, SYL1N);
and a11b(na11b, G7VN, G6V);
and a3a(na11a, Y1, na11b, EXMV, PAV, SLDN);
and a10c(na10c, G7VN, G6V);
and a3b(na11a, Y1, na10c, EXMVN, PAV, SYLC1N);
and a4a(na11a, Y1, PAV, G6VN, G7V);

// 10-48
and a12d(na12d, W3);
and a11d(na11e, W3, na12d, SINK);
and a11e(na11e, ZN, SYNC);
inv a11f(SYNCN, na11e);
inv #(0) a12f(SYNC, na12e);
and a12e(na12e, V1, SYNCN);

and a22d(na16d, Z5, EAP, EBP, TIME);
and a22e(na16d, Z5, EAP, EBC, TIME);
and a23d(na16d, Z5, EAC, EBP, TIME);
and a23e(na16d, Z5, EAC, EBC, TIME);
and a16c(na16c, TLC);
and a16d(na16d, V1, na16c, RECN);
inv a16e(TLCN, na16d);
inv #(0) a15f(TLC, na15d);
and a15d(na15d, V4MOD7, TLCN);
and a15e(na15d, Z5, na29d, G1V);
and a29d(na29d, PAV);

and a29e(na29e, V1, MZOVN);
inv a29f(MZO, na29e);
and a30d(na30d, V1, MTTVN);
inv a30e(MTT, na30d);
and a31c(na31c, V1, MFFVN);
inv a31d(MFF, na31c);
and a32c(na32c, V1, MSSVN);
inv a32d(MSS, na32c);

and a5a(na5b, Y3, SYNC);
and a5b(na5b, V1, CNCN);
inv #(0) a5c(CNC, na5b);
inv a4d(CNCN, na4b);
and a4b(na4b, V1, CNC);
and a4c(na4b, X4, COC);

and a24d(na17d, Z5, EAP, TIME, DMB);
and a24e(na17d, Z5, EAP, TIME, IMB);
and a17c(na17d, Z5, EAC);
and a17d(na17d, V4MOD7, MBO);
inv a17e(MAO, na17d);
inv #(0) a18e(MBO, na18c);
and a18c(na18c, V4MOD7, MAO);
and a18d(na18c, Z5, EBC);
and a25d(na18c, Z5, EBP, TIME, DMA);
and a25e(na18c, Z5, EBP, TIME, IMA);

// 10-49
and a3c(na3d, Z5, CNC);
and a3d(na3d, V1, COCN);
inv #(0) a3e(COC, na3d);
inv a2e(COCN, na2c);
and a2c(na2c, V1, COC);
and a2d(na2c, Y3, na9d, CNCN);
and a9d(na9d, SYNCN);

and a26d(na33c, Y3, PAV, G3VN, G4V);
and a26e(na33c, Y3, G2V, G3VN);
and a33c(na33c, V4MOD7, RDMN);
inv #(0) a33d(RDM, na33c);
inv a34d(RDMN, na34c);
and a34c(na34c, V4MOD7, RDM);
and a27d(na34c, Y3, G1V, G7V);
and a27e(na34c, Y3, PAV, G6VN, G7V);

and a9e(na9e, V1, TER);
inv a9f(RECN, na9e);

and a21a(na21a, PAV);
and a14a(na21b, Y3, na21a, G3VN, G4V, RD);
and a20c(na20c, PBV);
and a14b(na21b, Y3, na20c, G3VN, G2V, RD);
and a7a(na7a, Y3, PAVN, PCV);
and a7b(na21b, na7a, G2VN, G1V, RD);
and a21b(na21b, XN, TIME);
inv a21c(TIMEN, na21b);
inv #(0) a20e(TIME, na20d);
and a20d(na20d, V1, TIMEN);

endmodule
`default_nettype wire
