`timescale 1ns/1ps
`default_nettype none

module lvda(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire A1V,
    input wire A2V,
    input wire A3V,
    input wire A4V,
    input wire A5V,
    input wire A6V,
    input wire A7V,
    input wire A8V,
    input wire A9V,
    input wire AI3V,
    input wire BO1N,
    input wire CST,
    input wire G5VN,
    input wire HLT,
    input wire PBVN,
    input wire PIOV,
    input wire TE1H,
    input wire TRSV,
    input wire WDA,
    input wire XDA,
    input wire YDA,
    input wire ZDA,

    output wire CSTN,
    output wire DATAV,
    output wire HALTV,
    output wire INTCV
);

// Power rails
reg V1 = 1;
reg V4 = 1;
reg V5 = 1;

// TEMPORARY UNDRIVEN
reg CCSL = 0;
reg CR1 = 0;
reg CR2 = 0;
reg CR3 = 0;
reg CR4 = 0;
reg CR5 = 0;
reg CR6 = 0;
reg CR7 = 0;
reg CR8 = 0;
reg CR9 = 0;
reg CR10 = 0;
reg CR11 = 0;
reg CR12 = 0;
reg CR13 = 0;
reg CR14 = 0;
reg CRCAV = 0;
reg CRI1 = 0;
reg CRI2 = 0;
reg DIAD = 0;
reg DIN1 = 0;
reg DIN2A = 0;
reg DIN2B = 0;
reg DIN3 = 0;
reg DIN4 = 0;
reg DIN5 = 0;
reg DIN6 = 0;
reg DIN7 = 0;
reg DIN8 = 0;
reg DIN9 = 0;
reg DIN10 = 0;
reg DIN11 = 0;
reg DIN12 = 0;
reg DIN13 = 0;
reg DIN14 = 0;
reg DIN15 = 0;
reg DIN16 = 0;
reg DIN17 = 0;
reg DIN18 = 0;
reg DIN19 = 0;
reg DIN20 = 0;
reg DIN21 = 0;
reg DIN22 = 0;
reg DIN23 = 0;
reg DIN24 = 0;
reg DIS1 = 0;
reg DIS2 = 0;
reg DIS3 = 0;
reg DIS4 = 0;
reg DIS5 = 0;
reg DIS6 = 0;
reg DIS7 = 0;
reg DIS8 = 0;
reg DISA = 0;
reg DOMS = 0;
reg DOMD = 0;
reg DOMDN = 1;
reg EM26N = 1;
reg EMA = 0;
reg GC1 = 0;
reg GC2 = 0;
reg GC3 = 0;
reg GC4 = 0;
reg GC5 = 0;
reg GC6 = 0;
reg GC7 = 0;
reg GC8 = 0;
reg GC9 = 0;
reg GC10 = 0;
reg GC11 = 0;
reg GC12 = 0;
reg GC13 = 0;
reg GC14 = 0;
reg ICR9 = 0;
reg ICSN = 1;
reg INTR1 = 0;
reg INTR2 = 0;
reg INTR3 = 0;
reg INTR4 = 0;
reg INTR5 = 0;
reg INTR6 = 0;
reg INTR7 = 0;
reg LGAV = 0;
reg LRR = 0;
reg LTRDN = 1;
reg OCINT = 0;
reg QBP = 0;
reg QCP = 0;
reg RBP = 0;
reg RCP = 0;
reg SSA = 0;
reg SSFB1 = 0;
reg SSFB2 = 0;
reg SSFB3 = 0;
reg SSFB4 = 0;
reg SSFB5 = 0;
reg SSFB6 = 0;
reg SSFB7 = 0;
reg SSFB8 = 0;
reg TAGS = 0;
reg TCWN = 1;
reg TS1 = 0;
reg TS2 = 0;
reg TS3 = 0;
reg TS4 = 0;
reg TS5 = 0;
reg TS6 = 0;
reg TS7 = 0;
reg TS8 = 0;
reg TS9 = 0;
reg TS10 = 0;
reg TSA = 0;

