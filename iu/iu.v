`timescale 1ns/1ps
`default_nettype none

module iu(
    input wire SIM_CLK,
    input wire SIM_RST,
    output wire [39:0] SIM_TLM,
    output wire SIM_TLM_SYNC,

    // Saturn Discrete Inputs
    input wire DIN3X,  // O2-H2 Burner Malfunction
    input wire DIN5X,  // S-IVB Engine Out "A"
    input wire DIN6X,  // Translunar Injection Inhibit
    input wire DIN9X,  // Spacecraft Control of Saturn
    input wire DIN10X, // S-II/S-IVB Separation
    input wire DIN11X, // S-IC Inboard Engine Out "B"
    input wire DIN12X, // S-IC/S-II Separation
    input wire DIN13X, // S-II Inboard Engine Out
    input wire DIN14X, // S-IC Outboard Engine Out
    input wire DIN15X, // S-II Aft Interstage Separation
    input wire DIN16X, // Prepare for Guidance Reference Release
    input wire DIN17X, // S/C Initiation of S-II/S-IVB Separation "A" and S/C Initiation of S-IVB Cutoff "A"
    input wire DIN18X, // S-IC Outboard Engine Cutoff "B"
    input wire DIN19X, // S-II Engine Out
    input wire DIN20X, // S-IVB Ignition Sequence Start
    input wire DIN21X, // S-II Outboard Engine Out
    input wire DIN22X, // S/C Initiation of S-II/S-IVB Separation "B" and S/C Initiation of S-IVB Cutoff "B"
    input wire DIN24X, // Liftoff

    // Saturn Interrupts
    input wire INTR2X, // S-IC Inboard Engine Out "A"
    input wire INTR4X, // S-IVB Engine Out "B"
    input wire INTR5X, // S-IC Outboard Engine Cutoff "A"
    input wire INTR6X, // S-II Engines Cutoff
    input wire INTR7X, // Guidance Reference Release

    // RCA-110A
    input wire DIN1X,   // RCA-110A sync
    input wire DIN7X,   // Spare (Wired to ESE)
    input wire DIN8X,   // Spare (Wired to ESE)
    input wire GC1,     // GSE input line 1
    input wire GC2,     // GSE input line 2
    input wire GC3,     // GSE input line 3
    input wire GC4,     // GSE input line 4
    input wire GC5,     // GSE input line 5
    input wire GC6,     // GSE input line 6
    input wire GC7,     // GSE input line 7
    input wire GC8,     // GSE input line 8
    input wire GC9,     // GSE input line 9
    input wire GC10,    // GSE input line 10
    input wire GC11,    // GSE input line 11
    input wire GC12,    // GSE input line 12
    input wire GC13,    // GSE input line 13
    input wire GC14,    // GSE input line 14
    input wire GCSYNCX, // GSE sync
    input wire HLTX,    // Halt
    input wire ICSN,    // Block CR inputs
    input wire INTR1X,  // Spare (Wired to ESE)
    input wire INTR3X,  // RCA-110A Interrupt

    output wire BR1X,   // Buffer reg latch 1 GSE output
    output wire BR2X,   // Buffer reg latch 2 GSE output
    output wire BR3X,   // Buffer reg latch 3 GSE output
    output wire BR4X,   // Buffer reg latch 4 GSE output
    output wire BR5X,   // Buffer reg latch 5 GSE output
    output wire BR6X,   // Buffer reg latch 6 GSE output
    output wire BR7X,   // Buffer reg latch 7 GSE output
    output wire BR8X,   // Buffer reg latch 8 GSE output
    output wire BR9X,   // Buffer reg latch 9 GSE output
    output wire BR10X,  // Buffer reg latch 10 GSE output
    output wire BR11X,  // Buffer reg latch 11 GSE output
    output wire BR12X,  // Buffer reg latch 12 GSE output
    output wire BR13X,  // Buffer reg latch 13 GSE output
    output wire BR14X,  // Buffer reg latch 14 GSE output
    output wire BR15X,  // Buffer reg latch 15 GSE output
    output wire BR16X,  // Buffer reg latch 16 GSE output
    output wire BR17X,  // Buffer reg latch 17 GSE output
    output wire BR18X,  // Buffer reg latch 18 GSE output
    output wire BR19X,  // Buffer reg latch 19 GSE output
    output wire BR20X,  // Buffer reg latch 20 GSE output
    output wire BR21X,  // Buffer reg latch 21 GSE output
    output wire BR22X,  // Buffer reg latch 22 GSE output
    output wire BR23X,  // Buffer reg latch 23 GSE output
    output wire BR24X,  // Buffer reg latch 24 GSE output
    output wire BR25X,  // Buffer reg latch 25 GSE output
    output wire BR26X,  // Buffer reg latch 26 GSE output
    output wire MOD1,   // Mode reg latch 1
    output wire MOD2,   // Mode reg latch 2
    output wire MOD3,   // Mode reg latch 3
    output wire MOD4,   // Mode reg latch 4
    output wire MOD5,   // Mode reg latch 5
    output wire MOD6,   // Mode reg latch 6
    output wire RT1X,   // Real time latch 1 GSE output
    output wire TAG1X,  // Tag reg latch 1 GSE output
    output wire TAG2X,  // Tag reg latch 2 GSE output
    output wire TAG3X,  // Tag reg latch 3 GSE output
    output wire TAG4X,  // Tag reg latch 4 GSE output
    output wire TAG5X,  // Tag reg latch 5 GSE output
    output wire TAG6X,  // Tag reg latch 6 GSE output
    output wire TAG7X,  // Tag reg latch 7 GSE output
    output wire TAG8X,  // Tag reg latch 8 GSE output

    // Laboratory Test Equipment
    input wire CST, // Single step
    input wire DIN, // Data injection
    input wire TE1, // LTE input line 1
    input wire TE2, // LTE input line 2
    input wire TE3, // LTE input line 3
    input wire TER, // Reset memory error indication

    output wire A1V,    // Address reg latch 1
    output wire A2V,    // Address reg latch 2
    output wire A3V,    // Address reg latch 3
    output wire A4V,    // Address reg latch 4
    output wire A5V,    // Address reg latch 5
    output wire A6V,    // Address reg latch 6
    output wire A7V,    // Address reg latch 7
    output wire A8V,    // Address reg latch 8
    output wire A9V,    // Address reg latch 9
    output wire ADV,    // Bit gate gen latch
    output wire AI3V,   // Interface signal, LVDC to LVDA
    output wire BRA14P, // Buffer register A parity bit
    output wire BRB14P, // Buffer register B parity bit
    output wire C1RDN,  // Ch 1 read delay latch not
    output wire C2RDN,  // Ch 2 read delay latch not
    output wire C3RD,   // Ch 3 read delay
    output wire C4RDV,  // Ch 4 read delay
    output wire DATAV,  // Serializer latch
    output wire DDC1R,  // Delay DC1R
    output wire DDC2R,  // Delay DC2R
    output wire DDC3R,  // Delay DC3R
    output wire DDC4R,  // Delay DC4R
    output wire DINN,   // DOM delay line input latch
    output wire DO1RCA, // Discrete output reg latch 1 GSE output
    output wire DO2RCA, // Discrete output reg latch 2 GSE output
    output wire DOMD,   // Data output multiplexer delayed
    output wire ECSB,   // Error clock signal latch B
    output wire G5DVN,  // DA bit gate 5
    output wire HOPC1V, // Hop constant
    output wire INFOV,  // Computer info delayed
    output wire INTCV,  // Interface output latch
    output wire MD7V,   // Multiplicand divisor register latch 7
    output wire MR1V,   // Multiplier register latch
    output wire OP1V,   // Operation code register latch 1
    output wire OP2V,   // Operation code register latch 2
    output wire OP3V,   // Operation code register latch 3
    output wire OP4V,   // Operation code register latch 4
    output wire PBAVN,  // DA phase B
    output wire PCINFV, // Phase C info transfer latch
    output wire PIODV,  // PIO driver
    output wire PR0V,   // Product remainder latch
    output wire TAGS,   // Tag serializer latch
    output wire TRSV,   // Transfer reg
    output wire W6      // W clock pulse driver output 6
);

