`timescale 1ns/1ps
`default_nettype none

module lvdc(
    input wire CSTN,
    input wire DATAV,
    input wire DIN,
    input wire HALTV,
    input wire INTCV,
    input wire TER
);

// Power rails
reg V1 = 1;
reg V4MOD1 = 1;
reg V4MOD2 = 1;
reg V4MOD3 = 1;
reg V4MOD5 = 1;
reg V4MOD6 = 1;
reg V4MOD7 = 1;
reg V5 = 1;

// Backplane wires
wire A;
wire AN;
wire AV;
wire AVN;
wire A1;
wire A1V;
wire A2;
wire A2V;
wire A3;
wire A3V;
wire A4;
wire A4V;
wire A5;
wire A5V;
wire A6;
wire A6V;
wire A7;
wire A7V;
wire A8;
wire A8V;
wire A9;
wire A9V;
wire ACC0;
wire ACC0N;
wire ACC1;
wire ACC1N;
wire ACC1V;
wire ACC1VN;
wire AI0;
wire AI0N;
wire AI1;
wire AI1N;
wire AI1V;
wire AI1VN;
wire AI2;
wire AI2N;
wire AI2V;
wire AI2VN;
wire AI3;
wire AI3N;
wire AI3V;
wire AI3VN;
wire AX0N;
wire AX0VN;
wire AX1N;
wire AX1VN;
wire AX2N;
wire AX2VN;
wire AX3N;
wire AX3VN;
wire AX4N;
wire AX4VN;
wire AX5N;
wire AX5VN;
wire AX6N;
wire AX6VN;
wire AX7N;
wire AX7VN;
wire AX00N;
wire AX00VN;
wire AX10N;
wire AX10VN;
wire AX20N;
wire AX20VN;
wire AX30N;
wire AX30VN;
wire AX40N;
wire AX40VN;
wire AX50N;
wire AX50VN;
wire AX60N;
wire AX60VN;
wire AX70N;
wire AX70VN;
wire AY0N;
wire AY0VN;
wire AY1N;
wire AY1VN;
wire AY2N;
wire AY2VN;
wire AY3N;
wire AY3VN;
wire AY4N;
wire AY4VN;
wire AY5N;
wire AY5VN;
wire AY6N;
wire AY6VN;
wire AY7N;
wire AY7VN;
wire AY00N;
wire AY00VN;
wire AY10N;
wire AY10VN;
wire AY20N;
wire AY20VN;
wire AY30N;
wire AY30VN;
wire AY40N;
wire AY40VN;
wire AY50N;
wire AY50VN;
wire AY60N;
wire AY60VN;
wire AY70N;
wire AY70VN;
wire BO1;
wire BO1N;
wire BO2;
wire BO2N;
wire BO3;
wire BO3N;
wire BOP;
wire BRA1;
wire BRA1N;
wire BRA2;
wire BRA2N;
wire BRA3;
wire BRA3N;
wire BRA4;
wire BRA4N;
wire BRA5;
wire BRA5N;
wire BRA6;
wire BRA6N;
wire BRA7;
wire BRA7N;
wire BRA8;
wire BRA8N;
wire BRA9;
wire BRA9N;
wire BRA10;
wire BRA10N;
wire BRA11;
wire BRA11N;
wire BRA12;
wire BRA12N;
wire BRA13;
wire BRA13N;
wire BRA14;
wire BRA14N;
wire BRB1;
wire BRB1N;
wire BRB2;
wire BRB2N;
wire BRB3;
wire BRB3N;
wire BRB4;
wire BRB4N;
wire BRB5;
wire BRB5N;
wire BRB6;
wire BRB6N;
wire BRB7;
wire BRB7N;
wire BRB8;
wire BRB8N;
wire BRB9;
wire BRB9N;
wire BRB10;
wire BRB10N;
wire BRB11;
wire BRB11N;
wire BRB12;
wire BRB12N;
wire BRB13;
wire BRB13N;
wire BRB14;
wire BRB14N;
wire CBRN;
wire CBRVN;
wire CDS;
wire CDSV;
wire CGPP;
wire CGPPN;
wire CGQP;
wire CGQPN;
wire CGRP;
wire CGRPN;
wire CLTR;
wire CNC;
wire COC;
wire CST;
wire CSTV;
wire DL31;
wire DL44;
wire DMA;
wire DMAN;
wire DMAVN;
wire DMB;
wire DMBN;
wire DMBVN;
wire DS1;
wire DS2;
wire DS3;
wire DS4;
wire DS1M;
wire DS2M;
wire DSS;
wire DSSN;
wire EAC;
wire EAP;
wire EBC;
wire EBP;
wire ED0X;
wire ED0Y;
wire EXM;
wire EXMV;
wire EXMN;
wire EXMVN;
wire EXMDN;
wire G1;
wire G1N;
wire G1V;
wire G1VN;
wire G2;
wire G2N;
wire G2V;
wire G2VN;
wire G3;
wire G3N;
wire G3V;
wire G3VN;
wire G4;
wire G4N;
wire G4V;
wire G4VN;
wire G5;
wire G5N;
wire G5V;
wire G5VN;
wire G6;
wire G6N;
wire G6V;
wire G6VN;
wire G7;
wire G7N;
wire G7V;
wire G7VN;
wire HOP;
wire HOPV;
wire HOPC1;
wire HOPC1V;
wire IMA;
wire IMAN;
wire IMAVN;
wire IMB;
wire IMBN;
wire IMBVN;
wire INHBS;
wire INHBSV;
wire INT;
wire INTV;
wire IS1;
wire IS2;
wire IS3;
wire IS4;
wire ISS;
wire ISSN;
wire M0SYNC;
wire M0SYNCV;
wire M1SYNC;
wire M1SYNCV;
wire M2SYNC;
wire M2SYNCV;
wire M3SYNC;
wire M3SYNCV;
wire M4SYNC;
wire M4SYNCV;
wire M5SYNC;
wire M5SYNCV;
wire M6SYNC;
wire M6SYNCV;
wire M7SYNC;
wire M7SYNCV;
wire MAO;
wire MAOV;
wire MBO;
wire MBOV;
wire MZO;
wire MZON;
wire MZOVN;
wire MTT;
wire MTTN;
wire MTTVN;
wire MFF;
wire MFFN;
wire MFFVN;
wire MSS;
wire MSSN;
wire MSSVN;
wire OP1;
wire OP1N;
wire OP1V;
wire OP1VN;
wire OP2;
wire OP2N;
wire OP2V;
wire OP2VN;
wire OP3;
wire OP3N;
wire OP3V;
wire OP3VN;
wire OP4;
wire OP4N;
wire OP4V;
wire OP4VN;
wire PAR;
wire PARV;
wire PA;
wire PAN;
wire PAV;
wire PAVN;
wire PB;
wire PBN;
wire PBV;
wire PBVN;
wire PC;
wire PCN;
wire PCV;
wire PCVN;
wire PIO;
wire PIOV;
wire RD;
wire RDV;
wire RDM;
wire RDMN;
wire RDMV;
wire RDMVN;
wire RECN;
wire RUN;
wire RUNN;
wire RUNV;
wire RUNVN;
wire SBRX;
wire SBRXV;
wire SBRY;
wire SBRYV;
wire SBRZ;
wire SBRZV;
wire SHF;
wire SHFV;
wire SRTR;
wire STO;
wire STON;
wire STOVN;
wire SYLC1;
wire SYLC1V;
wire SYNC;
wire SYNCN;
wire TA;
wire TBC;
wire TBCN;
wire TBCV;
wire TBCVN;
wire TBR;
wire TBRV;
wire TIME;
wire TR1;
wire TR1N;
wire TR1V;
wire TR2;
wire TR2V;
wire TR3;
wire TR3V;
wire TR4;
wire TR4V;
wire TR5;
wire TR5V;
wire TR6;
wire TR6V;
wire TR7;
wire TR7V;
wire TR8;
wire TR8V;
wire TR9;
wire TR9V;
wire TR9D;
wire TR9DN;
wire TR10;
wire TR10V;
wire TR11;
wire TR11V;
wire TR12;
wire TR12V;
wire TR13;
wire TR13V;
wire TRS;
wire TRSN;
wire TRSV;
wire TRSVN;
wire TTL;
wire TTLV;
wire UTR;
wire UTRV;
wire W1;
wire W3;
wire W5;
wire W6;
wire W7;
wire WN;
wire X2;
wire X3;
wire X4;
wire X5;
wire X8;
wire XN;
wire Y1;
wire Y3;
wire Y4;
wire Y5;
wire Y6;
wire Y7;
wire Y8;
wire YN;
wire Z1;
wire Z2;
wire Z3;
wire Z5;
wire Z7;
wire Z8;
wire ZN;

