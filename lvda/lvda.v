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
    input wire CR1,
    input wire CR2,
    input wire CR3,
    input wire CR4,
    input wire CR5,
    input wire CR6,
    input wire CR7,
    input wire CR8,
    input wire CR9,
    input wire CR10,
    input wire CR11,
    input wire CR12,
    input wire CR13,
    input wire CR14,
    input wire CRI1X,
    input wire CRI2X,
    input wire CST,
    input wire DIN1X,
    input wire DIN2AX,
    input wire DIN2BX,
    input wire DIN3X,
    input wire DIN4X,
    input wire DIN5X,
    input wire DIN6X,
    input wire DIN7X,
    input wire DIN8X,
    input wire DIN9X,
    input wire DIN10X,
    input wire DIN11X,
    input wire DIN12X,
    input wire DIN13X,
    input wire DIN14X,
    input wire DIN15X,
    input wire DIN16X,
    input wire DIN17X,
    input wire DIN18X,
    input wire DIN19X,
    input wire DIN20X,
    input wire DIN21X,
    input wire DIN22X,
    input wire DIN23X,
    input wire DIN24X,
    input wire DIS1X,
    input wire DIS2X,
    input wire DIS3X,
    input wire DIS4X,
    input wire DIS5X,
    input wire DIS6X,
    input wire DIS7X,
    input wire DIS8X,
    input wire EAMV,
    input wire EBMV,
    input wire G5VN,
    input wire GC1,
    input wire GC2,
    input wire GC3,
    input wire GC4,
    input wire GC5,
    input wire GC6,
    input wire GC7,
    input wire GC8,
    input wire GC9,
    input wire GC10,
    input wire GC11,
    input wire GC12,
    input wire GC13,
    input wire GC14,
    input wire GCSYNCX,
    input wire HLTX,
    input wire ICSN,
    input wire INTR1X,
    input wire INTR2X,
    input wire INTR3X,
    input wire INTR4X,
    input wire INTR5X,
    input wire INTR6X,
    input wire INTR7X,
    input wire OCINT,
    input wire PBVN,
    input wire PIOV,
    input wire SSFB1X,
    input wire SSFB2X,
    input wire SSFB3X,
    input wire SSFB4X,
    input wire SSFB5X,
    input wire SSFB6X,
    input wire SSFB7X,
    input wire SSFB8X,
    input wire TE1H,
    input wire TLCV,
    input wire TRSV,
    input wire TS1,
    input wire TS2,
    input wire TS3,
    input wire TS4,
    input wire TS5,
    input wire TS6,
    input wire TS7,
    input wire TS8,
    input wire TS9,
    input wire TS10,
    input wire TSYNC,
    input wire WDA,
    input wire XDA,
    input wire YDA,
    input wire ZDA,

    output wire BRD1,
    output wire BRD2,
    output wire BRD3,
    output wire BRD4,
    output wire BRD5,
    output wire BRD6,
    output wire BRD7,
    output wire BRD8,
    output wire BRD9,
    output wire BRD10,
    output wire BRD11,
    output wire BRD12,
    output wire BRD13,
    output wire BRD14,
    output wire BRD15,
    output wire BRD16,
    output wire BRD17,
    output wire BRD18,
    output wire BRD19,
    output wire BRD20,
    output wire BRD21,
    output wire BRD22,
    output wire BRD23,
    output wire BRD24,
    output wire BRD25,
    output wire BRD26,
    output wire CSTN,
    output wire DATAV,
    output wire HALTV,
    output wire INTCV,
    output wire RTR1,
    output wire RTR2,
    output wire RTR3,
    output wire RTR4,
    output wire RTR5,
    output wire TAGR1,
    output wire TAGR2,
    output wire TAGR3,
    output wire TAGR4,
    output wire TAGR5,
    output wire TAGR6,
    output wire TAGR7,
    output wire TAGR8
);

// Power supplies
reg V1 = 1;
reg V4 = 1;
reg V5 = 1;

reg PS1A = 0;
reg PS1B = 0;
reg PS2A = 0;
reg PS2B = 0;
reg PS3A = 0;
reg PS3B = 0;
reg PS4A = 0;
reg PS4B = 0;
reg PS5A = 0;
reg PS5B = 0;
reg PS6A = 0;
reg PS6B = 0;

// TEMPORARY UNDRIVEN
reg DDI1A = 0;
reg DDI1B = 0;
reg DDI1C = 0;
reg DDI2A = 0;
reg DDI2B = 0;
reg DDI3B = 0;
reg DDI4 = 0;
reg DO1 = 0;
reg DO2 = 0;
reg DO3 = 0;
reg DO4 = 0;
reg DO5 = 0;
reg DO6 = 0;
reg DO7 = 0;
reg DO8 = 0;
reg DO9 = 0;
reg DO10 = 0;
reg DO11 = 0;
reg DO12 = 0;
reg DO13 = 0;
reg LRR = 0;
reg QBP = 0;
reg QCP = 0;
reg RBP = 0;
reg RCP = 0;
reg SCB = 0;
reg SS1 = 0;
reg SS2 = 0;
reg SS3 = 0;
reg SS4 = 0;
reg SS5 = 0;
reg SS6 = 0;
reg SS7 = 0;
reg SS8 = 0;
reg SS9 = 0;
reg SS10 = 0;
reg SS11 = 0;
reg SS12 = 0;
reg SS13 = 0;