// As-yet unimplemented RCA-110 and LTE I/O
// input wire GC0A;  // GSE input line A
// input wire GC0B;  // GSE input line B
// input wire GC0C;  // GSE input line C
// input wire GC0D;  // GSE input line D
// input wire GC0E;  // GSE input line E
// input wire GC0F;  // GSE input line F
// input wire GC0G;  // GSE input line G
// input wire GC0R;  // GSE input line R
// input wire MCL;   // Marginal check late, strobe control
// input wire MCN;   // Marginal check strobe control
// input wire XMEMC; // GSE input memory connect
// input wire XMEMR; // GSE input memory release
// input wire XMEMS; // GSE input memory short
// output wire CCASIN; // COD counter A serializer latch
// output wire CCBSIN; // COD counter B serializer latch

// Internal and spare discretes
reg DIN4X = 0;  // Spare (Wired to Control Distributor)
reg DIN23X = 0; // Spare (Wired to EDS Distributor)
reg DIS1X = 0;  // Coolant Thermal Switch 1
reg DIS2X = 0;  // Coolant Thermal Switch 2
reg DIS3X = 0;  // Spare (not wired)
reg DIS4X = 0;  // Spare (not wired)
reg DIS5X = 0;  // Spare (not wired)
reg DIS6X = 0;  // Spare (not wired)
reg DIS7X = 0;  // Spare (not wired)
reg DIS8X = 0;  // Spare (not wired)

