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

wire na1a;
wire na1a_a8a;
wire na1a_a1a;
assign na1a = na1a_a8a | na1a_a1a;
wire na2c;
wire na2c_a2c;
wire na2c_a2d;
assign na2c = na2c_a2c | na2c_a2d;
wire na3d;
wire na3d_a3c;
wire na3d_a3d;
assign na3d = na3d_a3c | na3d_a3d;
wire na4b;
wire na4b_a4b;
wire na4b_a4c;
assign na4b = na4b_a4b | na4b_a4c;
wire na5b;
wire na5b_a5a;
wire na5b_a5b;
assign na5b = na5b_a5a | na5b_a5b;
wire na7a;
wire na9a;
wire na9a_a9a;
wire na9a_a8b;
assign na9a = na9a_a9a | na9a_a8b;
wire na9c;
wire na9d;
wire na9e;
wire na10a;
wire na10a_a2a;
wire na10a_a2b;
wire na10a_a10a;
assign na10a = na10a_a2a | na10a_a2b | na10a_a10a;
wire na10c;
wire na11a;
wire na11a_a11a;
wire na11a_a3a;
wire na11a_a3b;
wire na11a_a4a;
assign na11a = na11a_a11a | na11a_a3a | na11a_a3b | na11a_a4a;
wire na11b;
wire na11e;
wire na11e_a11d;
wire na11e_a11e;
assign na11e = na11e_a11d | na11e_a11e;
wire na12a;
wire na12b;
wire na12b_a19c;
wire na12b_a18b;
wire na12b_a12b;
assign na12b = na12b_a19c | na12b_a18b | na12b_a12b;
wire na12d;
wire na12e;
wire na13a;
wire na13a_a13a;
wire na13a_a13b;
assign na13a = na13a_a13a | na13a_a13b;
wire na15a;
wire na15b;
wire na15d;
wire na15d_a15d;
wire na15d_a15e;
assign na15d = na15d_a15d | na15d_a15e;
wire na16c;
wire na16d;
wire na16d_a22d;
wire na16d_a22e;
wire na16d_a23d;
wire na16d_a23e;
wire na16d_a16d;
assign na16d = na16d_a22d | na16d_a22e | na16d_a23d | na16d_a23e | na16d_a16d;
wire na17d;
wire na17d_a24d;
wire na17d_a24e;
wire na17d_a17c;
wire na17d_a17d;
assign na17d = na17d_a24d | na17d_a24e | na17d_a17c | na17d_a17d;
wire na18a;
wire na18c;
wire na18c_a18c;
wire na18c_a18d;
wire na18c_a25d;
wire na18c_a25e;
assign na18c = na18c_a18c | na18c_a18d | na18c_a25d | na18c_a25e;
wire na19a;
wire na20a;
wire na20b;
wire na20c;
wire na20d;
wire na21a;
wire na21b;
wire na21b_a14a;
wire na21b_a14b;
wire na21b_a7b;
wire na21b_a21b;
assign na21b = na21b_a14a | na21b_a14b | na21b_a7b | na21b_a21b;
wire na22a;
wire na22b;
wire na23a;
wire na24a;
wire na24b;
wire na24b_a23c;
wire na24b_a16a;
wire na24b_a16b;
wire na24b_a17a;
wire na24b_a17b;
wire na24b_a31a;
wire na24b_a24b;
assign na24b = na24b_a23c | na24b_a16a | na24b_a16b | na24b_a17a | na24b_a17b | na24b_a31a | na24b_a24b;
wire na25a;
wire na25b;
wire na25c;
wire na26a;
wire na26b;
wire na26b_a32a;
wire na26b_a32b;
wire na26b_a33a;
wire na26b_a33b;
wire na26b_a34a;
wire na26b_a27b;
wire na26b_a34b;
wire na26b_a26b;
assign na26b = na26b_a32a | na26b_a32b | na26b_a33a | na26b_a33b | na26b_a34a | na26b_a27b | na26b_a34b | na26b_a26b;
wire na27a;
wire na27c;
wire na29a;
wire na29a_a29a;
wire na29a_a29b;
assign na29a = na29a_a29a | na29a_a29b;
wire na29d;
wire na29e;
wire na30b;
wire na30b_a30a;
wire na30b_a30b;
assign na30b = na30b_a30a | na30b_a30b;
wire na30d;
wire na31b;
wire na31c;
wire na32c;
wire na33c;
wire na33c_a26d;
wire na33c_a26e;
wire na33c_a33c;
assign na33c = na33c_a26d | na33c_a26e | na33c_a33c;
wire na34c;
wire na34c_a34c;
wire na34c_a27d;
wire na34c_a27e;
assign na34c = na34c_a34c | na34c_a27d | na34c_a27e;