// Resolver Processor
reg A3CR = 0;
reg A4CR = 0;
reg A5CR = 0;
reg A6CR = 0;
reg A7CR = 0;
reg CCSL = 0;
reg CES1 = 0;
reg CES2 = 0;
reg CES3 = 0;
reg CES4 = 0;
reg CES5 = 0;
reg CES6 = 0;
reg CES7 = 0;
reg CES8 = 0;
reg CES9 = 0;
reg CES10 = 0;
reg CES11 = 0;
reg CES12 = 0;
reg CES13 = 0;
reg CES14 = 0;
reg CES15 = 0;
reg CES16 = 0;
reg CES17 = 0;
reg CES18 = 0;
reg CES19 = 0;

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
wire A9D;
wire A9DV;
wire AD;
wire ADN;
wire ADV;
wire ADVN;
wire BDI;
wire BRR1;
wire C1GT1;
wire C1GT2;
wire C1GT3;
wire C1RD;
wire C1RDN;
wire C2GT1;
wire C2GT2;
wire C2GT3;
wire C2R;
wire C2RN;
wire C2RD;
wire C2RDN;
wire C3GT1;
wire C3GT2;
wire C3GT3;
wire C3R;
wire C3RN;
wire C3RD;
wire C4GT1;
wire C4GT2;
wire C4GT3;
wire C4R;
wire C4RN;
wire C4RD;
wire C4RDN;
wire C4RDV;
wire CCFH;
wire CCFHN;
wire CCFHV;
wire CCFHVN;
wire CODE;
wire CODG;
wire CODGV;
wire CODGN;
wire CRCA;
wire CRCAV;
wire CRI1;
wire CRI2;
wire DAINF;
wire DARA;
wire DARAV;
wire DARO;
wire DATA;
wire DC1S;
wire DC1SN;
wire DC2S;
wire DC2SN;
wire DC3R;
wire DC3S;
wire DC3SN;
wire DC4R;
wire DC4S;
wire DC4SN;
wire DCALN;
wire DDC1R;
wire DDC2R;
wire DIAD;
wire DIN;
wire DINN;
wire DIN1;
wire DIN2A;
wire DIN2B;
wire DIN3;
wire DIN4;
wire DIN5;
wire DIN6;
wire DIN7;
wire DIN8;
wire DIN9;
wire DIN10;
wire DIN11;
wire DIN12;
wire DIN13;
wire DIN14;
wire DIN15;
wire DIN16;
wire DIN17;
wire DIN18;
wire DIN19;
wire DIN20;
wire DIN21;
wire DIN22;
wire DIN23;
wire DIN24;
wire DINF;
wire DINFN;
wire DINFV;
wire DINFVN;
wire DIS1;
wire DIS2;
wire DIS3;
wire DIS4;
wire DIS5;
wire DIS6;
wire DIS7;
wire DIS8;
wire DISA;
wire DLS;
wire DM2B;
wire DM3A;
wire DM3B;
wire DM4A;
wire DM4B;
wire DM5A;
wire DM5B;
wire DM6A;
wire DM6B;
wire DM7A;
wire DM7B;
wire DM8A;
wire DM9A;
wire DM10A;
wire DM11A;
wire DM12A;
wire DM13A;
wire DM14A;
wire DOMC1;
wire DOMC1N;
wire DOMC2;
wire DOMC2N;
wire DOMS;
wire DOMD;
wire DOMDN;
wire DOR;
wire DOR1H;
wire DOR2H;
wire DOR3H;
wire DOR4H;
wire DOR5H;
wire DOR6H;
wire DOR7H;
wire DOR8H;
wire DOR9H;
wire DOR10H;
wire DOR11H;
wire DOR12H;
wire DOR13H;
wire DOS;
wire DSD;
wire DT1;
wire ECSA;
wire ECSB;
wire EM1N;
wire EM2N;
wire EM3N;
wire EM4N;
wire EM5N;
wire EM6N;
wire EM7N;
wire EM8N;
wire EM9N;
wire EM10N;
wire EM11N;
wire EM12N;
wire EM13N;
wire EM14N;
wire EM15N;
wire EM16N;
wire EM17N;
wire EM18N;
wire EM19N;
wire EM20N;
wire EM21N;
wire EM22N;
wire EM23N;
wire EM24N;
wire EM25N;
wire EM26N;
wire EMA;
wire EMRG1;
wire EMRG2;
wire EMRG3;
wire EMRG4;
wire ETCC;
wire ETCCN;
wire ETCR;
wire ETCRN;
wire ETTS;
wire ETTSN;
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
wire GCSYNC;
wire HALT;
wire HLT;
wire ICR;
wire ICRV;
wire ICR1;
wire ICR1N;
wire ICR2N;
wire ICR3N;
wire ICR4N;
wire ICR5N;
wire ICR6N;
wire ICR7N;
wire ICR8N;
wire ICR9;
wire ICR9N;
wire ICR10N;
wire ICR11N;
wire ICR12N;
wire ICR13N;
wire ICSD;
wire ICSDN;
wire INFO;
wire INFOV;
wire INTC;
wire INTR1;
wire INTR2;
wire INTR3;
wire INTR4;
wire INTR5;
wire INTR6;
wire INTR7;
wire ITS;
wire LGA;
wire LGAN;
wire LGAV;
wire LPAG2N;
wire LTR;
wire LTRV;
wire LTRDN;
wire MBYPD;
wire MCFT1;
wire MCFT2;
wire MCFT3;
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
wire MODA;
wire MODR1;
wire MODR2;
wire MODR3;
wire MODRR;
wire OCR;
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
wire PCINF;
wire PCINFV;
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
wire SSA;
wire SSDO;
wire SSFB1;
wire SSFB2;
wire SSFB3;
wire SSFB4;
wire SSFB5;
wire SSFB6;
wire SSFB7;
wire SSFB8;
wire SSR;
wire SSRV;
wire SSIT1;
wire TAGS;
wire TC2A;
wire TC2AN;
wire TC3A;
wire TC3AN;
wire TCWN;
wire TIN;
wire TLM;
wire TRP;
wire TSA;
wire W1;
wire W2;
wire W3;
wire W4;
wire W5;
wire W6;
wire W7;
wire W8;
wire X1;
wire X2;
wire X3;
wire X4;
wire X5;
wire X6;
wire X7;
wire X8;
wire Y1;
wire Y2;
wire Y3;
wire Y4;
wire Y5;
wire Y6;
wire Y7;
wire Y8;
wire Z1;
wire Z2;
wire Z3;
wire Z4;
wire Z5;
wire Z6;
wire Z7;
wire Z8;

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
assign A9DV = A9D;
assign ADV = AD;
assign ADVN = ADN;
assign C4RDV = C4RD;
assign CCFHV = CCFH;
assign CCFHVN = CCFHN;
assign CODGV = CODG;
assign CRCAV = CRCA;
assign DARAV = DARA;
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
assign ICRV = ICR;
assign INFOV = INFO;
assign INTCV = INTC;
assign LGAV = LGA;
assign LTRV = LTR;
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
assign PCINFV = PCINF;
assign PIODV = PIOD;
assign RECAV = RECA;
assign RECAVN = RECAN;
assign RECCV = RECC;
assign RECCVN = RECCN;
assign RESMV = RESM;
assign REXCV = REXC;
assign REXCVN = REXCN;
assign SSRV = SSR;