// Backplane wires
wire A1D;
wire A1DN;
wire A1DV;
wire A1DVN;
wire A2D;
wire A2DN;
wire A2DV;
wire A2DVN;
wire A3D;
wire A3DN;
wire A3DV;
wire A3DVN;
wire A4D;
wire A4DN;
wire A4DV;
wire A4DVN;
wire A5D;
wire A5DN;
wire A5DV;
wire A5DVN;
wire A6D;
wire A6DN;
wire A6DV;
wire A6DVN;
wire A7D;
wire A7DN;
wire A7DV;
wire A7DVN;
wire A8D;
wire A8DN;
wire A8DV;
wire A8DVN;
wire AD;
wire ADN;
wire ADV;
wire ADVN;
wire C1RD;
wire C1RDN;
wire C2R;
wire C2RN;
wire C2RD;
wire C2RDN;
wire C3R;
wire C3RN;
wire C3RD;
wire C4R;
wire C4RN;
wire C4RD;
wire C4RDN;
wire C4RDV;
wire CCFH;
wire CCFHN;
wire CCFHV;
wire CCFHVN;
wire CODG;
wire CODGV;
wire DARO;
wire DATA;
wire DINF;
wire DINFN;
wire DINFV;
wire DINFVN;
wire G1D;
wire G1DN;
wire G1DV;
wire G1DVN;
wire G2D;
wire G2DN;
wire G2DV;
wire G2DVN;
wire G3D;
wire G3DN;
wire G3DV;
wire G3DVN;
wire G4D;
wire G4DN;
wire G4DV;
wire G4DVN;
wire G5D;
wire G5DN;
wire G5DV;
wire G5DVN;
wire G6D;
wire G6DN;
wire G6DV;
wire G6DVN;
wire G7D;
wire G7DN;
wire G7DV;
wire G7DVN;
wire HALT;
wire ICSD;
wire ICSDN;
wire INTC;
wire ITS;
wire LPAG2N;
wire MLA;
wire MLAV;
wire ML1_2;
wire ML5;
wire ML6;
wire ML7;
wire ML8;
wire ML9;
wire ML10;
wire ML11;
wire ML12;
wire ML13;
wire ML14;
wire PAA;
wire PAAN;
wire PAAV;
wire PAAVN;
wire PABG1;
wire PABG1V;
wire PARS;
wire PARSV;
wire PBA;
wire PBAN;
wire PBAV;
wire PBAVN;
wire PBG2;
wire PBG2V;
wire PCA;
wire PCAN;
wire PCAV;
wire PCAVN;
wire PCG2;
wire PCG2V;
wire PIOD;
wire PIODV;
wire RECA;
wire RECAN;
wire RECAV;
wire RECAVN;
wire RECC;
wire RECCN;
wire RECCV;
wire RECCVN;
wire RESM;
wire RESMV;
wire REXC;
wire REXCN;
wire REXCV;
wire REXCVN;
wire SINT;
wire SSIT1;
wire TC2A;
wire TC2AN;
wire TC3A;
wire TC3AN;
wire TIN;
wire W2;
wire W3;
wire W4;
wire W7;
wire X1;
wire X2;
wire X3;
wire X4;
wire Y2;
wire Y3;
wire Y4;
wire Y5;
wire Y6;
wire Y7;
wire Z1;
wire Z2;
wire Z4;
wire Z5;
wire Z7;

// TMR bypass for breadboard LVDA
assign A1DV = A1D;
assign A1DVN = A1DN;
assign A2DV = A2D;
assign A2DVN = A2DN;
assign A3DV = A3D;
assign A3DVN = A3DN;
assign A4DV = A4D;
assign A4DVN = A4DN;
assign A5DV = A5D;
assign A5DVN = A5DN;
assign A6DV = A6D;
assign A6DVN = A6DN;
assign A7DV = A7D;
assign A7DVN = A7DN;
assign A8DV = A8D;
assign A8DVN = A8DN;
assign ADV = AD;
assign ADVN = ADN;
assign C4RDV = C4RD;
assign CCFHV = CCFH;
assign CCFHVN = CCFHN;
assign CODGV = CODG;
assign DATAV = DATA;
assign DINFV = DINF;
assign DINFVN = DINFN;
assign G1DV = G1D;
assign G1DVN = G1DN;
assign G2DV = G2D;
assign G2DVN = G2DN;
assign G3DV = G3D;
assign G3DVN = G3DN;
assign G4DV = G4D;
assign G4DVN = G4DN;
assign G5DV = G5D;
assign G5DVN = G5DN;
assign G6DV = G6D;
assign G6DVN = G6DN;
assign G7DV = G7D;
assign G7DVN = G7DN;
assign HALTV = HALT;
assign INTCV = INTC;
assign MLAV = MLA;
assign PAAV = PAA;
assign PABG1V = PABG1;
assign PARSV = PARS;
assign PBAV = PBA;
assign PBAVN = PBAN;
assign PBG2V = PBG2;
assign PCAV = PCA;
assign PCAVN = PCAN;
assign PCG2V = PCG2;
assign PIODV = PIOD;
assign RECAV = RECA;
assign RECAVN = RECAN;
assign RECCV = RECC;
assign RECCVN = RECCN;
assign RESMV = RESM;
assign REXCV = REXC;
assign REXCVN = REXCN;