// 10-46
and a15a(na15a, MOP, STOVN);
and a15b(na15b, V4MOD7, na15a);
inv a15c(INHBS, na15b);

and a23a(na23a, V4MOD7, INHBS);
inv a23b(RD, na23a);

and a23c(na24b_a23c, V1, TTLV);
and a16a(na24b_a16a, V1, INTV, G6V);
and a16b(na24b_a16b, V1, PAV, G6V, RUNVN);
and a17a(na24b_a17a, V1, OP1VN, OP2VN, OP3V);
and a17b(na24b_a17b, V1, OP1VN, OP2VN, OP4V);
and a31a(na24b_a31a, V1, OP1VN, OP3V, OP4V);
and a24a(na24a, V1, HOPV, RUNVN);
and a24b(na24b_a24b, na24a);
inv a24c(MOP, na24b);

and a31b(na31b, Z7, G7VN, PAV, G6V);
and a30a(na30b_a30a, na31b, HALTV);
and a30b(na30b_a30b, V4MOD7, RUNN);
inv #(0) a30c(RUN, na30b);
inv a29c(RUNN, na29a);
and a29a(na29a_a29a, V4MOD7, RUN);
and a29b(na29a_a29b, Y1, na22a, G7VN);
and a22a(na22a, G6V, PAV);

and a22b(na22b, V4MOD7, CSTN);
inv a22c(CST, na22b);

and a32a(na26b_a32a, na25a, G1V, G7V);
and a25a(na25a, Z7, PAV, MOP);
and a32b(na26b_a32b, na25b, G3VN, G4V);
and a25b(na25b, Z7, PAV, MOP);
and a33a(na26b_a33a, Z7, na25c, RD, G7V);
and a25c(na25c, PAV, G6VN);
and a33b(na26b_a33b, Z7, na26a, PAVN, G3VN);
and a26a(na26a, G2V, RD);
and a34a(na26b_a34a, na27a, G5VN, G6V);
and a27a(na27a, Y1, MOP, PBV);
and a20a(na20a, INHBS, PBVN, G2V, MOP);
and a27b(na26b_a27b, Y1, na20a, G3VN);
and a34b(na26b_a34b, na27c, INHBS, G5VN, MOP);
and a27c(na27c, Y1, PCV, G6V);
and a26b(na26b_a26b, XN, SINK);
inv a26c(SINKN, na26b);
inv #(0) a19b(SINK, na19a);
and a19a(na19a, V1, SINKN);

// 10-47
and a19c(na12b_a19c, na18a, G7VN);
and a18a(na18a, Z7, G1VN, TR4V, PAV);
and a12a(na12a, TR13V, EXMVN);
and a18b(na12b_a18b, Z7, na12a, PBV, G2VN, G3V);
and a12b(na12b_a12b, V1, SLD);
inv a12c(SLDN, na12b);
inv #(0) a13c(SLD, na13a);
and a13a(na13a_a13a, V1, SLDN);
and a13b(na13a_a13b, na20b, EXMVN);
and a20b(na20b, Z7, PCVN, G1VN, G2V);

and a8a(na1a_a8a, X4, UTRV, SLD);
and a1a(na1a_a1a, V1, SYLC1);
inv a1b(SYLC1N, na1a);
inv #(0) a9b(SYLC1, na9a);
and a9a(na9a_a9a, V4MOD7, SYLC1N);
and a8b(na9a_a8b, X4, UTRV, SLDN);

