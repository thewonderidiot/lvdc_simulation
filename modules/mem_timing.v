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
a a15a(.a1(MOP), .a2(STOVN), .y(na15a));
a a15b(.clk(V4MOD7), .exp(na15a), .y(na15b));
i a15c(.a(na15b), .y(INHBS));

a a23a(.clk(V4MOD7), .a1(INHBS), .y(na23a));
i a23b(.a(na23a), .y(RD));

a a23c(.clk(V1), .a1(TTLV), .y(na24b));
a a16a(.clk(V1), .a1(INTV), .a2(G6V), .y(na24b));
a a16b(.clk(V1), .a1(PAV), .a2(G6V), .a3(RUNVN), .y(na24b));
a a17a(.clk(V1), .a1(OP1VN), .a2(OP2VN), .a3(OP3V), .y(na24b));
a a17b(.clk(V1), .a1(OP1VN), .a2(OP2VN), .a3(OP4V), .y(na24b));
a a31a(.clk(V1), .a1(OP1VN), .a2(OP3V), .a3(OP4V), .y(na24b));
a a24a(.clk(V1), .a1(HOPV), .a2(RUNVN), .y(na24a));
a a24b(.exp(na24a), .y(na24b));
i a24c(.a(na24b), .y(MOP));

a a31b(.clk(Z7), .a1(G7VN), .a2(PAV), .a3(G6V), .y(na31b));
a a30a(.exp(na31b), .a1(HALTV), .y(na30b));
a a30b(.clk(V4MOD7), .a1(RUNN), .y(na30b));
i #(0) a30c(.a(na30b), .y(RUN));
i a29c(.a(na29a), .y(RUNN));
a a29a(.clk(V4MOD7), .a1(RUN), .y(na29a));
a a29b(.clk(Y1), .exp(na22a), .a1(G7VN), .y(na29a));
a a22a(.a1(G6V), .a2(PAV), .y(na22a));

a a22b(.clk(V4MOD7), .a1(CSTN), .y(na22b));
i a22c(.a(na22b), .y(CST));

a a32a(.exp(na25a), .a1(G1V), .a2(G7V), .y(na26b));
a a25a(.clk(Z7), .a1(PAV), .a2(MOP), .y(na25a));
a a32b(.exp(na25b), .a1(G3VN), .a2(G4V), .y(na26b));
a a25b(.clk(Z7), .a1(PAV), .a2(MOP), .y(na25b));
a a33a(.clk(Z7), .exp(na25c), .a1(RD), .a2(G7V), .y(na26b));
a a25c(.a1(PAV), .a2(G6VN), .y(na25c));
a a33b(.clk(Z7), .exp(na26a), .a1(PAVN), .a2(G3VN), .y(na26b));
a a26a(.a1(G2V), .a2(RD), .y(na26a));
a a34a(.exp(na27a), .a1(G5VN), .a2(G6V), .y(na26b));
a a27a(.clk(Y1), .a1(MOP), .a2(PBV), .y(na27a));
a a20a(.a1(INHBS), .a2(PBVN), .a3(G2V), .a4(MOP), .y(na20a));
a a27b(.clk(Y1), .exp(na20a), .a1(G3VN), .y(na26b));
a a34b(.exp(na27c), .a1(INHBS), .a2(G5VN), .a3(MOP), .y(na26b));
a a27c(.clk(Y1), .a1(PCV), .a2(G6V), .y(na27c));
a a26b(.clk(XN), .a1(SINK), .y(na26b));
i a26c(.a(na26b), .y(SINKN));
i #(0) a19b(.a(na19a), .y(SINK));
a a19a(.clk(V1), .a1(SINKN), .y(na19a));

// 10-47
a a19c(.exp(na18a), .a1(G7VN), .y(na12b));
a a18a(.clk(Z7), .a1(G1VN), .a2(TR4V), .a3(PAV), .y(na18a));
a a12a(.a1(TR13V), .a2(EXMVN), .y(na12a));
a a18b(.clk(Z7), .exp(na12a), .a1(PBV), .a2(G2VN), .a3(G3V), .y(na12b));
a a12b(.clk(V1), .a1(SLD), .y(na12b));
i a12c(.a(na12b), .y(SLDN));
i #(0) a13c(.a(na13a), .y(SLD));
a a13a(.clk(V1), .a1(SLDN), .y(na13a));
a a13b(.exp(na20b), .a1(EXMVN), .y(na13a));
a a20b(.clk(Z7), .a1(PCVN), .a2(G1VN), .a3(G2V), .y(na20b));

a a8a(.clk(X4), .a1(UTRV), .a2(SLD), .y(na1a));
a a1a(.clk(V1), .a1(SYLC1), .y(na1a));
i a1b(.a(na1a), .y(SYLC1N));
i #(0) a9b(.a(na9a), .y(SYLC1));
a a9a(.clk(V4MOD7), .a1(SYLC1N), .y(na9a));
a a8b(.clk(X4), .a1(UTRV), .a2(SLDN), .y(na9a));

a a2a(.clk(Z7), .exp(na9c), .a1(PBV), .a2(G6V), .y(na10a));
a a9c(.a1(RD), .a2(G7VN), .y(na9c));
a a2b(.clk(Z7), .a1(PCV), .a2(G6V), .a3(G7VN), .y(na10a));
a a10a(.clk(V4MOD7), .a1(SYL0N), .y(na10a));
i a10b(.a(na10a), .y(SYL1N));
i #(0) a11c(.a(na11a), .y(SYL0N));
a a11a(.clk(V4MOD7), .a1(SYL1N), .y(na11a));
a a11b(.a1(G7VN), .a2(G6V), .y(na11b));
a a3a(.clk(Y1), .exp(na11b), .a1(EXMV), .a2(PAV), .a3(SLDN), .y(na11a));
a a10c(.a1(G7VN), .a2(G6V), .y(na10c));
a a3b(.clk(Y1), .exp(na10c), .a1(EXMVN), .a2(PAV), .a3(SYLC1N), .y(na11a));
a a4a(.clk(Y1), .a1(PAV), .a2(G6VN), .a3(G7V), .y(na11a));