// Modules
sd_sampler_3 a2a1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .C4RDN(C4RDN),
    .CR5(CR5),
    .CR6(CR6),
    .CRCAV(CRCAV),
    .DIAD(DIAD),
    .DIN1(DIN1),
    .DIN2A(DIN2A),
    .DIN2B(DIN2B),
    .DIN15(DIN15),
    .DIN16(DIN16),
    .G4DV(G4DV),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DVN(G6DVN),
    .GC5(GC5),
    .GC6(GC6),
    .ICSD(ICSD),
    .ICSDN(ICSDN),
    .MLAV(MLAV),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .SSA(SSA),
    .SSFB6(SSFB6),
    .SSFB7(SSFB7),
    .TS1(TS1),
    .TS2(TS2),
    .TSA(TSA),
    .W2(W2),
    .X2(X2),
    .Y7(Y7),
    .Z2(Z2),

    .ML5(ML5),
    .ML6(ML6)
);

sd_sampler_4 a2a3(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .C4RDN(C4RDN),
    .CR7(CR7),
    .CR8(CR8),
    .CRCAV(CRCAV),
    .DIAD(DIAD),
    .DIN3(DIN3),
    .DIN4(DIN4),
    .DIN17(DIN17),
    .DIN18(DIN18),
    .DIS1(DIS1),
    .DIS2(DIS2),
    .DISA(DISA),
    .G1DV(G1DV),
    .G6DV(G6DV),
    .G7DV(G7DV),
    .G7DVN(G7DVN),
    .GC7(GC7),
    .GC8(GC8),
    .ICSD(ICSD),
    .ICSDN(ICSDN),
    .MLAV(MLAV),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .SSA(SSA),
    .SSFB8(SSFB8),
    .TS3(TS3),
    .TS4(TS4),
    .TSA(TSA),
    .W2(W2),
    .X2(X2),
    .Y7(Y7),
    .Z2(Z2),
    
    .ML7(ML7),
    .ML8(ML8)
);

sd_sampler_5 a2a4(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .C4RDN(C4RDN),
    .CR9(CR9),
    .CR10(CR10),
    .CRCAV(CRCAV),
    .DIAD(DIAD),
    .DIN5(DIN5),
    .DIN6(DIN6),
    .DIN19(DIN19),
    .DIN20(DIN20),
    .DIS3(DIS3),
    .DIS4(DIS4),
    .DISA(DISA),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G2DVN(G2DVN),
    .G3DV(G3DV),
    .GC9(GC9),
    .GC10(GC10),
    .ICSD(ICSD),
    .ICSDN(ICSDN),
    .MLAV(MLAV),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .TS5(TS5),
    .TS6(TS6),
    .TSA(TSA),
    .W2(W2),
    .X1(X1),
    .Y7(Y7),
    .Z2(Z2),

    .ML9(ML9),
    .ML10(ML10)
);