// TMR bypass for breadboard computer
assign AV = A;
assign AVN = AN;
assign A1V = A1;
assign A2V = A2;
assign A3V = A3;
assign A4V = A4;
assign A5V = A5;
assign A6V = A6;
assign A7V = A7;
assign A8V = A8;
assign A9V = A9;
assign ACC1V = ACC1;
assign ACC1VN = ACC1N;
assign AI1V = AI1;
assign AI1VN = AI1N;
assign AI2V = AI2;
assign AI2VN = AI2N;
assign AI3V = AI3;
assign AI3VN = AI3N;
assign AX0VN = AX0N;
assign AX1VN = AX1N;
assign AX2VN = AX2N;
assign AX3VN = AX3N;
assign AX4VN = AX4N;
assign AX5VN = AX5N;
assign AX6VN = AX6N;
assign AX7VN = AX7N;
assign AX00VN = AX00N;
assign AX10VN = AX10N;
assign AX20VN = AX20N;
assign AX30VN = AX30N;
assign AX40VN = AX40N;
assign AX50VN = AX50N;
assign AX60VN = AX60N;
assign AX70VN = AX70N;
assign AY0VN = AY0N;
assign AY1VN = AY1N;
assign AY2VN = AY2N;
assign AY3VN = AY3N;
assign AY4VN = AY4N;
assign AY5VN = AY5N;
assign AY6VN = AY6N;
assign AY7VN = AY7N;
assign AY00VN = AY00N;
assign AY10VN = AY10N;
assign AY20VN = AY20N;
assign AY30VN = AY30N;
assign AY40VN = AY40N;
assign AY50VN = AY50N;
assign AY60VN = AY60N;
assign AY70VN = AY70N;
assign CBRVN = CBRN;
assign CDSV = CDS;
assign CSTV = CST;
assign DMAVN = DMAN;
assign DMBVN = DMBN;
assign EXMV = EXM;
assign EXMVN = EXMN;
assign G1V = G1;
assign G1VN = G1N;
assign G2V = G2;
assign G2VN = G2N;
assign G3V = G3;
assign G3VN = G3N;
assign G4V = G4;
assign G4VN = G4N;
assign G5V = G5;
assign G5VN = G5N;
assign G6V = G6;
assign G6VN = G6N;
assign G7V = G7;
assign G7VN = G7N;
assign HOPV = HOP;
assign HOPC1V = HOPC1;
assign IMAVN = IMAN;
assign IMBVN = IMBN;
assign INHBSV = INHBS;
assign INTV = INT;
assign M0SYNCV = M0SYNC;
assign M1SYNCV = M1SYNC;
assign M2SYNCV = M2SYNC;
assign M3SYNCV = M3SYNC;
assign M4SYNCV = M4SYNC;
assign M5SYNCV = M5SYNC;
assign M6SYNCV = M6SYNC;
assign M7SYNCV = M7SYNC;
assign MAOV = MAO;
assign MBOV = MBO;
assign MZOVN = MZON;
assign MTTVN = MTTN;
assign MFFVN = MFFN;
assign MSSVN = MSSN;
assign OP1V = OP1;
assign OP1VN = OP1N;
assign OP2V = OP2;
assign OP2VN = OP2N;
assign OP3V = OP3;
assign OP3VN = OP3N;
assign OP4V = OP4;
assign OP4VN = OP4N;
assign PARV = PAR;
assign PAV = PA;
assign PAVN = PAN;
assign PBV = PB;
assign PBVN = PBN;
assign PCV = PC;
assign PCVN = PCN;
assign PIOV = PIO;
assign RDV = RD;
assign RDMV = RDM;
assign RDMVN = RDMN;
assign RUNV = RUN;
assign RUNVN = RUNN;
assign SBRXV = SBRX;
assign SBRYV = SBRY;
assign SBRZV = SBRZ;
assign SHFV = SHF;
assign STOVN = STON;
assign SYLC1V = SYLC1;
assign TBCV = TBC;
assign TBCVN = TBCN;
assign TBRV = TBR;
assign TR1V = TR1;
assign TR2V = TR2;
assign TR3V = TR3;
assign TR4V = TR4;
assign TR5V = TR5;
assign TR6V = TR6;
assign TR7V = TR7;
assign TR8V = TR8;
assign TR9V = TR9;
assign TR10V = TR10;
assign TR11V = TR11;
assign TR12V = TR12;
assign TR13V = TR13;
assign TRSV = TRS;
assign TRSVN = TRSN;
assign TTLV = TTL;
assign UTRV = UTR;