// Internal wiring
wire BO1N;
wire BR1;
wire BR2;
wire BR3;
wire BR4;
wire BR5;
wire BR6;
wire BR7;
wire BR8;
wire BR9;
wire BR10;
wire BR11;
wire BR12;
wire BR13;
wire BR14;
wire BR15;
wire BR16;
wire BR17;
wire BR18;
wire BR19;
wire BR20;
wire BR21;
wire BR22;
wire BR23;
wire BR24;
wire BR25;
wire BR26;
wire CSTN;
wire CR1;
wire CR2;
wire CR3;
wire CR4;
wire CR5;
wire CR6;
wire CR7;
wire CR8;
wire CR9;
wire CR10;
wire CR11;
wire CR12;
wire CR13;
wire CR14;
wire CRI1X;
wire CRI2X;
wire DIN2AX;
wire DIN2BX;
wire DO1;
wire DO2;
wire DO3;
wire DO4;
wire DO5;
wire DO6;
wire DO7;
wire DO8;
wire DO9;
wire DO10;
wire DO11;
wire DO12;
wire DO13;
wire EAMV;
wire EBMV;
wire G5VN;
wire HALTV;
wire OCINT;
wire PBV;
wire PBVN;
wire PIOV;
wire RT1;
wire RT2;
wire RT3;
wire RT4;
wire RT5;
wire SS1;
wire SS2;
wire SS3;
wire SS4;
wire SS5;
wire SS6;
wire SS7;
wire SS8;
wire SS9;
wire SS10;
wire SS11;
wire SS12;
wire SS13;
wire SS14;
wire SS15;
wire SSFB1X;
wire SSFB2X;
wire SSFB3X;
wire SSFB4X;
wire SSFB5X;
wire SSFB6X;
wire SSFB7X;
wire SSFB8X;
wire TAG1;
wire TAG2;
wire TAG3;
wire TAG4;
wire TAG5;
wire TAG6;
wire TAG7;
wire TAG8;
wire TE1H;
wire TLCV;
wire TPBX;
wire TS1;
wire TS2;
wire TS3;
wire TS4;
wire TS5;
wire TS6;
wire TS7;
wire TS8;
wire TS9;
wire TS10;
wire TSYNC;
wire WDA;
wire XDA;
wire YDA;
wire ZDA;