sd_sampler_1 a2a5(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),
    .V4(V4),

    .A3DV(A3DV),
    .A4DV(A4DV),
    .A4DVN(A4DVN),
    .A5DV(A5DV),
    .A5DVN(A5DVN),
    .A6DVN(A6DVN),
    .A7DV(A7DV),
    .C1RD(C1RD),
    .C4RD(C4RD),
    .C4RDN(C4RDN),
    .CCSL(CCSL),
    .CODGV(CODGV),
    .CR3(CR3),
    .CR4(CR4),
    .CRCAV(CRCAV),
    .DARO(DARO),
    .DIAD(DIAD),
    .DIN13(DIN13),
    .DIN14(DIN14),
    .DOMS(DOMS),
    .EMA(EMA),
    .G1DV(G1DV),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G2DVN(G2DVN),
    .G3DV(G3DV),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .G7DVN(G7DVN),
    .GC3(GC3),
    .GC4(GC4),
    .ICSD(ICSD),
    .ICSDN(ICSDN),
    .ITS(ITS),
    .ML1_2(ML1_2),
    .ML5(ML5),
    .ML6(ML6),
    .ML7(ML7),
    .ML8(ML8),
    .ML9(ML9),
    .ML10(ML10),
    .ML11(ML11),
    .ML12(ML12),
    .ML13(ML13),
    .ML14(ML14),
    .MLAV(MLAV),
    .PAAV(PAAV),
    .PAAVN(PAAVN),
    .PARSV(PARSV),
    .PBAV(PBAV),
    .PCAV(PCAV),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .SSA(SSA),
    .SSFB4(SSFB4),
    .SSFB5(SSFB5),
    .TAGS(TAGS),
    .X2(X2),
    .Y2(Y2),
    .Z2(Z2),

    .DATA(DATA)
);

sd_sampler_6 a2a6(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .C4RDN(C4RDN),
    .CR11(CR11),
    .CR12(CR12),
    .CRCAV(CRCAV),
    .DIAD(DIAD),
    .DIN7(DIN7),
    .DIN8(DIN8),
    .DIN21(DIN21),
    .DIN22(DIN22),
    .DIS5(DIS5),
    .DIS6(DIS6),
    .DISA(DISA),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .G5DV(G5DV),
    .GC11(GC11),
    .GC12(GC12),
    .ICSN(ICSN),
    .MLAV(MLAV),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .TS7(TS7),
    .TS8(TS8),
    .TSA(TSA),
    .W2(W2),
    .X1(X1),
    .Y7(Y7),
    .Z2(Z2),

    .ICSD(ICSD),
    .ICSDN(ICSDN),
    .ML11(ML11),
    .ML12(ML12)
);

sd_sampler_7 a2a7(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .C4RDN(C4RDN),
    .CR13(CR13),
    .CR14(CR14),
    .CRCAV(CRCAV),
    .DIAD(DIAD),
    .DIN9(DIN9),
    .DIN10(DIN10),
    .DIN23(DIN23),
    .DIN24(DIN24),
    .DIS7(DIS7),
    .DIS8(DIS8),
    .DISA(DISA),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .GC13(GC13),
    .GC14(GC14),
    .ICSD(ICSD),
    .ICSDN(ICSDN),
    .MLAV(MLAV),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .SSA(SSA),
    .SSFB1(SSFB1),
    .TS9(TS9),
    .TS10(TS10),
    .TSA(TSA),
    .W2(W2),
    .X1(X1),
    .Y7(Y7),
    .Z2(Z2),

    .ML13(ML13),
    .ML14(ML14)
);

sd_sampler_2 a2a24(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .C4RDN(C4RDN),
    .CR1(CR1),
    .CR2(CR2),
    .CRCAV(CRCAV),
    .DIAD(DIAD),
    .DIN11(DIN11),
    .DIN12(DIN12),
    .G1DVN(G1DVN),
    .G7DVN(G7DVN),
    .GC1(GC1),
    .GC2(GC2),
    .ICSD(ICSD),
    .ICSDN(ICSDN),
    .MLAV(MLAV),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .SSA(SSA),
    .SSFB2(SSFB2),
    .SSFB3(SSFB3),
    .W2(W2),
    .X1(X1),
    .Y7(Y7),
    .Z2(Z2),

    .ML1_2(ML1_2)
);