// Modules
disc_op_regs a1a4(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .DOR(DOR),
    .DOS(DOS),
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
    .INFOV(INFOV),
    .PAAV(PAAV),
    .PABG1V(PABG1V),
    .PCINFV(PCINFV),
    .Y1(Y1),

    .DOR1H(DOR1H),
    .DOR2H(DOR2H),
    .DOR3H(DOR3H),
    .DOR4H(DOR4H),
    .DOR5H(DOR5H),
    .DOR6H(DOR6H),
    .DOR7H(DOR7H),
    .DOR8H(DOR8H),
    .DOR9H(DOR9H),
    .DOR10H(DOR10H),
    .DOR11H(DOR11H),
    .DOR12H(DOR12H),
    .DOR13H(DOR13H)
);

transient_prot a1a19(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .CRI1X(CRI1X),
    .CRI2X(CRI2X),
    .DIN1X(DIN1X),
    .DIN2AX(DIN2AX),
    .DIN2BX(DIN2BX),
    .DIN3X(DIN3X),
    .DIN10X(DIN10X),
    .DIN11X(DIN11X),
    .DIN12X(DIN12X),
    .DIN13X(DIN13X),
    .DIN14X(DIN14X),
    .DIN15X(DIN15X),
    .DIN16X(DIN16X),
    .DIN17X(DIN17X),
    .DIN18X(DIN18X),
    .DIN19X(DIN19X),
    .DIN20X(DIN20X),
    .DIN21X(DIN21X),
    .DIN22X(DIN22X),
    .DIN23X(DIN23X),
    .DIN24X(DIN24X),

    .CRI1(CRI1),
    .CRI2(CRI2),
    .DIN1(DIN1),
    .DIN2A(DIN2A),
    .DIN2B(DIN2B),
    .DIN3(DIN3),
    .DIN10(DIN10),
    .DIN11(DIN11),
    .DIN12(DIN12),
    .DIN13(DIN13),
    .DIN14(DIN14),
    .DIN15(DIN15),
    .DIN16(DIN16),
    .DIN17(DIN17),
    .DIN18(DIN18),
    .DIN19(DIN19),
    .DIN20(DIN20),
    .DIN21(DIN21),
    .DIN22(DIN22),
    .DIN23(DIN23),
    .DIN24(DIN24)
);