assign TE1H = TE1; // Guess, since both are called "LTE input line 1"

lvdc lvdc1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .CSTN(CSTN),
    .DATAV(DATAV),
    .DIN(DIN),
    .HALTV(HALTV),
    .INTCV(INTCV),
    .TER(TER),

    .A1V(A1V),
    .A2V(A2V),
    .A3V(A3V),
    .A4V(A4V),
    .A5V(A5V),
    .A6V(A6V),
    .A7V(A7V),
    .A8V(A8V),
    .A9V(A9V),
    .AI3V(AI3V),
    .BO1N(BO1N),
    .BRA14P(BRA14P),
    .BRB14P(BRB14P),
    .EAMV(EAMV),
    .EBMV(EBMV),
    .G5VN(G5VN),
    .HOPC1V(HOPC1V),
    .MD7V(MD7V),
    .MR1V(MR1V),
    .OP1V(OP1V),
    .OP2V(OP2V),
    .OP3V(OP3V),
    .OP4V(OP4V),
    .PBV(PBV),
    .PBVN(PBVN),
    .PIOV(PIOV),
    .PR0V(PR0V),
    .TLCV(TLCV),
    .TRSV(TRSV),
    .WDA(WDA),
    .XDA(XDA),
    .YDA(YDA),
    .ZDA(ZDA)
);

