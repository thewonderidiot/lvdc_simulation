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
reg V4MOD7 = 1;
reg V5 = 1;

// Backplane wires
wire A;
wire AN;
wire AV;
wire AVN;
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
wire BO1;
wire BO1N;
wire BO2;
wire BO2N;
wire BO3;
wire BO3N;
wire BOP;
wire BRA1;
wire BRA2;
wire BRA3;
wire BRA4;
wire BRA5;
wire BRA6;
wire BRA7;
wire BRA8;
wire BRA9;
wire BRA10;
wire BRA11;
wire BRA12;
wire BRA13;
wire BRA14;
wire BRB1;
wire BRB2;
wire BRB3;
wire BRB4;
wire BRB5;
wire BRB6;
wire BRB7;
wire BRB8;
wire BRB9;
wire BRB10;
wire BRB11;
wire BRB12;
wire BRB13;
wire BRB14;
wire CBRN;
wire CBRVN;
wire CGPP;
wire CGPPN;
wire CGQP;
wire CGQPN;
wire CGRP;
wire CGRPN;
wire CLTR;
wire CST;
wire CSTV;
wire DL31;
wire DL44;
wire EXM;
wire EXMN;
wire EXMV;
wire EXMVN;
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
wire INT;
wire INTV;
wire MAO;
wire MAOV;
wire MBO;
wire MBOV;
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
wire TBC;
wire TBCN;
wire TBCV;
wire TBCVN;
wire TBR;
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
wire Z2;
wire Z3;
wire Z5;
wire Z7;
wire Z8;
wire ZN;

// TMR bypass for breadboard computer
assign AV = A;
assign AVN = AN;
assign ACC1V = ACC1;
assign ACC1VN = ACC1N;
assign AI1V = AI1;
assign AI1VN = AI1N;
assign AI2V = AI2;
assign AI2VN = AI2N;
assign AI3V = AI3;
assign AI3VN = AI3N;
assign CBRVN = CBRN;
assign CSTV = CST;
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
assign INTV = INT;
assign MAOV = MAO;
assign MBOV = MBO;
assign OP1V = OP1;
assign OP1VN = OP1N;
assign OP2V = OP2;
assign OP2VN = OP2N;
assign OP3V = OP3;
assign OP3VN = OP3N;
assign OP4V = OP4;
assign OP4VN = OP4N;
assign PAV = PA;
assign PAVN = PAN;
assign PBV = PB;
assign PBVN = PBN;
assign PCV = PC;
assign PCVN = PCN;
assign PIOV = PIO;
assign RDV = RD;
assign RUNV = RUN;
assign RUNVN = RUNN;
assign SBRXV = SBRX;
assign SBRYV = SBRY;
assign SBRZV = SBRZ;
assign SHFV = SHF;
assign STOVN = STON;
assign TBCV = TBC;
assign TBCVN = TBCN;
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
    .A1V(1'b0),
    .A2V(1'b0),
    .A5V(1'b0),
    .A6V(1'b0),
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
    .HOPC1V(1'b0),
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
    .A5V(1'b0),
    .A6V(1'b0),
    .AI2V(AI2V),
    .BRA10(BRA10),
    .BRA11(BRA11),
    .BRA12(BRA12),
    .BRA13(BRA13),
    .BRB10(BRB10),
    .BRB11(BRB11),
    .BRB12(BRB12),
    .BRB13(BRB13),
    .CBRN(CBRN),
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
    .CLTR(CLTR),
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
    .A8V(1'b0),
    .A9V(1'b0),
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

mem_timing a1a15(
    .V1(V1),
    .V4MOD7(V4MOD7),
    .CSTN(CSTN),
    .DMA(1'b0),
    .DMB(1'b0),
    .EAC(1'b0),
    .EAP(1'b0),
    .EBC(1'b0),
    .EBP(1'b0),
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
    .IMA(1'b0),
    .IMB(1'b0),
    .INTV(INTV),
    .OP1VN(OP1VN),
    .OP2VN(OP2VN),
    .OP3V(OP3V),
    .OP4V(OP4V),
    .MFFVN(1'b1),
    .MSSVN(1'b1),
    .MTTVN(1'b1),
    .MZOVN(1'b1),
    .PAV(PAV),
    .PAVN(PAVN),
    .PBV(PBV),
    .PBVN(PBVN),
    .PCV(PCV),
    .PCVN(PCVN),
    .RD(RD),
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
    .CST(CST),
    .MAO(MAO),
    .MBO(MBO),
    .RUN(RUN),
    .RUNN(RUNN)
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
    .MaSA8(1'b0),
    .MaSA10(1'b0),
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
    .BRx2(BRA2),
    .BRx3(BRA3),
    .BRx4(BRA4),
    .BRx5(BRA5),
    .BRx7(BRA7),
    .BRx8(BRA8),
    .BRx10(BRA10),
    .BRx11(BRA11),
    .BRx13(BRA13)
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
    .BRx2(BRB2),
    .BRx3(BRB3),
    .BRx4(BRB4),
    .BRx5(BRB5),
    .BRx7(BRB7),
    .BRx8(BRB8),
    .BRx10(BRB10),
    .BRx11(BRB11),
    .BRx13(BRB13)
);

buffer_register_3 a5a11(
    .V1(V1),
    .A1CBRVN(CBRVN),
    .A2CBRVN(CBRVN),
    .A1PARV(1'b0),
    .A2PARV(1'b0),
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
    .M0SA12(1'b0),
    .M0SA14(1'b0),
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
    .BRA9(BRA9),
    .BRA12(BRA12),
    .BRA14(BRA14),
    .BRB6(BRB6),
    .BRB9(BRB9),
    .BRB12(BRB12),
    .BRB14(BRB14)
);

endmodule
`default_nettype wire