address_decode_1 a3a5(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .V1(V1),
    .V4(V4),
    .A1V(A1V),
    .A1DV(A1DV),
    .A1DVN(A1DVN),
    .A2V(A2V),
    .A2DV(A2DV),
    .A2DVN(A2DVN),
    .A3V(A3V),
    .A3DVN(A3DVN),
    .A4V(A4V),
    .A4DVN(A4DVN),
    .A5V(A5V),
    .A5DVN(A5DVN),
    .A6V(A6V),
    .A6DV(A6DV),
    .A6DVN(A6DVN),
    .A7V(A7V),
    .A7DV(A7DV),
    .A7DVN(A7DVN),
    .A8V(A8V),
    .A8DV(A8DV),
    .A8DVN(A8DVN),
    .A9V(A9V),
    .ADV(ADV),
    .ADVN(ADVN),
    .AI3V(AI3V),
    .DINFV(DINFV),
    .DINFVN(DINFVN),
    .DOMD(DOMD),
    .DOMDN(DOMDN),
    .G1DVN(G1DVN),
    .G2DVN(G2DVN),
    .G3DV(G3DV),
    .G3DVN(G3DVN),
    .G4DVN(G4DVN),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DVN(G7DVN),
    .ICR9(ICR9),
    .LTRDN(LTRDN),
    .PAAV(PAAV),
    .PABG1V(PABG1V),
    .PARSV(PARSV),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .PCAVN(PCAVN),
    .PIOV(PIOV),
    .PIODV(PIODV),
    .RESMV(RESMV),
    .SINT(SINT),
    .TCWN(TCWN),
    .TRSV(TRSV),
    .W7(W7),
    .X3(X3),
    .Y3(Y3),
    .Z7(Z7),

    .A1D(A1D),
    .A1DN(A1DN),
    .A2D(A2D),
    .A2DN(A2DN),
    .A3D(A3D),
    .A3DN(A3DN),
    .A4D(A4D),
    .A4DN(A4DN),
    .A5D(A5D),
    .A5DN(A5DN),
    .A6D(A6D),
    .A6DN(A6DN),
    .A7D(A7D),
    .A7DN(A7DN),
    .A8D(A8D),
    .A8DN(A8DN),
    .CODG(CODG),
    .DARO(DARO),
    .DINF(DINF),
    .DINFN(DINFN),
    .MLA(MLA),
    .PARS(PARS),
    .PIOD(PIOD)
);

timing_2 a3a8(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .V1(V1),
    .V4(V4),
    .ADV(ADV),
    .ADVN(ADVN),
    .CCFHV(CCFHV),
    .CCFHVN(CCFHVN),
    .G1DV(G1DV),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G2DVN(G2DVN),
    .G3DV(G3DV),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .G5VN(G5VN),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .G7DVN(G7DVN),
    .PAAV(PAAV),
    .PAAVN(PAAVN),
    .PBVN(PBVN),
    .PBAV(PBAV),
    .PBAVN(PBAVN),
    .PCAV(PCAV),
    .PCAVN(PCAVN),
    .PCG2V(PCG2V),
    .RECAV(RECAV),
    .RECAVN(RECAVN),
    .RECCV(RECCV),
    .RECCVN(RECCVN),
    .RESMV(RESMV),
    .REXCV(REXCV),
    .REXCVN(REXCVN),
    .W3(W3),
    .X3(X3),
    .Y3(Y3),
    .Z1(Z1),

    .AD(AD),
    .ADN(ADN),
    .CCFH(CCFH),
    .CCFHN(CCFHN),
    .G1D(G1D),
    .G1DN(G1DN),
    .G2D(G2D),
    .G2DN(G2DN),
    .G3D(G3D),
    .G3DN(G3DN),
    .G4D(G4D),
    .G4DN(G4DN),
    .G5D(G5D),
    .G5DN(G5DN),
    .G6D(G6D),
    .G6DN(G6DN),
    .G7D(G7D),
    .G7DN(G7DN),
    .PAA(PAA),
    .PABG1(PABG1),
    .PBA(PBA),
    .PBAN(PBAN),
    .PBG2(PBG2),
    .PCA(PCA),
    .PCAN(PCAN),
    .PCG2(PCG2),
    .RECA(RECA),
    .RECAN(RECAN),
    .RECC(RECC),
    .RECCN(RECCN),
    .RESM(RESM),
    .REXC(REXC),
    .REXCN(REXCN)
);

timing_1 a3a11(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .WDA(WDA),
    .XDA(XDA),
    .YDA(YDA),
    .ZDA(ZDA),

    .W2(W2),
    .W3(W3),
    .W4(W4),
    .W7(W7),
    .X1(X1),
    .X2(X2),
    .X3(X3),
    .X4(X4),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7),
    .Z1(Z1),
    .Z2(Z2),
    .Z4(Z4),
    .Z5(Z5),
    .Z7(Z7)
);