// Modules
clock_drivers a1a3(
    .BOP(BOP),
    .CGPP(CGPP),
    .CGPPN(CGPPN),
    .CGQP(CGQP),
    .CGQPN(CGQPN),
    .CGRP(CGRP),
    .CGRPN(CGRPN),
    .W1(W1),
    .W3(W3),
    .W5(W5),
    .W6(W6),
    .W7(W7),
    .WN(WN),
    .X2(X2),
    .X3(X3),
    .X4(X4),
    .X5(X5),
    .X8(X8),
    .XN(XN),
    .Y1(Y1),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7),
    .Y8(Y8),
    .YN(YN),
    .Z1(Z1),
    .Z2(Z2),
    .Z3(Z3),
    .Z5(Z5),
    .Z7(Z7),
    .Z8(Z8),
    .ZN(ZN)
);

delay_line a1a5(
    .V1(V1),
    .V5(V5),
    .BON(BO1N),
    .DL31(DL31),
    .DL44(DL44),
    .W7(W7),
    .WN(WN),
    .X3(X3),
    .XN(XN),
    .Y8(Y8),
    .YN(YN),
    .Z2(Z2),
    .ZN(ZN),
    .ACC0(ACC0),
    .ACC0N(ACC0N),
    .AI0(AI0),
    .AI0N(AI0N)
);