dis_tran_prot a1a23(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .DIN4X(DIN4X),
    .DIN5X(DIN5X),
    .DIN6X(DIN6X),
    .DIN7X(DIN7X),
    .DIN8X(DIN8X),
    .DIN9X(DIN9X),
    .DIS1X(DIS1X),
    .DIS2X(DIS2X),
    .DIS3X(DIS3X),
    .DIS4X(DIS4X),
    .DIS5X(DIS5X),
    .DIS6X(DIS6X),
    .DIS7X(DIS7X),
    .DIS8X(DIS8X),
    .GCSYNCX(GCSYNCX),
    .HLTX(HLTX),
    .INTR1X(INTR1X),
    .INTR2X(INTR2X),
    .INTR3X(INTR3X),
    .INTR4X(INTR4X),
    .INTR5X(INTR5X),
    .INTR6X(INTR6X),
    .INTR7X(INTR7X),
    .SSFB1X(SSFB1X),
    .SSFB2X(SSFB2X),
    .SSFB3X(SSFB3X),
    .SSFB4X(SSFB4X),
    .SSFB5X(SSFB5X),
    .SSFB6X(SSFB6X),
    .SSFB7X(SSFB7X),
    .SSFB8X(SSFB8X),

    .DIN4(DIN4),
    .DIN5(DIN5),
    .DIN6(DIN6),
    .DIN7(DIN7),
    .DIN8(DIN8),
    .DIN9(DIN9),
    .DIS1(DIS1),
    .DIS2(DIS2),
    .DIS3(DIS3),
    .DIS4(DIS4),
    .DIS5(DIS5),
    .DIS6(DIS6),
    .DIS7(DIS7),
    .DIS8(DIS8),
    .GCSYNC(GCSYNC),
    .HLT(HLT),
    .INTR1(INTR1),
    .INTR2(INTR2),
    .INTR3(INTR3),
    .INTR4(INTR4),
    .INTR5(INTR5),
    .INTR6(INTR6),
    .INTR7(INTR7),
    .SSFB1(SSFB1),
    .SSFB2(SSFB2),
    .SSFB3(SSFB3),
    .SSFB4(SSFB4),
    .SSFB5(SSFB5),
    .SSFB6(SSFB6),
    .SSFB7(SSFB7),
    .SSFB8(SSFB8)
);

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

    .DATA(DATA),
    .MBYPD(MBYPD)
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

sd_sampler_2 a2a8(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .C1GT1(C1GT1),
    .C1GT2(C1GT2),
    .C1GT3(C1GT3),
    .C2GT1(C2GT1),
    .C2GT2(C2GT2),
    .C2GT3(C2GT3),
    .C3GT1(C3GT1),
    .C3GT2(C3GT2),
    .C3GT3(C3GT3),
    .C4GT1(C4GT1),
    .C4GT2(C4GT2),
    .C4GT3(C4GT3),
    .C4RDN(C4RDN),
    .CR1(CR1),
    .CR2(CR2),
    .CRCAV(CRCAV),
    .DIAD(DIAD),
    .DIN11(DIN11),
    .DIN12(DIN12),
    .DLS(DLS),
    .DOMC1(DOMC1),
    .DOMC1N(DOMC1N),
    .ETCR(ETCR),
    .ETCRN(ETCRN),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G3DVN(G3DVN),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .G7DVN(G7DVN),
    .GC1(GC1),
    .GC2(GC2),
    .ICSD(ICSD),
    .ICSDN(ICSDN),
    .LGAV(LGAV),
    .LGAN(LGAN),
    .MLAV(MLAV),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .SSA(SSA),
    .SSFB2(SSFB2),
    .SSFB3(SSFB3),
    .W2(W2),
    .X1(X1),
    .X7(X7),
    .Y6(Y6),
    .Y7(Y7),
    .Z2(Z2),
    .Z6(Z6),

    .DC1S(DC1S),
    .DC1SN(DC1SN),
    .DC2S(DC2S),
    .DC2SN(DC2SN),
    .DC3S(DC3S),
    .DC3SN(DC3SN),
    .DC4S(DC4S),
    .DC4SN(DC4SN),
    .ML1_2(ML1_2)
);

telem_control a2a9(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .A4DV(A4DV),
    .A5DV(A5DV),
    .C1RD(C1RD),
    .C3RN(C3RN),
    .CODE(CODE),
    .CODGV(CODGV),
    .DAINF(DAINF),
    .DATAV(DATAV),
    .DC1S(DC1S),
    .DC2S(DC2S),
    .DC3S(DC3S),
    .DC4S(DC4S),
    .DLS(DLS),
    .DOMC1(DOMC1),
    .DOMC1N(DOMC1N),
    .DOMC2(DOMC2),
    .DOMC2N(DOMC2N),
    .DOR(DOR),
    .DSD(DSD),
    .ETCR(ETCR),
    .ETCRN(ETCRN),
    .G2DV(G2DV),
    .G3DVN(G3DVN),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .GCSYNC(GCSYNC),
    .ICRV(ICRV),
    .ICR1(ICR1),
    .ICR1N(ICR1N),
    .LGAV(LGAV),
    .MBYPD(MBYPD),
    .MCFT1(MCFT1),
    .MCFT2(MCFT2),
    .MCFT3(MCFT3),
    .OCR(OCR),
    .PAAV(PAAV),
    .PABG1V(PABG1V),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .SSDO(SSDO),
    .SSRV(SSRV),
    .TLM(TLM),
    .TSYNC(TSYNC),
    .W1(W1),
    .X8(X8),
    .Y8(Y8),
    .Z1(Z1),

    .C1GT1(C1GT1),
    .C1GT2(C1GT2),
    .C1GT3(C1GT3),
    .C2GT1(C2GT1),
    .C2GT2(C2GT2),
    .C2GT3(C2GT3),
    .C3GT1(C3GT1),
    .C3GT2(C3GT2),
    .C3GT3(C3GT3),
    .C4GT1(C4GT1),
    .C4GT2(C4GT2),
    .C4GT3(C4GT3),
    .DIN(DIN),
    .DINN(DINN),
    .DT1(DT1),
    .TCWN(TCWN),
    .TRP(TRP)
);