// 10-48
a a12d(.clk(W3), .y(na12d));
a a11d(.clk(W3), .exp(na12d), .a1(SINK), .y(na11e));
a a11e(.clk(ZN), .a1(SYNC), .y(na11e));
i a11f(.a(na11e), .y(SYNCN));
i #(0) a12f(.a(na12e), .y(SYNC));
a a12e(.clk(V1), .a1(SYNCN), .y(na12e));

a a22d(.clk(Z5), .a1(EAP), .a2(EBP), .a3(TIME), .y(na16d));
a a22e(.clk(Z5), .a1(EAP), .a2(EBC), .a3(TIME), .y(na16d));
a a23d(.clk(Z5), .a1(EAC), .a2(EBP), .a3(TIME), .y(na16d));
a a23e(.clk(Z5), .a1(EAC), .a2(EBC), .a3(TIME), .y(na16d));
a a16c(.a1(TLC), .y(na16c));
a a16d(.clk(V1), .exp(na16c), .a1(RECN), .y(na16d));
i a16e(.a(na16d), .y(TLCN));
i #(0) a15f(.a(na15d), .y(TLC));
a a15d(.clk(V4MOD7), .a1(TLCN), .y(na15d));
a a15e(.clk(Z5), .exp(na29d), .a1(G1V), .y(na15d));
a a29d(.a1(PAV), .y(na29d));

a a29e(.clk(V1), .a1(MZOVN), .y(na29e));
i a29f(.a(na29e), .y(MZO));
a a30d(.clk(V1), .a1(MTTVN), .y(na30d));
i a30e(.a(na30d), .y(MTT));
a a31c(.clk(V1), .a1(MFFVN), .y(na31c));
i a31d(.a(na31c), .y(MFF));
a a32c(.clk(V1), .a1(MSSVN), .y(na32c));
i a32d(.a(na32c), .y(MSS));

a a5a(.clk(Y3), .a1(SYNC), .y(na5b));
a a5b(.clk(V1), .a1(CNCN), .y(na5b));
i #(0) a5c(.a(na5b), .y(CNC));
i a4d(.a(na4b), .y(CNCN));
a a4b(.clk(V1), .a1(CNC), .y(na4b));
a a4c(.clk(X4), .a1(COC), .y(na4b));

a a24d(.clk(Z5), .a1(EAP), .a2(TIME), .a3(DMB), .y(na17d));
a a24e(.clk(Z5), .a1(EAP), .a2(TIME), .a3(IMB), .y(na17d));
a a17c(.clk(Z5), .a1(EAC), .y(na17d));
a a17d(.clk(V4MOD7), .a1(MBO), .y(na17d));
i a17e(.a(na17d), .y(MAO));
i #(0) a18e(.a(na18c), .y(MBO));
a a18c(.clk(V4MOD7), .a1(MAO), .y(na18c));
a a18d(.clk(Z5), .a1(EBC), .y(na18c));
a a25d(.clk(Z5), .a1(EBP), .a2(TIME), .a3(DMA), .y(na18c));
a a25e(.clk(Z5), .a1(EBP), .a2(TIME), .a3(IMA), .y(na18c));

// 10-49
a a3c(.clk(Z5), .a1(CNC), .y(na3d));
a a3d(.clk(V1), .a1(COCN), .y(na3d));
i #(0) a3e(.a(na3d), .y(COC));
i a2e(.a(na2c), .y(COCN));
a a2c(.clk(V1), .a1(COC), .y(na2c));
a a2d(.clk(Y3), .exp(na9d), .a1(CNCN), .y(na2c));
a a9d(.a1(SYNCN), .y(na9d));

a a26d(.clk(Y3), .a1(PAV), .a2(G3VN), .a3(G4V), .y(na33c));
a a26e(.clk(Y3), .a1(G2V), .a2(G3VN), .y(na33c));
a a33c(.clk(V4MOD7), .a1(RDMN), .y(na33c));
i #(0) a33d(.a(na33c), .y(RDM));
i a34d(.a(na34c), .y(RDMN));
a a34c(.clk(V4MOD7), .a1(RDM), .y(na34c));
a a27d(.clk(Y3), .a1(G1V), .a2(G7V), .y(na34c)); 
a a27e(.clk(Y3), .a1(PAV), .a2(G6VN), .a3(G7V), .y(na34c));

a a9e(.clk(V1), .a1(TER), .y(na9e));
i a9f(.a(na9e), .y(RECN));

a a21a(.a1(PAV), .y(na21a));
a a14a(.clk(Y3), .exp(na21a), .a1(G3VN), .a2(G4V), .a3(RD), .y(na21b));
a a20c(.a1(PBV), .y(na20c));
a a14b(.clk(Y3), .exp(na20c), .a1(G3VN), .a2(G2V), .a3(RD), .y(na21b));
a a7a(.clk(Y3), .a1(PAVN), .a2(PCV), .y(na7a));
a a7b(.exp(na7a), .a1(G2VN), .a2(G1V), .a3(RD), .y(na21b));
a a21b(.clk(XN), .a1(TIME), .y(na21b));
i a21c(.a(na21b), .y(TIMEN));
i #(0) a20e(.a(na20d), .y(TIME));
a a20d(.clk(V1), .a1(TIMEN), .y(na20d));

endmodule
`default_nettype wire