lvda lvda1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .A1V(A1V),
    .A2V(A2V),
    .A3V(A3V),
    .A4V(A4V),
    .A5V(A5V),
    .A6V(A6V),
    .A7V(A7V),
    .A8V(A8V),
    .A9V(A9V),
    .AI3V(AI3V),
    .BO1N(BO1N),
    .CR1(CR1),
    .CR2(CR2),
    .CR3(CR3),
    .CR4(CR4),
    .CR5(CR5),
    .CR6(CR6),
    .CR7(CR7),
    .CR8(CR8),
    .CR9(CR9),
    .CR10(CR10),
    .CR11(CR11),
    .CR12(CR12),
    .CR13(CR13),
    .CR14(CR14),
    .CRI1X(CRI1X),
    .CRI2X(CRI2X),
    .CST(CST),
    .DIN1X(DIN1X),
    .DIN2AX(DIN2AX),
    .DIN2BX(DIN2BX),
    .DIN3X(DIN3X),
    .DIN4X(DIN4X),
    .DIN5X(DIN5X),
    .DIN6X(DIN6X),
    .DIN7X(DIN7X),
    .DIN8X(DIN8X),
    .DIN9X(DIN9X),
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
    .DIS1X(DIS1X),
    .DIS2X(DIS2X),
    .DIS3X(DIS3X),
    .DIS4X(DIS4X),
    .DIS5X(DIS5X),
    .DIS6X(DIS6X),
    .DIS7X(DIS7X),
    .DIS8X(DIS8X),
    .EAMV(EAMV),
    .EBMV(EBMV),
    .G5VN(G5VN),
    .GC1(GC1),
    .GC2(GC2),
    .GC3(GC3),
    .GC4(GC4),
    .GC5(GC5),
    .GC6(GC6),
    .GC7(GC7),
    .GC8(GC8),
    .GC9(GC9),
    .GC10(GC10),
    .GC11(GC11),
    .GC12(GC12),
    .GC13(GC13),
    .GC14(GC14),
    .GCSYNCX(GCSYNCX),
    .HLTX(HLTX),
    .ICSN(ICSN),
    .INTR1X(INTR1X),
    .INTR2X(INTR2X),
    .INTR3X(INTR3X),
    .INTR4X(INTR4X),
    .INTR5X(INTR5X),
    .INTR6X(INTR6X),
    .INTR7X(INTR7X),
    .OCINT(OCINT),
    .PBVN(PBVN),
    .PIOV(PIOV),
    .SSFB1X(SSFB1X),
    .SSFB2X(SSFB2X),
    .SSFB3X(SSFB3X),
    .SSFB4X(SSFB4X),
    .SSFB5X(SSFB5X),
    .SSFB6X(SSFB6X),
    .SSFB7X(SSFB7X),
    .SSFB8X(SSFB8X),
    .TE1H(TE1H),
    .TLCV(TLCV),
    .TRSV(TRSV),
    .TS1(TS1),
    .TS2(TS2),
    .TS3(TS3),
    .TS4(TS4),
    .TS5(TS5),
    .TS6(TS6),
    .TS7(TS7),
    .TS8(TS8),
    .TS9(TS9),
    .TS10(TS10),
    .TSYNC(TSYNC),
    .WDA(WDA),
    .XDA(XDA),
    .YDA(YDA),
    .ZDA(ZDA),

    .ADV(ADV),
    .BR1(BR1),
    .BR1X(BR1X),
    .BR2(BR2),
    .BR2X(BR2X),
    .BR3(BR3),
    .BR3X(BR3X),
    .BR4(BR4),
    .BR4X(BR4X),
    .BR5(BR5),
    .BR5X(BR5X),
    .BR6(BR6),
    .BR6X(BR6X),
    .BR7(BR7),
    .BR7X(BR7X),
    .BR8(BR8),
    .BR8X(BR8X),
    .BR9(BR9),
    .BR9X(BR9X),
    .BR10(BR10),
    .BR10X(BR10X),
    .BR11(BR11),
    .BR11X(BR11X),
    .BR12(BR12),
    .BR12X(BR12X),
    .BR13(BR13),
    .BR13X(BR13X),
    .BR14(BR14),
    .BR14X(BR14X),
    .BR15(BR15),
    .BR15X(BR15X),
    .BR16(BR16),
    .BR16X(BR16X),
    .BR17(BR17),
    .BR17X(BR17X),
    .BR18(BR18),
    .BR18X(BR18X),
    .BR19(BR19),
    .BR19X(BR19X),
    .BR20(BR20),
    .BR20X(BR20X),
    .BR21(BR21),
    .BR21X(BR21X),
    .BR22(BR22),
    .BR22X(BR22X),
    .BR23(BR23),
    .BR23X(BR23X),
    .BR24(BR24),
    .BR24X(BR24X),
    .BR25(BR25),
    .BR25X(BR25X),
    .BR26(BR26),
    .BR26X(BR26X),
    .C1RDN(C1RDN),
    .C2RDN(C2RDN),
    .C3RD(C3RD),
    .C4RDV(C4RDV),
    .CSTN(CSTN),
    .DATAV(DATAV),
    .DDC1R(DDC1R),
    .DDC2R(DDC2R),
    .DDC3R(DDC3R),
    .DDC4R(DDC4R),
    .DINN(DINN),
    .DO1(DO1),
    .DO1RCA(DO1RCA),
    .DO2(DO2),
    .DO2RCA(DO2RCA),
    .DO3(DO3),
    .DO4(DO4),
    .DO5(DO5),
    .DO6(DO6),
    .DO7(DO7),
    .DO8(DO8),
    .DO9(DO9),
    .DO10(DO10),
    .DO11(DO11),
    .DO12(DO12),
    .DO13(DO13),
    .DOMD(DOMD),
    .ECSB(ECSB),
    .G5DVN(G5DVN),
    .HALTV(HALTV),
    .INFOV(INFOV),
    .INTCV(INTCV),
    .MOD1(MOD1),
    .MOD2(MOD2),
    .MOD3(MOD3),
    .MOD4(MOD4),
    .MOD5(MOD5),
    .MOD6(MOD6),
    .PBAVN(PBAVN),
    .PCINFV(PCINFV),
    .PIODV(PIODV),
    .RT1(RT1),
    .RT1X(RT1X),
    .RT2(RT2),
    .RT3(RT3),
    .RT4(RT4),
    .RT5(RT5),
    .SS1(SS1),
    .SS2(SS2),
    .SS3(SS3),
    .SS4(SS4),
    .SS5(SS5),
    .SS6(SS6),
    .SS7(SS7),
    .SS8(SS8),
    .SS9(SS9),
    .SS10(SS10),
    .SS11(SS11),
    .SS12(SS12),
    .SS13(SS13),
    .SS14(SS14),
    .SS15(SS15),
    .TAG1(TAG1),
    .TAG1X(TAG1X),
    .TAG2(TAG2),
    .TAG2X(TAG2X),
    .TAG3(TAG3),
    .TAG3X(TAG3X),
    .TAG4(TAG4),
    .TAG4X(TAG4X),
    .TAG5(TAG5),
    .TAG5X(TAG5X),
    .TAG6(TAG6),
    .TAG6X(TAG6X),
    .TAG7(TAG7),
    .TAG7X(TAG7X),
    .TAG8(TAG8),
    .TAG8X(TAG8X),
    .TAGS(TAGS),
    .TPBX(TPBX),
    .W6(W6)
);