and a2a(na10a_a2a, Z7, na9c, PBV, G6V);
and a9c(na9c, RD, G7VN);
and a2b(na10a_a2b, Z7, PCV, G6V, G7VN);
and a10a(na10a_a10a, V4MOD7, SYL0N);
inv a10b(SYL1N, na10a);
inv #(0) a11c(SYL0N, na11a);
and a11a(na11a_a11a, V4MOD7, SYL1N);
and a11b(na11b, G7VN, G6V);
and a3a(na11a_a3a, Y1, na11b, EXMV, PAV, SLDN);
and a10c(na10c, G7VN, G6V);
and a3b(na11a_a3b, Y1, na10c, EXMVN, PAV, SYLC1N);
and a4a(na11a_a4a, Y1, PAV, G6VN, G7V);

// 10-48
and a12d(na12d, W3);
and a11d(na11e_a11d, W3, na12d, SINK);
and a11e(na11e_a11e, ZN, SYNC);
inv a11f(SYNCN, na11e);
inv #(0) a12f(SYNC, na12e);
and a12e(na12e, V1, SYNCN);

and a22d(na16d_a22d, Z5, EAP, EBP, TIME);
and a22e(na16d_a22e, Z5, EAP, EBC, TIME);
and a23d(na16d_a23d, Z5, EAC, EBP, TIME);
and a23e(na16d_a23e, Z5, EAC, EBC, TIME);
and a16c(na16c, TLC);
and a16d(na16d_a16d, V1, na16c, RECN);
inv a16e(TLCN, na16d);
inv #(0) a15f(TLC, na15d);
and a15d(na15d_a15d, V4MOD7, TLCN);
and a15e(na15d_a15e, Z5, na29d, G1V);
and a29d(na29d, PAV);

and a29e(na29e, V1, MZOVN);
inv a29f(MZO, na29e);
and a30d(na30d, V1, MTTVN);
inv a30e(MTT, na30d);
and a31c(na31c, V1, MFFVN);
inv a31d(MFF, na31c);
and a32c(na32c, V1, MSSVN);
inv a32d(MSS, na32c);

and a5a(na5b_a5a, Y3, SYNC);
and a5b(na5b_a5b, V1, CNCN);
inv #(0) a5c(CNC, na5b);
inv a4d(CNCN, na4b);
and a4b(na4b_a4b, V1, CNC);
and a4c(na4b_a4c, X4, COC);

and a24d(na17d_a24d, Z5, EAP, TIME, DMB);
and a24e(na17d_a24e, Z5, EAP, TIME, IMB);
and a17c(na17d_a17c, Z5, EAC);
and a17d(na17d_a17d, V4MOD7, MBO);
inv a17e(MAO, na17d);
inv #(0) a18e(MBO, na18c);
and a18c(na18c_a18c, V4MOD7, MAO);
and a18d(na18c_a18d, Z5, EBC);
and a25d(na18c_a25d, Z5, EBP, TIME, DMA);
and a25e(na18c_a25e, Z5, EBP, TIME, IMA);

// 10-49
and a3c(na3d_a3c, Z5, CNC);
and a3d(na3d_a3d, V1, COCN);
inv #(0) a3e(COC, na3d);
inv a2e(COCN, na2c);
and a2c(na2c_a2c, V1, COC);
and a2d(na2c_a2d, Y3, na9d, CNCN);
and a9d(na9d, SYNCN);

and a26d(na33c_a26d, Y3, PAV, G3VN, G4V);
and a26e(na33c_a26e, Y3, G2V, G3VN);
and a33c(na33c_a33c, V4MOD7, RDMN);
inv #(0) a33d(RDM, na33c);
inv a34d(RDMN, na34c);
and a34c(na34c_a34c, V4MOD7, RDM);
and a27d(na34c_a27d, Y3, G1V, G7V);
and a27e(na34c_a27e, Y3, PAV, G6VN, G7V);

and a9e(na9e, V1, TER);
inv a9f(RECN, na9e);

and a21a(na21a, PAV);
and a14a(na21b_a14a, Y3, na21a, G3VN, G4V, RD);
and a20c(na20c, PBV);
and a14b(na21b_a14b, Y3, na20c, G3VN, G2V, RD);
and a7a(na7a, Y3, PAVN, PCV);
and a7b(na21b_a7b, na7a, G2VN, G1V, RD);
and a21b(na21b_a21b, XN, TIME);
inv a21c(TIMEN, na21b);
inv #(0) a20e(TIME, na20d);
and a20d(na20d, V1, TIMEN);

endmodule
`default_nettype wire