arithmetic a1a10(
    .V1(V1),
    .V4MOD3(V4MOD3),
    .A1V(A1V),
    .A2V(A2V),
    .A5V(A5V),
    .A6V(A6V),
    .ACC0(ACC0),
    .ACC1V(ACC1V),
    .AV(AV),
    .AVN(AVN),
    .AI0(AI0),
    .AI0N(AI0N),
    .AI1V(AI1V),
    .AI2V(AI2V),
    .AI2VN(AI2VN),
    .AI3V(AI3V),
    .AI3VN(AI3VN),
    .CSTV(CSTV),
    .DATAV(DATAV),
    .EXMVN(EXMVN),
    .G1V(G1V),
    .G1VN(G1VN),
    .G2VN(G2VN),
    .G3VN(G3VN),
    .G4V(G4V),
    .G5V(G5V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .INTV(INTV),
    .HOPC1V(HOPC1V),
    .HOYV(1'b0),
    .OP1V(OP1V),
    .OP1VN(OP1VN),
    .OP2V(OP2V),
    .OP2VN(OP2VN),
    .OP3V(OP3V),
    .OP3VN(OP3VN),
    .OP4V(OP4V),
    .OP4VN(OP4VN),
    .P3VN(1'b1),
    .PAV(PAV),
    .PAVN(PAVN),
    .PBV(PBV),
    .PBVN(PBVN),
    .PCV(PCV),
    .PCVN(PCVN),
    .PIOV(PIOV),
    .Q8V(1'b0),
    .SHFV(SHFV),
    .TBCV(TBCV),
    .TRSV(TRSV),
    .TRSVN(TRSVN),
    .TTLV(TTLV),
    .UTRV(UTRV),
    .VOYVN(1'b0),
    .W1(W1),
    .WN(WN),
    .X3(X3),
    .Y7(Y7),
    .Z3(Z3),
    .ZN(ZN),
    .ACC1(ACC1),
    .ACC1N(ACC1N),
    .AI1(AI1),
    .AI1N(AI1N),
    .AI2(AI2),
    .AI2N(AI2N),
    .AI3(AI3),
    .AI3N(AI3N),
    .DL31(DL31),
    .DL44(DL44),
    .UTR(UTR)
);

transfer_reg_2 a1a11(
    .V1(V1),
    .V4MOD2(V4MOD2),
    .AV(AV),
    .AVN(AVN),
    .A5V(A5V),
    .A6V(A6V),
    .AI2V(AI2V),
    .BRA10(BRA10),
    .BRA11(BRA11),
    .BRA12(BRA12),
    .BRA13(BRA13),
    .BRB10(BRB10),
    .BRB11(BRB11),
    .BRB12(BRB12),
    .BRB13(BRB13),
    .EXMVN(EXMVN),
    .G1V(G1V),
    .G1VN(G1VN),
    .G2V(G2V),
    .G2VN(G2VN),
    .G3V(G3V),
    .G3VN(G3VN),
    .G4VN(G4VN),
    .G5V(G5V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .HOPV(HOPV),
    .MAOV(MAOV),
    .MBOV(MBOV),
    .OP1VN(OP1VN),
    .OP2V(OP2V),
    .OP2VN(OP2VN),
    .OP3V(OP3V),
    .OP4V(OP4V),
    .PAV(PAV),
    .PBV(PBV),
    .PCV(PCV),
    .PCVN(PCVN),
    .RDV(RDV),
    .RUNV(RUNV),
    .RUNVN(RUNVN),
    .SBRX(SBRX),
    .SBRY(SBRY),
    .SBRZ(SBRZ),
    .SHFV(SHFV),
    .STOVN(STOVN),
    .TR1N(TR1N),
    .TR1V(TR1V),
    .TR9D(TR9D),
    .TR9DN(TR9DN),
    .W1(W1),
    .WN(WN),
    .X2(X2),
    .Y6(Y6),
    .YN(YN),
    .Z8(Z8),
    .ZN(ZN),
    .CBRN(CBRN),
    .CDS(CDS),
    .CLTR(CLTR),
    .PAR(PAR),
    .SRTR(SRTR),
    .STO(STO),
    .TBR(TBR),
    .TR10(TR10),
    .TR11(TR11),
    .TR12(TR12),
    .TR13(TR13),
    .TRS(TRS),
    .TRSN(TRSN)
);

op_code_reg a1a12(
    .V1(V1),
    .V4MOD5(V4MOD5),
    .A8V(A8V),
    .A9V(A9V),
    .CSTV(CSTV),
    .G1V(G1V),
    .G1VN(G1VN),
    .G2VN(G2VN),
    .G4VN(G4VN),
    .G5V(G5V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .HOYV(1'b0),
    .HOYVN(1'b1),
    .INTCV(INTCV),
    .OP2V(OP2V),
    .OP3V(OP3V),
    .OP4V(OP4V),
    .PAV(PAV),
    .PBVN(PBVN),
    .TR1V(TR1V),
    .TR2V(TR2V),
    .TR3V(TR3V),
    .TR4V(TR4V),
    .TR5V(TR5V),
    .TR6V(TR6V),
    .TR7V(TR7V),
    .TR8V(TR8V),
    .TR9V(TR9V),
    .TR10V(TR10V),
    .TR11V(TR11V),
    .TR12V(TR12V),
    .TR13V(TR13V),
    .VOYVN(1'b1),
    .W6(W6),
    .WN(WN),
    .X2(X2),
    .Y6(Y6),
    .Z2(Z2),
    .EXM(EXM),
    .EXMN(EXMN),
    .HOP(HOP),
    .INT(INT),
    .OP1(OP1),
    .OP1N(OP1N),
    .OP2(OP2),
    .OP2N(OP2N),
    .OP3(OP3),
    .OP3N(OP3N),
    .OP4(OP4),
    .OP4N(OP4N),
    .PIO(PIO),
    .SHF(SHF),
    .STON(STON),
    .TTL(TTL)
);

timing a1a13(
    .V1(V1),
    .V4MOD1(V4MOD1),

    .AV(AV),
    .AVN(AVN),
    .G1V(G1V),
    .G1VN(G1VN),
    .G2V(G2V),
    .G2VN(G2VN),
    .G3V(G3V),
    .G3VN(G3VN),
    .G4V(G4V),
    .G4VN(G4VN),
    .G5V(G5V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .PAV(PAV),
    .PAVN(PAVN),
    .PBV(PBV),
    .PBVN(PBVN),
    .PCV(PCV),
    .PCVN(PCVN),
    .W7(W7),
    .Y5(Y5),

    .A(A),
    .AN(AN),
    .G1(G1),
    .G1N(G1N),
    .G2(G2),
    .G2N(G2N),
    .G3(G3),
    .G3N(G3N),
    .G4(G4),
    .G4N(G4N),
    .G5(G5),
    .G5N(G5N),
    .G6(G6),
    .G6N(G6N),
    .G7(G7),
    .G7N(G7N),
    .PA(PA),
    .PAN(PAN),
    .PB(PB),
    .PBN(PBN),
    .PC(PC),
    .PCN(PCN),
    .TBC(TBC),
    .TBCN(TBCN)
);

mem_mod_reg_sect_ser a1a14(
    .V1(V1),
    .V4MOD6(V4MOD6),
    .AV(AV),
    .AVN(AVN),
    .CDSV(CDSV),
    .DS1(DS1),
    .DS2(DS2),
    .DS3(DS3),
    .DS4(DS4),
    .DS1M(DS1M),
    .DS2M(DS2M),
    .DSS(DSS),
    .DSSN(DSSN),
    .G1V(G1V),
    .G1VN(G1VN),
    .G2V(G2V),
    .G2VN(G2VN),
    .G3V(G3V),
    .G3VN(G3VN),
    .G4V(G4V),
    .G4VN(G4VN),
    .G5V(G5V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .HOPV(HOPV),
    .IS1(IS1),
    .IS2(IS2),
    .IS3(IS3),
    .IS4(IS4),
    .ISS(ISS),
    .ISSN(ISSN),
    .OP1V(OP1V),
    .PAV(PAV),
    .PBV(PBV),
    .PCV(PCV),
    .SYLC1V(SYLC1V),
    .W5(W5),
    .X2(X2),
    .XN(XN),
    .Y7(Y7),
    .Z8(Z8),
    .DMAN(DMAN),
    .DMBN(DMBN),
    .HOPC1(HOPC1),
    .IMAN(IMAN),
    .IMBN(IMBN),
    .MZON(MZON),
    .MTTN(MTTN),
    .MFFN(MFFN),
    .MSSN(MSSN)
);

mem_timing a1a15(
    .V1(V1),
    .V4MOD7(V4MOD7),
    .CSTN(CSTN),
    .DMA(DMA),
    .DMB(DMB),
    .EAC(EAC),
    .EAP(EAP),
    .EBC(EBC),
    .EBP(EBP),
    .EXMV(EXMV),
    .EXMVN(EXMVN),
    .G1V(G1V),
    .G1VN(G1VN),
    .G2V(G2V),
    .G2VN(G2VN),
    .G3V(G3V),
    .G3VN(G3VN),
    .G4V(G4V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .HALTV(HALTV),
    .HOPV(HOPV),
    .IMA(IMA),
    .IMB(IMB),
    .INTV(INTV),
    .OP1VN(OP1VN),
    .OP2VN(OP2VN),
    .OP3V(OP3V),
    .OP4V(OP4V),
    .MZOVN(MZOVN),
    .MTTVN(MTTVN),
    .MFFVN(MFFVN),
    .MSSVN(MSSVN),
    .PAV(PAV),
    .PAVN(PAVN),
    .PBV(PBV),
    .PBVN(PBVN),
    .PCV(PCV),
    .PCVN(PCVN),
    .RUNVN(RUNVN),
    .STOVN(STOVN),
    .TER(TER),
    .TR4V(TR4V),
    .TR13V(TR13V),
    .TTLV(TTLV),
    .UTRV(UTRV),
    .W3(W3),
    .X4(X4),
    .XN(XN),
    .Y1(Y1),
    .Y3(Y3),
    .Z5(Z5),
    .Z7(Z7),
    .ZN(ZN),
    .CNC(CNC),
    .COC(COC),
    .CST(CST),
    .INHBS(INHBS),
    .MAO(MAO),
    .MBO(MBO),
    .MZO(MZO),
    .MTT(MTT),
    .MFF(MFF),
    .MSS(MSS),
    .RD(RD),
    .RDM(RDM),
    .RDMN(RDMN),
    .RECN(RECN),
    .RUN(RUN),
    .RUNN(RUNN),
    .SYLC1(SYLC1),
    .SYNC(SYNC),
    .SYNCN(SYNCN),
    .TIME(TIME)
);

error_det_sw a1a16(
    .V1(V1),
    .V4MOD7(V4MOD7),
    .CNC(CNC),
    .COC(COC),
    .DMAVN(DMAVN),
    .DMBVN(DMBVN),
    .EAP(EAP),
    .EBP(EBP),
    .ED0X(ED0X),
    .ED0Y(ED0Y),
    .ED1X(1'b0),
    .ED1Y(1'b0),
    .ED2X(1'b0),
    .ED2Y(1'b0),
    .ED3X(1'b0),
    .ED3Y(1'b0),
    .ED4X(1'b0),
    .ED4Y(1'b0),
    .ED5X(1'b0),
    .ED5Y(1'b0),
    .ED6X(1'b0),
    .ED6Y(1'b0),
    .ED7X(1'b0),
    .ED7Y(1'b0),
    .HOPV(HOPV),
    .IMAVN(IMAVN),
    .IMBVN(IMBVN),
    .MZO(MZO),
    .MZOVN(MZOVN),
    .MTT(MTT),
    .MTTVN(MTTVN),
    .MFF(MFF),
    .MFFVN(MFFVN),
    .MSS(MSS),
    .MSSVN(MSSVN),
    .RECN(RECN),
    .RUNVN(RUNVN),
    .SYNC(SYNC),
    .SYNCN(SYNCN),
    .TIME(TIME),
    .W3(W3),
    .Y3(Y3),
    .YN(YN),
    .Z7(Z7),
    .DMA(DMA),
    .DMB(DMB),
    .EAC(EAC),
    .EBC(EBC),
    .IMA(IMA),
    .IMB(IMB),
    .M0SYNC(M0SYNC),
    .M1SYNC(M1SYNC),
    .M2SYNC(M2SYNC),
    .M3SYNC(M3SYNC),
    .M4SYNC(M4SYNC),
    .M5SYNC(M5SYNC),
    .M6SYNC(M6SYNC),
    .M7SYNC(M7SYNC)
);

mem_parity_check a1a17(
    .V1(V1),
    .BRA1(BRA1),
    .BRA1N(BRA1N),
    .BRA2(BRA2),
    .BRA2N(BRA2N),
    .BRA3(BRA3),
    .BRA3N(BRA3N),
    .BRA4(BRA4),
    .BRA4N(BRA4N),
    .BRA5(BRA5),
    .BRA5N(BRA5N),
    .BRA6(BRA6),
    .BRA6N(BRA6N),
    .BRA7(BRA7),
    .BRA7N(BRA7N),
    .BRA8(BRA8),
    .BRA8N(BRA8N),
    .BRA9(BRA9),
    .BRA9N(BRA9N),
    .BRA10(BRA10),
    .BRA10N(BRA10N),
    .BRA11(BRA11),
    .BRA11N(BRA11N),
    .BRA12(BRA12),
    .BRA12N(BRA12N),
    .BRA13(BRA13),
    .BRA13N(BRA13N),
    .BRA14(BRA14),
    .BRA14N(BRA14N),
    .BRB1(BRB1),
    .BRB1N(BRB1N),
    .BRB2(BRB2),
    .BRB2N(BRB2N),
    .BRB3(BRB3),
    .BRB3N(BRB3N),
    .BRB4(BRB4),
    .BRB4N(BRB4N),
    .BRB5(BRB5),
    .BRB5N(BRB5N),
    .BRB6(BRB6),
    .BRB6N(BRB6N),
    .BRB7(BRB7),
    .BRB7N(BRB7N),
    .BRB8(BRB8),
    .BRB8N(BRB8N),
    .BRB9(BRB9),
    .BRB9N(BRB9N),
    .BRB10(BRB10),
    .BRB10N(BRB10N),
    .BRB11(BRB11),
    .BRB11N(BRB11N),
    .BRB12(BRB12),
    .BRB12N(BRB12N),
    .BRB13(BRB13),
    .BRB13N(BRB13N),
    .BRB14(BRB14),
    .BRB14N(BRB14N),
    .EAP(EAP),
    .EBP(EBP)
);

transfer_reg_1 a1a18(
    .V1(V1),
    .V4MOD2(V4MOD2),
    .AI1V(AI1V),
    .AVN(AVN),
    .BRA1(BRA1),
    .BRA2(BRA2),
    .BRA3(BRA3),
    .BRA4(BRA4),
    .BRA5(BRA5),
    .BRA6(BRA6),
    .BRA7(BRA7),
    .BRA8(BRA8),
    .BRA9(BRA9),
    .BRB1(BRB1),
    .BRB2(BRB2),
    .BRB3(BRB3),
    .BRB4(BRB4),
    .BRB5(BRB5),
    .BRB6(BRB6),
    .BRB7(BRB7),
    .BRB8(BRB8),
    .BRB9(BRB9),
    .CLTR(CLTR),
    .DIN(DIN),
    .EXMVN(EXMVN),
    .G1V(G1V),
    .G1VN(G1VN),
    .G3VN(G3VN),
    .G5V(G5V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .INTV(INTV),
    .MAOV(MAOV),
    .MBOV(MBOV),
    .MD2V(1'b0),
    .PAV(PAV),
    .PBVN(PBVN),
    .PCV(PCV),
    .RUNV(RUNV),
    .RUNVN(RUNVN),
    .SRTR(SRTR),
    .STO(STO),
    .TBR(TBR),
    .W6(W6),
    .X5(X5),
    .X8(X8),
    .Y4(Y4),
    .Z2(Z2),
    .TR1(TR1),
    .TR1N(TR1N),
    .TR2(TR2),
    .TR3(TR3),
    .TR4(TR4),
    .TR5(TR5),
    .TR6(TR6),
    .TR7(TR7),
    .TR8(TR8),
    .TR9(TR9),
    .TR9D(TR9D),
    .TR9DN(TR9DN)
);

add_reg_x_decode a1a19(
    .V1(V1),
    .V4MOD6(V4MOD6),
    .AVN(AVN),
    .A1V(A1V),
    .A2V(A2V),
    .A3V(A3V),
    .A4V(A4V),
    .A5V(A5V),
    .A6V(A6V),
    .A7V(A7V),
    .A8V(A8V),
    .DS4(DS4),
    .EXMV(EXMV),
    .EXMVN(EXMVN),
    .EXMDN(EXMDN),
    .G1V(G1V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .IS4(IS4),
    .PAV(PAV),
    .TR1V(TR1V),
    .TR2V(TR2V),
    .TR3V(TR3V),
    .TR4V(TR4V),
    .TR5V(TR5V),
    .TR6V(TR6V),
    .TR7V(TR7V),
    .TR8V(TR8V),
    .TR9V(TR9V),
    .WN(WN),
    .X5(X5),
    .Y4(Y4),
    .Y5(Y5),
    .Z1(Z1),
    .Z2(Z2),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .A4(A4),
    .A5(A5),
    .A6(A6),
    .A7(A7),
    .A8(A8),
    .A9(A9),
    .AX0N(AX0N),
    .AX1N(AX1N),
    .AX2N(AX2N),
    .AX3N(AX3N),
    .AX4N(AX4N),
    .AX5N(AX5N),
    .AX6N(AX6N),
    .AX7N(AX7N),
    .AX00N(AX00N),
    .AX10N(AX10N),
    .AX20N(AX20N),
    .AX30N(AX30N),
    .AX40N(AX40N),
    .AX50N(AX50N),
    .AX60N(AX60N),
    .AX70N(AX70N),
    .AY0N(AY0N),
    .AY1N(AY1N),
    .AY2N(AY2N),
    .AY3N(AY3N),
    .AY4N(AY4N),
    .AY5N(AY5N),
    .AY6N(AY6N),
    .AY7N(AY7N),
    .TA(TA)
);

sect_reg_y_decode a1a20(
    .V1(V1),
    .V4MOD6(V4MOD6),
    .A9(A9),
    .BRA7(BRA7),
    .BRA8(BRA8),
    .BRB7(BRB7),
    .BRB8(BRB8),
    .CDSV(CDSV),
    .EXMV(EXMV),
    .EXMVN(EXMVN),
    .G1V(G1V),
    .G1VN(G1VN),
    .G2V(G2V),
    .G2VN(G2VN),
    .G3V(G3V),
    .G3VN(G3VN),
    .G4V(G4V),
    .G4VN(G4VN),
    .G5V(G5V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .HOPV(HOPV),
    .MAOV(MAOV),
    .MBOV(MBOV),
    .PAV(PAV),
    .PBV(PBV),
    .PCV(PCV),
    .TA(TA),
    .TBRV(TBRV),
    .TRSV(TRSV),
    .WN(WN),
    .X5(X5),
    .Y5(Y5),
    .Z1(Z1),
    .AY00N(AY00N),
    .AY10N(AY10N),
    .AY20N(AY20N),
    .AY30N(AY30N),
    .AY40N(AY40N),
    .AY50N(AY50N),
    .AY60N(AY60N),
    .AY70N(AY70N),
    .DS1(DS1),
    .DS2(DS2),
    .DS3(DS3),
    .DS4(DS4),
    .DS1M(DS1M),
    .DS2M(DS2M),
    .DSS(DSS),
    .DSSN(DSSN),
    .EXMDN(EXMDN),
    .IS1(IS1),
    .IS2(IS2),
    .IS3(IS3),
    .IS4(IS4),
    .ISS(ISS),
    .ISSN(ISSN)
);

osc_buf a4a11(
    .BO1(BO1),
    .BO1N(BO1N),
    .BO2(BO2),
    .BO2N(BO2N),
    .BO3(BO3),
    .BO3N(BO3N)
);

clock_logic a4a12(
    .V1(V1),
    .V5(V5),
    .BO1(BO1),
    .BO2(BO2),
    .BO3(BO3),

    .A1PP(CGPP),
    .A1PPN(CGPPN),
    .A1QP(CGQP),
    .A1QPN(CGQPN),
    .A1RP(CGRP),
    .A1RPN(CGRPN),
    .BO1P(BOP)
);

buffer_register_12 a5a9(
    .V1(V1),
    .AnCBRVN(CBRVN),
    .AnSBRYV(SBRYV),
    .AnSBRZV(SBRZV),
    .AnTR1V(TR1V),
    .AnTR2V(TR2V),
    .AnTR3V(TR3V),
    .AnTR4V(TR4V),
    .AnTR5V(TR5V),
    .AnTR7V(TR7V),
    .AnTR8V(TR8V),
    .AnTR10V(TR10V),
    .AnTR11V(TR11V),
    .AnTR13V(TR13V),
    .MaSA1(1'b0),
    .MaSA2(1'b0),
    .MaSA3(1'b0),
    .MaSA4(1'b0),
    .MaSA5(1'b0),
    .MaSA7(1'b0),
    .MaSA8(PAV & G1VN & G2V),
    .MaSA10(PAV & G1VN & G2V),
    .MaSA11(1'b0),
    .MaSA13(PAV & G1VN & G2V),
    .MbSA1(1'b0),
    .MbSA2(1'b0),
    .MbSA3(1'b0),
    .MbSA4(1'b0),
    .MbSA5(1'b0),
    .MbSA7(1'b0),
    .MbSA8(1'b0),
    .MbSA10(1'b0),
    .MbSA11(1'b0),
    .MbSA13(1'b0),
    .McSA1(1'b0),
    .McSA2(1'b0),
    .McSA3(1'b0),
    .McSA4(1'b0),
    .McSA5(1'b0),
    .McSA7(1'b0),
    .McSA8(1'b0),
    .McSA10(1'b0),
    .McSA11(1'b0),
    .McSA13(1'b0),
    .MdSA1(1'b0),
    .MdSA2(1'b0),
    .MdSA3(1'b0),
    .MdSA4(1'b0),
    .MdSA5(1'b0),
    .MdSA7(1'b0),
    .MdSA8(1'b0),
    .MdSA10(1'b0),
    .MdSA11(1'b0),
    .MdSA13(1'b0),
    .BRx1(BRA1),
    .BRx1N(BRA1N),
    .BRx2(BRA2),
    .BRx2N(BRA2N),
    .BRx3(BRA3),
    .BRx3N(BRA3N),
    .BRx4(BRA4),
    .BRx4N(BRA4N),
    .BRx5(BRA5),
    .BRx5N(BRA5N),
    .BRx7(BRA7),
    .BRx7N(BRA7N),
    .BRx8(BRA8),
    .BRx8N(BRA8N),
    .BRx10(BRA10),
    .BRx10N(BRA10N),
    .BRx11(BRA11),
    .BRx11N(BRA11N),
    .BRx13(BRA13),
    .BRx13N(BRA13N)
);

buffer_register_12 a5a10(
    .V1(V1),
    .AnCBRVN(CBRVN),
    .AnSBRYV(SBRYV),
    .AnSBRZV(SBRZV),
    .AnTR1V(TR1V),
    .AnTR2V(TR2V),
    .AnTR3V(TR3V),
    .AnTR4V(TR4V),
    .AnTR5V(TR5V),
    .AnTR7V(TR7V),
    .AnTR8V(TR8V),
    .AnTR10V(TR10V),
    .AnTR11V(TR11V),
    .AnTR13V(TR13V),
    .MaSA1(1'b0),
    .MaSA2(1'b0),
    .MaSA3(1'b0),
    .MaSA4(1'b0),
    .MaSA5(1'b0),
    .MaSA7(1'b0),
    .MaSA8(1'b0),
    .MaSA10(1'b0),
    .MaSA11(1'b0),
    .MaSA13(1'b0),
    .MbSA1(1'b0),
    .MbSA2(1'b0),
    .MbSA3(1'b0),
    .MbSA4(1'b0),
    .MbSA5(1'b0),
    .MbSA7(1'b0),
    .MbSA8(1'b0),
    .MbSA10(1'b0),
    .MbSA11(1'b0),
    .MbSA13(1'b0),
    .McSA1(1'b0),
    .McSA2(1'b0),
    .McSA3(1'b0),
    .McSA4(1'b0),
    .McSA5(1'b0),
    .McSA7(1'b0),
    .McSA8(1'b0),
    .McSA10(1'b0),
    .McSA11(1'b0),
    .McSA13(1'b0),
    .MdSA1(1'b0),
    .MdSA2(1'b0),
    .MdSA3(1'b0),
    .MdSA4(1'b0),
    .MdSA5(1'b0),
    .MdSA7(1'b0),
    .MdSA8(1'b0),
    .MdSA10(1'b0),
    .MdSA11(1'b0),
    .MdSA13(1'b0),
    .BRx1(BRB1),
    .BRx1N(BRB1N),
    .BRx2(BRB2),
    .BRx2N(BRB2N),
    .BRx3(BRB3),
    .BRx3N(BRB3N),
    .BRx4(BRB4),
    .BRx4N(BRB4N),
    .BRx5(BRB5),
    .BRx5N(BRB5N),
    .BRx7(BRB7),
    .BRx7N(BRB7N),
    .BRx8(BRB8),
    .BRx8N(BRB8N),
    .BRx10(BRB10),
    .BRx10N(BRB10N),
    .BRx11(BRB11),
    .BRx11N(BRB11N),
    .BRx13(BRB13),
    .BRx13N(BRB13N)
);

buffer_register_3 a5a11(
    .V1(V1),
    .A1CBRVN(CBRVN),
    .A2CBRVN(CBRVN),
    .A1PARV(PARV),
    .A2PARV(PARV),
    .A1SBRXV(SBRXV),
    .A2SBRXV(SBRXV),
    .A1TR6V(TR6V),
    .A2TR6V(TR6V),
    .A1TR9V(TR9V),
    .A2TR9V(TR9V),
    .A1TR12V(TR12V),
    .A2TR12V(TR12V),
    .M0SA6(1'b0),
    .M0SA9(1'b0),
    .M0SA12(PAV & G1VN & G2V),
    .M0SA14(PAV & G1VN & G2V),
    .M1SA6(1'b0),
    .M1SA9(1'b0),
    .M1SA12(1'b0),
    .M1SA14(1'b0),
    .M2SA6(1'b0),
    .M2SA9(1'b0),
    .M2SA12(1'b0),
    .M2SA14(1'b0),
    .M3SA6(1'b0),
    .M3SA9(1'b0),
    .M3SA12(1'b0),
    .M3SA14(1'b0),
    .M4SA6(1'b0),
    .M4SA9(1'b0),
    .M4SA12(1'b0),
    .M4SA14(1'b0),
    .M5SA6(1'b0),
    .M5SA9(1'b0),
    .M5SA12(1'b0),
    .M5SA14(1'b0),
    .M6SA6(1'b0),
    .M6SA9(1'b0),
    .M6SA12(1'b0),
    .M6SA14(1'b0),
    .M7SA6(1'b0),
    .M7SA9(1'b0),
    .M7SA12(1'b0),
    .M7SA14(1'b0),
    .BRA6(BRA6),
    .BRA6N(BRA6N),
    .BRA9(BRA9),
    .BRA9N(BRA9N),
    .BRA12(BRA12),
    .BRA12N(BRA12N),
    .BRA14(BRA14),
    .BRA14N(BRA14N),
    .BRB6(BRB6),
    .BRB6N(BRB6N),
    .BRB9(BRB9),
    .BRB9N(BRB9N),
    .BRB12(BRB12),
    .BRB12N(BRB12N),
    .BRB14(BRB14),
    .BRB14N(BRB14N)
);

memory a6a0(
    .AnAX0VN(AX0VN),
    .AnAX1VN(AX1VN),
    .AnAX2VN(AX2VN),
    .AnAX3VN(AX3VN),
    .AnAX4VN(AX4VN),
    .AnAX5VN(AX5VN),
    .AnAX6VN(AX6VN),
    .AnAX7VN(AX7VN),
    .AnAX00VN(AX00VN),
    .AnAX10VN(AX10VN),
    .AnAX20VN(AX20VN),
    .AnAX30VN(AX30VN),
    .AnAX40VN(AX40VN),
    .AnAX50VN(AX50VN),
    .AnAX60VN(AX60VN),
    .AnAX70VN(AX70VN),
    .AnAY0VN(AY0VN),
    .AnAY1VN(AY1VN),
    .AnAY2VN(AY2VN),
    .AnAY3VN(AY3VN),
    .AnAY4VN(AY4VN),
    .AnAY5VN(AY5VN),
    .AnAY6VN(AY6VN),
    .AnAY7VN(AY7VN),
    .AnAY00VN(AY00VN),
    .AnAY10VN(AY10VN),
    .AnAY20VN(AY20VN),
    .AnAY30VN(AY30VN),
    .AnAY40VN(AY40VN),
    .AnAY50VN(AY50VN),
    .AnAY60VN(AY60VN),
    .AnAY70VN(AY70VN),
    .AnINHBSV(INHBSV),
    .AnRDMV(RDMV),
    .AnRDMVN(RDMVN),
    .MmSYNCV(M0SYNCV),
    .EDmX(ED0X),
    .EDmY(ED0Y)
);


endmodule
`default_nettype wire