telem_storage a2a20(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),
    .V5(V5),

    .A1DV(A1DV),
    .A2DV(A2DV),
    .ADVN(ADVN),
    .BON(BO1N),
    .CODGV(CODGV),
    .DC1S(DC1S),
    .DC1SN(DC1SN),
    .DC2S(DC2S),
    .DC2SN(DC2SN),
    .DC3S(DC3S),
    .DC3SN(DC3SN),
    .DC4S(DC4S),
    .DC4SN(DC4SN),
    .DIN(DIN),
    .DINN(DINN),
    .DT1(DT1),
    .ETCR(ETCR),
    .G1DV(G1DV),
    .G2DV(G2DV),
    .G2DVN(G2DVN),
    .G3DV(G3DV),
    .G4DVN(G4DVN),
    .MCFT1(MCFT1),
    .PAAV(PAAV),
    .PAAVN(PAAVN),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .W4(W4),
    .X7(X7),
    .Y8(Y8),
    .Z6(Z6),
    .Z7(Z7),

    .DC3R(DC3R),
    .DC4R(DC4R),
    .DDC1R(DDC1R),
    .DDC2R(DDC2R),
    .DLS(DLS)
);

id_sampler_1 a2a22(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .ADV(ADV),
    .ADVN(ADVN),
    .CES1(CES1),
    .CES2(CES2),
    .CES3(CES3),
    .CES4(CES4),
    .CES15(CES15),
    .CES16(CES16),
    .CODE(CODE),
    .DINFVN(DINFVN),
    .DO2(DO2),
    .DO3(DO3),
    .DO4(DO4),
    .DO5(DO5),
    .EM1N(EM1N),
    .EM2N(EM2N),
    .EM3N(EM3N),
    .EM4N(EM4N),
    .EM15N(EM15N),
    .EM16N(EM16N),
    .EM17N(EM17N),
    .EM18N(EM18N),
    .EMA(EMA),
    .ETCRN(ETCRN),
    .ETTS(ETTS),
    .G2DV(G2DV),
    .G3DV(G3DV),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .G7DVN(G7DVN),
    .ICRV(ICRV),
    .ICR2N(ICR2N),
    .ICR3N(ICR3N),
    .ICR4N(ICR4N),
    .ICR5N(ICR5N),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .PCG2V(PCG2V),
    .PS1A(PS1A),
    .PS1B(PS1B),
    .PS2A(PS2A),
    .PS2B(PS2B),
    .RESMV(RESMV),
    .SS1(SS1),
    .SS2(SS2),
    .SS3(SS3),
    .SS4(SS4),
    .SSDO(SSDO),
    .W5(W5),
    .X5(X5),
    .Y7(Y7),
    .Y8(Y8),
    .Z6(Z6),
    .Z8(Z8),

    .DM2B(DM2B),
    .DM3A(DM3A),
    .DM3B(DM3B),
    .DM4A(DM4A),
    .DM5A(DM5A),
    .DM6A(DM6A)
);

int_cont_regs a2a23(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .A3DV(A3DV),
    .A3DVN(A3DVN),
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
    .ICRV(ICRV),
    .INFOV(INFOV),
    .PAAVN(PAAVN),
    .PBAV(PBAV),
    .PCAV(PCAV),
    .PCINFV(PCINFV),
    .Z3(Z3),

    .ICR1(ICR1),
    .ICR1N(ICR1N),
    .ICR2N(ICR2N),
    .ICR3N(ICR3N),
    .ICR4N(ICR4N),
    .ICR5N(ICR5N),
    .ICR6N(ICR6N),
    .ICR7N(ICR7N),
    .ICR8N(ICR8N),
    .ICR9(ICR9),
    .ICR9N(ICR9N),
    .ICR10N(ICR10N),
    .ICR11N(ICR11N),
    .ICR12N(ICR12N),
    .ICR13N(ICR13N)
);