int_countdn_proc_1 a4a5(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .A1DVN(A1DVN),
    .A2DV(A2DV),
    .A3DVN(A3DVN),
    .A4DV(A4DV),
    .A4DVN(A4DVN),
    .A5DV(A5DV),
    .A6DV(A6DV),
    .A6DVN(A6DVN),
    .A7DVN(A7DVN),
    .ADV(ADV),
    .ADVN(ADVN),
    .C2R(C2R),
    .C2RN(C2RN),
    .C3R(C3R),
    .C3RN(C3RN),
    .G1DV(G1DV),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G3DV(G3DV),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DVN(G6DVN),
    .LGAV(LGAV),
    .LPAG2N(LPAG2N),
    .PABG1V(PABG1V),
    .PAAV(PAAV),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .RECAV(RECAV),
    .RECCV(RECCV),
    .W4(W4),
    .X4(X4),
    .Y5(Y5),
    .Z5(Z5),

    .C2RD(C2RD),
    .C2RDN(C2RDN),
    .C3RD(C3RD),
    .ITS(ITS),
    .PAAVN(PAAVN),
    .SSIT1(SSIT1),
    .TC2A(TC2A),
    .TC2AN(TC2AN),
    .TIN(TIN)
);

processor_store a4a12(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),
    .V5(V5),

    .BON(BO1N),
    .C2RD(C2RD),
    .C2RDN(C2RDN),
    .C3RD(C3RD),
    .C4RD(C4RD),
    .C4RDV(C4RDV),
    .DINFV(DINFV),
    .ITS(ITS),
    .PAAV(PAAV),
    .PAAVN(PAAVN),
    .SINT(SINT),
    .TC2A(TC2A),
    .TC2AN(TC2AN),
    .TC3A(TC3A),
    .TC3AN(TC3AN),
    .W4(W4),
    .X4(X4),
    .Y5(Y5),
    .Y6(Y6),
    .Z4(Z4),

    .C1RD(C1RD),
    .C1RDN(C1RDN),
    .C2R(C2R),
    .C2RN(C2RN),
    .C3R(C3R),
    .C3RN(C3RN),
    .C4R(C4R),
    .C4RN(C4RN)
);

int_countdn_proc_2 a4a18(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),
    .V4(V4),

    .A1DVN(A1DVN),
    .A2DV(A2DV),
    .A3DV(A3DV),
    .A3DVN(A3DVN),
    .A4DV(A4DV),
    .A5DV(A5DV),
    .A6DV(A6DV),
    .A7DVN(A7DVN),
    .ADVN(ADVN),
    .C1RD(C1RD),
    .C1RDN(C1RDN),
    .C2RDN(C2RDN),
    .C3RN(C3RN),
    .C3RD(C3RD),
    .CRI1(CRI1),
    .CRI2(CRI2),
    .EM26N(EM26N),
    .G1DV(G1DV),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G2DVN(G2DVN),
    .G3DV(G3DV),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .G7DVN(G7DVN),
    .ICSDN(ICSDN),
    .INTR1(INTR1),
    .INTR2(INTR2),
    .INTR3(INTR3),
    .INTR4(INTR4),
    .INTR5(INTR5),
    .INTR6(INTR6),
    .INTR7(INTR7),
    .LGAV(LGAV),
    .LRR(LRR),
    .OCINT(OCINT),
    .PAAV(PAAV),
    .PABG1V(PABG1V),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .SSIT1(SSIT1),
    .TC2A(TC2A),
    .TIN(TIN),
    .W4(W4),
    .X4(X4),
    .Y4(Y4),
    .Y5(Y5),
    .Z4(Z4),

    .INTC(INTC),
    .LPAG2N(LPAG2N),
    .SINT(SINT),
    .TC3A(TC3A),
    .TC3AN(TC3AN)
);

accel_time_proc_1 a4a24(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),
    .V4(V4),

    .ADV(ADV),
    .ADVN(ADVN),
    .C4R(C4R),
    .C4RN(C4RN),
    .CST(CST),
    .G2DV(G2DV),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .HLT(HLT),
    .PAAVN(PAAVN),
    .PABG1V(PABG1V),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .QBP(QBP),
    .QCP(QCP),
    .RBP(RBP),
    .RCP(RCP),
    .RECAV(RECAV),
    .RECAVN(RECAVN),
    .RECCV(RECCV),
    .RECCVN(RECCVN),
    .TE1H(TE1H),
    .W4(W4),
    .X4(X4),
    .Y5(Y5),
    .Z5(Z5),

    .C4RD(C4RD),
    .C4RDN(C4RDN),
    .CSTN(CSTN),
    .HALT(HALT)
);

endmodule
`default_nettype wire