cmd_decoder cmd_decoder1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .RESET(DO1), // Reset Command Decoder

    .INTA(CRI1X), // Command Decoder Interrupt "A"
    .INTB(CRI2X), // Command Decoder Interrupt "B"
    .OMDA(DIN2AX), // Command Decoder OM/D "A"
    .OMDB(DIN2BX), // Command Decoder OM/D "B"
    .BIT1(CR1),
    .BIT2(CR2),
    .BIT3(CR3),
    .BIT4(CR4),
    .BIT5(CR5),
    .BIT6(CR6),
    .BIT7(CR7),
    .BIT8(CR8),
    .BIT9(CR9),
    .BIT10(CR10),
    .BIT11(CR11),
    .BIT12(CR12),
    .BIT13(CR13),
    .BIT14(CR14)
);

ciu ciu1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .READY(OCINT),
    .DATA1(TS1),
    .DATA2(TS2),
    .DATA3(TS3),
    .DATA4(TS4),
    .DATA5(TS5),
    .DATA6(TS6),
    .DATA7(TS7),
    .DATA8(TS8),
    .DATA9(TS9),
    .DATA10(TS10)
);

switch_sel switch_sel1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .STAGE_SEL(SS13),
    .RESET(SS14),
    .READ_CMD(SS15),

    .BIT1(SS1),
    .BIT2(SS2),
    .BIT3(SS3),
    .BIT4(SS4),
    .BIT5(SS5),
    .BIT6(SS6),
    .BIT7(SS7),
    .BIT8(SS8),

    .B1V(SSFB1X),
    .B2V(SSFB2X),
    .B3V(SSFB3X),
    .B4V(SSFB4X),
    .B5V(SSFB5X),
    .B6V(SSFB6X),
    .B7V(SSFB7X),
    .B8V(SSFB8X)
);

mod410 mod410a(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .SIM_TLM(SIM_TLM),
    .SIM_TLM_SYNC(SIM_TLM_SYNC),

    .BR1(BR1),
    .BR2(BR2),
    .BR3(BR3),
    .BR4(BR4),
    .BR5(BR5),
    .BR6(BR6),
    .BR7(BR7),
    .BR8(BR8),
    .BR9(BR9),
    .BR10(BR10),
    .BR11(BR11),
    .BR12(BR12),
    .BR13(BR13),
    .BR14(BR14),
    .BR15(BR15),
    .BR16(BR16),
    .BR17(BR17),
    .BR18(BR18),
    .BR19(BR19),
    .BR20(BR20),
    .BR21(BR21),
    .BR22(BR22),
    .BR23(BR23),
    .BR24(BR24),
    .BR25(BR25),
    .BR26(BR26),
    .RT1(RT1),
    .RT2(RT2),
    .RT3(RT3),
    .RT4(RT4),
    .RT5(RT5),
    .TAG1(TAG1),
    .TAG2(TAG2),
    .TAG3(TAG3),
    .TAG4(TAG4),
    .TAG5(TAG5),
    .TAG6(TAG6),
    .TAG7(TAG7),
    .TAG8(TAG8),
    .TPBX(TPBX),

    .TSYNC(TSYNC)
);

endmodule
`default_nettype wire