id_sampler_4 a2a31(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .ADV(ADV),
    .ADVN(ADVN),
    .C1GT1(C1GT1),
    .C1GT2(C1GT2),
    .C1GT3(C1GT3),
    .C2GT1(C2GT1),
    .C2GT2(C2GT2),
    .C2GT3(C2GT3),
    .C3GT1(C3GT1),
    .C3GT2(C3GT2),
    .C3GT3(C3GT3),
    .C4GT1(C4GT1),
    .C4GT2(C4GT2),
    .C4GT3(C4GT3),
    .CES13(CES13),
    .CES14(CES14),
    .CODE(CODE),
    .DC3R(DC3R),
    .DC4R(DC4R),
    .DDC1R(DDC1R),
    .DDC2R(DDC2R),
    .DM2B(DM2B),
    .DM3A(DM3A),
    .DM3B(DM3B),
    .DM4A(DM4A),
    .DM4B(DM4B),
    .DM5A(DM5A),
    .DM5B(DM5B),
    .DM6A(DM6A),
    .DM6B(DM6B),
    .DM7A(DM7A),
    .DM7B(DM7B),
    .DM8A(DM8A),
    .DM9A(DM9A),
    .DM10A(DM10A),
    .DM11A(DM11A),
    .DM12A(DM12A),
    .DM13A(DM13A),
    .DM14A(DM14A),
    .DO1(DO1),
    .EM13N(EM13N),
    .EM14N(EM14N),
    .EMA(EMA),
    .ETCCN(ETCCN),
    .ETCR(ETCR),
    .ETCRN(ETCRN),
    .ETTS(ETTS),
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
    .ICRV(ICRV),
    .ICR1N(ICR1N),
    .PAAVN(PAAVN),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .SS13(SS13),
    .SSDO(SSDO),
    .W8(W8),
    .X8(X8),
    .Y6(Y6),
    .Z2(Z2),
    .Z5(Z5),
    .Z7(Z7),
    .Z8(Z8),

    .DCALN(DCALN),
    .DOMC1(DOMC1),
    .DOMC1N(DOMC1N),
    .DOMC2(DOMC2),
    .DOMC2N(DOMC2N),
    .DOMD(DOMD),
    .DOMDN(DOMDN),
    .DOMS(DOMS),
    .DSD(DSD)
);

id_sampler_2 a2a32(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .A3DVN(A3DVN),
    .A4DVN(A4DVN),
    .A5DVN(A5DVN),
    .CES9(CES9),
    .CES10(CES10),
    .CES11(CES11),
    .CES12(CES12),
    .CES19(CES19),
    .CODE(CODE),
    .DO10(DO10),
    .DO11(DO11),
    .DO12(DO12),
    .DO13(DO13),
    .EM9N(EM9N),
    .EM10N(EM10N),
    .EM11N(EM11N),
    .EM12N(EM12N),
    .EM23N(EM23N),
    .EM24N(EM24N),
    .EM25N(EM25N),
    .EM26N(EM26N),
    .EMA(EMA),
    .ETCCN(ETCCN),
    .ETTS(ETTS),
    .G1DVN(G1DVN),
    .G2DVN(G2DVN),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .ICRV(ICRV),
    .ICR10N(ICR10N),
    .ICR11N(ICR11N),
    .ICR12N(ICR12N),
    .ICR13N(ICR13N),
    .LGAV(LGAV),
    .PAAV(PAAV),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .PCG2V(PCG2V),
    .PS5A(PS5A),
    .PS5B(PS5B),
    .PS6A(PS6A),
    .PS6B(PS6B),
    .RESMV(RESMV),
    .SS9(SS9),
    .SS10(SS10),
    .SS11(SS11),
    .SS12(SS12),
    .SSDO(SSDO),
    .W5(W5),
    .X5(X5),
    .Y6(Y6),
    .Z8(Z8),

    .DM6B(DM6B),
    .DM7B(DM7B),
    .DM11A(DM11A),
    .DM12A(DM12A),
    .DM13A(DM13A),
    .DM14A(DM14A)
);

id_sampler_3 a2a33(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .ADV(ADV),
    .ADVN(ADVN),
    .CES5(CES5),
    .CES6(CES6),
    .CES7(CES7),
    .CES8(CES8),
    .CES17(CES17),
    .CES18(CES18),
    .CODE(CODE),
    .DINFVN(DINFVN),
    .DO6(DO6),
    .DO7(DO7),
    .DO8(DO8),
    .DO9(DO9),
    .ECSA(ECSA),
    .ECSB(ECSB),
    .EM5N(EM5N),
    .EM6N(EM6N),
    .EM7N(EM7N),
    .EM8N(EM8N),
    .EM19N(EM19N),
    .EM20N(EM20N),
    .EM21N(EM21N),
    .EM22N(EM22N),
    .EMA(EMA),
    .ETCRN(ETCRN),
    .ETTS(ETTS),
    .G1DV(G1DV),
    .G2DV(G2DV),
    .G1DVN(G1DVN),
    .G2DVN(G2DVN),
    .G3DV(G3DV),
    .G4DV(G4DV),
    .G6DV(G6DV),
    .G7DV(G7DV),
    .ICRV(ICRV),
    .ICR6N(ICR6N),
    .ICR7N(ICR7N),
    .ICR8N(ICR8N),
    .ICR9N(ICR9N),
    .PAAV(PAAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .PCG2V(PCG2V),
    .PS3A(PS3A),
    .PS3B(PS3B),
    .PS4A(PS4A),
    .PS4B(PS4B),
    .RESMV(RESMV),
    .SS5(SS5),
    .SS6(SS6),
    .SS7(SS7),
    .SS8(SS8),
    .SSDO(SSDO),
    .W5(W5),
    .X5(X5),
    .X8(X8),
    .Y1(Y1),
    .Y7(Y7),
    .Z4(Z4),
    .Z8(Z8),

    .DM4B(DM4B),
    .DM5B(DM5B),
    .DM7A(DM7A),
    .DM8A(DM8A),
    .DM9A(DM9A),
    .DM10A(DM10A)
);

address_decode_2 a3a3(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),
    .V4(V4),

    .A1DVN(A1DVN),
    .A2DV(A2DV),
    .A3DV(A3DV),
    .A3DVN(A3DVN),
    .A4DV(A4DV),
    .A4DVN(A4DVN),
    .A5DV(A5DV),
    .A5DVN(A5DVN),
    .A6DV(A6DV),
    .A6DVN(A6DVN),
    .A7DV(A7DV),
    .A7DVN(A7DVN),
    .DARAV(DARAV),
    .DARO(DARO),
    .G1DV(G1DV),
    .G2DVN(G2DVN),
    .PARSV(PARSV),
    .PBAV(PBAV),
    .PCAVN(PCAVN),
    .W8(W8),
    .X3(X3),
    .Y8(Y8),

    .CRCA(CRCA),
    .DARA(DARA),
    .DIAD(DIAD),
    .DISA(DISA),
    .DOR(DOR),
    .DOS(DOS),
    .ICR(ICR),
    .LGA(LGA),
    .LGAN(LGAN),
    .SSA(SSA),
    .SSR(SSR),
    .TSA(TSA)
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
    .A9D(A9D),
    .CODG(CODG),
    .CODGN(CODGN),
    .DAINF(DAINF),
    .DARO(DARO),
    .DINF(DINF),
    .DINFN(DINFN),
    .INFO(INFO),
    .LTR(LTR),
    .MLA(MLA),
    .OCR(OCR),
    .PARS(PARS),
    .PCINF(PCINF),
    .PIOD(PIOD),
    .TLM(TLM)
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

    .W1(W1),
    .W2(W2),
    .W3(W3),
    .W4(W4),
    .W5(W5),
    .W6(W6),
    .W7(W7),
    .W8(W8),
    .X1(X1),
    .X2(X2),
    .X3(X3),
    .X4(X4),
    .X5(X5),
    .X6(X6),
    .X7(X7),
    .X8(X8),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7),
    .Y8(Y8),
    .Z1(Z1),
    .Z2(Z2),
    .Z3(Z3),
    .Z4(Z4),
    .Z5(Z5),
    .Z6(Z6),
    .Z7(Z7),
    .Z8(Z8)
);

address_decode_3 a3a24(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .A3DV(A3DV),
    .A3DVN(A3DVN),
    .A4DV(A4DV),
    .A4DVN(A4DVN),
    .A5DV(A5DV),
    .A5DVN(A5DVN),
    .A6DV(A6DV),
    .A6DVN(A6DVN),
    .A7DVN(A7DVN),
    .ADV(ADV),
    .DARA(DARA),
    .DARO(DARO),
    .DCALN(DCALN),
    .ETCC(ETCC),
    .ETCCN(ETCCN),
    .ETTS(ETTS),
    .ETTSN(ETTSN),
    .G1DV(G1DV),
    .G3DVN(G3DVN),
    .LGAV(LGAV),
    .LRR(LRR),
    .LTRV(LTRV),
    .PARSV(PARSV),
    .PBAV(PBAV),
    .PCG2V(PCG2V),
    .RESMV(RESMV),
    .TRP(TRP),
    .W8(W8),
    .X3(X3),
    .Y8(Y8),

    .CODE(CODE),
    .EMA(EMA),
    .LTRDN(LTRDN),
    .MODA(MODA),
    .SSDO(SSDO)
);

err_proc_tag_ms a4a3(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .A1DV(A1DV),
    .A1DVN(A1DVN),
    .A2DV(A2DV),
    .A2DVN(A2DVN),
    .A3CR(A3CR),
    .A3DV(A3DV),
    .A4CR(A4CR),
    .A4DV(A4DV),
    .A5CR(A5CR),
    .A5DV(A5DV),
    .A6CR(A6CR),
    .A6DV(A6DV),
    .A7CR(A7CR),
    .A7DV(A7DV),
    .A8DV(A8DV),
    .A9DV(A9DV),
    .ADV(ADV),
    .ADVN(ADVN),
    .BRR1(BRR1),
    .CODGV(CODGV),
    .CODGN(CODGN),
    .EMA(EMA),
    .EMRG1(EMRG1),
    .EMRG2(EMRG2),
    .EMRG3(EMRG3),
    .EMRG4(EMRG4),
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
    .INFOV(INFOV),
    .LTRV(LTRV),
    .ML5(ML5),
    .ML6(ML6),
    .ML7(ML7),
    .ML8(ML8),
    .ML9(ML9),
    .MODR1(MODR1),
    .MODR2(MODR2),
    .MODR3(MODR3),
    .PAAV(PAAV),
    .PAAVN(PAAVN),
    .PBAV(PBAV),
    .PCAV(PCAV),
    .PCAVN(PCAVN),
    .RESMV(RESMV),
    .TCWN(TCWN),
    .TLM(TLM),
    .W4(W4),
    .W6(W6),
    .X6(X6),
    .Y4(Y4),
    .Y8(Y8),
    .Z4(Z4),
    .Z6(Z6),

    .ECSA(ECSA),
    .ECSB(ECSB),
    .ETCC(ETCC),
    .ETCCN(ETCCN),
    .ETCR(ETCR),
    .ETCRN(ETCRN),
    .ETTS(ETTS),
    .ETTSN(ETTSN),
    .TAGS(TAGS)
);

tag_real_tm_regs a4a4(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .A1DV(A1DV),
    .A3DV(A3DV),
    .A4DV(A4DV),
    .A5DV(A5DV),
    .A6DV(A6DV),
    .A7DV(A7DV),
    .A8DV(A8DV),
    .A9DV(A9DV),
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
    .INFOV(INFOV),
    .LTRV(LTRV),
    .MODR1(MODR1),
    .MODR2(MODR2),
    .MODR3(MODR3),
    .PAAV(PAAV),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAVN(PCAVN),
    .PCG2V(PCG2V),
    .TCWN(TCWN),
    .TLM(TLM),
    .W4(W4),
    .X4(X4),
    .Y6(Y6),
    .Z4(Z4),
    .Z6(Z6),

    .BDI(BDI),
    .RTR1(RTR1),
    .RTR2(RTR2),
    .RTR3(RTR3),
    .RTR4(RTR4),
    .RTR5(RTR5),
    .TAGR1(TAGR1),
    .TAGR2(TAGR2),
    .TAGR3(TAGR3),
    .TAGR4(TAGR4),
    .TAGR5(TAGR5),
    .TAGR6(TAGR6),
    .TAGR7(TAGR7),
    .TAGR8(TAGR8)
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

error_proc a4a7(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .BDI(BDI),
    .DDI1A(DDI1A),
    .DDI1B(DDI1B),
    .DDI1C(DDI1C),
    .DDI2A(DDI2A),
    .DDI2B(DDI2B),
    .DDI3B(DDI3B),
    .DDI4(DDI4),
    .EAMV(EAMV),
    .EBMV(EBMV),
    .EMA(EMA),
    .G3DV(G3DV),
    .G4DVN(G4DVN),
    .PBAV(PBAV),
    .SCB(SCB),
    .TLCV(TLCV),

    .EM1N(EM1N),
    .EM2N(EM2N),
    .EM3N(EM3N),
    .EM4N(EM4N),
    .EM5N(EM5N),
    .EM6N(EM6N),
    .EM7N(EM7N),
    .EM8N(EM8N),
    .EM9N(EM9N),
    .EM10N(EM10N),
    .EM11N(EM11N),
    .EM12N(EM12N),
    .EM13N(EM13N),
    .EM14N(EM14N),
    .EM15N(EM15N),
    .EM16N(EM16N),
    .EM17N(EM17N),
    .EM18N(EM18N),
    .EM19N(EM19N),
    .EM20N(EM20N),
    .EM21N(EM21N),
    .EM22N(EM22N),
    .EM23N(EM23N),
    .EM24N(EM24N),
    .EM25N(EM25N),
    .EM26N(EM26N),
    .EMRG1(EMRG1),
    .EMRG2(EMRG2),
    .EMRG3(EMRG3),
    .EMRG4(EMRG4)
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
    .MCFT1(MCFT1),
    .MCFT2(MCFT2),
    .MCFT3(MCFT3),
    .SINT(SINT),
    .TC3A(TC3A),
    .TC3AN(TC3AN)
);

mode_buff_regs a4a19(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

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
    .INFOV(INFOV),
    .LTRV(LTRV),
    .MODA(MODA),
    .PAAV(PAAV),
    .PAAVN(PAAVN),
    .PABG1V(PABG1V),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .PCINFV(PCINFV),
    .Y4(Y4),
    .Y6(Y6),
    .Z4(Z4),

    .BRD5(BRD5),
    .BRD6(BRD6),
    .BRD11(BRD11),
    .BRD12(BRD12),
    .BRD13(BRD13),
    .BRD14(BRD14),
    .BRD15(BRD15),
    .BRD16(BRD16),
    .BRD17(BRD17),
    .BRD18(BRD18),
    .BRD19(BRD19),
    .BRD20(BRD20),
    .BRD21(BRD21),
    .BRD22(BRD22),
    .BRD23(BRD23),
    .BRD24(BRD24),
    .BRD25(BRD25),
    .BRD26(BRD26),
    .BRR1(BRR1),
    .MODRR(MODRR)
);

buff_regs_1 a4a20(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .BRR1(BRR1),
    .G1DV(G1DV),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .G7DVN(G7DVN),
    .INFOV(INFOV),
    .LTRV(LTRV),
    .MODA(MODA),
    .MODRR(MODRR),
    .PBAV(PBAV),
    .PCAV(PCAV),
    .Y6(Y6),
    .Z4(Z4),

    .BRD3(BRD3),
    .BRD4(BRD4),
    .BRD9(BRD9),
    .BRD10(BRD10),
    .MODR3(MODR3)
);

buff_regs_2 a4a21(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .BRR1(BRR1),
    .G4DVN(G4DVN),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DVN(G7DVN),
    .INFOV(INFOV),
    .LTRV(LTRV),
    .MODA(MODA),
    .MODRR(MODRR),
    .PBAV(PBAV),
    .PCAV(PCAV),
    .Y6(Y6),
    .Z3(Z3),
    .Z4(Z4),

    .BRD1(BRD1),
    .BRD2(BRD2),
    .BRD7(BRD7),
    .BRD8(BRD8),
    .MODR1(MODR1),
    .MODR2(MODR2)
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
