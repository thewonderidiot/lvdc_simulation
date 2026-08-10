`timescale 1ns/1ps
`default_nettype none

module iu_sim;

reg SIM_CLK = 0;
wire [39:0] SIM_TLM;
wire SIM_TLM_SYNC;
wire SIM_UART_RX = 0;
wire SIM_UART_TX;

`ifdef CLOCKED
always #12.20703125 SIM_CLK = !SIM_CLK;
`endif

reg SIM_RST = 0;

// Unimplemented inputs
reg DIN3X = 0;
reg DIN5X = 0;
reg DIN6X = 0;
reg DIN9X = 0;
reg DIN10X = 0;
reg DIN11X = 0;
reg DIN12X = 0;
reg DIN13X = 0;
reg DIN14X = 0;
reg DIN15X = 0;
reg DIN16X = 0;
reg DIN17X = 0;
reg DIN18X = 0;
reg DIN19X = 0;
reg DIN20X = 0;
reg DIN21X = 0;
reg DIN22X = 0;
reg DIN24X = 0;

reg INTR2X = 0;
reg INTR4X = 0;
reg INTR5X = 0;
reg INTR6X = 0;
reg INTR7X = 0;

// RCA-110A connections
wire BR1X;
wire BR2X;
wire BR3X;
wire BR4X;
wire BR5X;
wire BR6X;
wire BR7X;
wire BR8X;
wire BR9X;
wire BR10X;
wire BR11X;
wire BR12X;
wire BR13X;
wire BR14X;
wire BR15X;
wire BR16X;
wire BR17X;
wire BR18X;
wire BR19X;
wire BR20X;
wire BR21X;
wire BR22X;
wire BR23X;
wire BR24X;
wire BR25X;
wire BR26X;
wire DIN1X;
wire DIN7X;
wire DIN8X;
wire GC1;
wire GC2;
wire GC3;
wire GC4;
wire GC5;
wire GC6;
wire GC7;
wire GC8;
wire GC9;
wire GC10;
wire GC11;
wire GC12;
wire GC13;
wire GC14;
wire GCSYNCX;
wire HLTX;
wire ICSN;
wire INTR1X;
wire INTR3X;
wire MOD1;
wire MOD2;
wire MOD3;
wire MOD4;
wire MOD5;
wire MOD6;
wire RT1X;
wire TAG1X;
wire TAG2X;
wire TAG3X;
wire TAG4X;
wire TAG5X;
wire TAG6X;
wire TAG7X;
wire TAG8X;

// LTE connections
wire A1V;
wire A2V;
wire A3V;
wire A4V;
wire A5V;
wire A6V;
wire A7V;
wire A8V;
wire A9V;
wire ADV;
wire AI3V;
wire BRA14P;
wire BRB14P;
wire C1RDN;
wire C2RDN;
wire C3RD;
wire C4RDV;
wire CST;
wire DATAV;
wire DDC1R;
wire DDC2R;
wire DDC3R;
wire DDC4R;
wire DIN;
wire DINN;
wire DO1RCA;
wire DO2RCA;
wire DOMD;
wire ECSB;
wire G5DVN;
wire HOPC1V;
wire INFOV;
wire INTCV;
wire MD7V;
wire MR1V;
wire OP1V;
wire OP2V;
wire OP3V;
wire OP4V;
wire PBAVN;
wire PCINFV;
wire PIODV;
wire PR0V;
wire TAGS;
wire TE1;
wire TE2;
wire TE3;
wire TER;
wire TRSV;
wire W6;

iu iu1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .SIM_TLM(SIM_TLM),
    .SIM_TLM_SYNC(SIM_TLM_SYNC),

    // Saturn Discrete Inputs
    .DIN3X(DIN3X),
    .DIN5X(DIN5X),
    .DIN6X(DIN6X),
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
    .DIN24X(DIN24X),

    // Saturn Interrupts
    .INTR2X(INTR2X),
    .INTR4X(INTR4X),
    .INTR5X(INTR5X),
    .INTR6X(INTR6X),
    .INTR7X(INTR7X),

    // RCA-110A
    .DIN1X(DIN1X),
    .DIN7X(DIN7X),
    .DIN8X(DIN8X),
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
    .INTR3X(INTR3X),

    .BR1X(BR1X),
    .BR2X(BR2X),
    .BR3X(BR3X),
    .BR4X(BR4X),
    .BR5X(BR5X),
    .BR6X(BR6X),
    .BR7X(BR7X),
    .BR8X(BR8X),
    .BR9X(BR9X),
    .BR10X(BR10X),
    .BR11X(BR11X),
    .BR12X(BR12X),
    .BR13X(BR13X),
    .BR14X(BR14X),
    .BR15X(BR15X),
    .BR16X(BR16X),
    .BR17X(BR17X),
    .BR18X(BR18X),
    .BR19X(BR19X),
    .BR20X(BR20X),
    .BR21X(BR21X),
    .BR22X(BR22X),
    .BR23X(BR23X),
    .BR24X(BR24X),
    .BR25X(BR25X),
    .BR26X(BR26X),
    .MOD1(MOD1),
    .MOD2(MOD2),
    .MOD3(MOD3),
    .MOD4(MOD4),
    .MOD5(MOD5),
    .MOD6(MOD6),
    .RT1X(RT1X),
    .TAG1X(TAG1X),
    .TAG2X(TAG2X),
    .TAG3X(TAG3X),
    .TAG4X(TAG4X),
    .TAG5X(TAG5X),
    .TAG6X(TAG6X),
    .TAG7X(TAG7X),
    .TAG8X(TAG8X),

    // Laboratory Test Equipment
    .CST(CST),
    .DIN(DIN),
    .TE1(TE1),
    .TE2(TE2),
    .TE3(TE3),
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
    .ADV(ADV),
    .AI3V(AI3V),
    .BRA14P(BRA14P),
    .BRB14P(BRB14P),
    .C1RDN(C1RDN),
    .C2RDN(C2RDN),
    .C3RD(C3RD),
    .C4RDV(C4RDV),
    .DATAV(DATAV),
    .DDC1R(DDC1R),
    .DDC2R(DDC2R),
    .DDC3R(DDC3R),
    .DDC4R(DDC4R),
    .DINN(DINN),
    .DO1RCA(DO1RCA),
    .DO2RCA(DO2RCA),
    .DOMD(DOMD),
    .ECSB(ECSB),
    .G5DVN(G5DVN),
    .HOPC1V(HOPC1V),
    .INFOV(INFOV),
    .INTCV(INTCV),
    .MD7V(MD7V),
    .MR1V(MR1V),
    .OP1V(OP1V),
    .OP2V(OP2V),
    .OP3V(OP3V),
    .OP4V(OP4V),
    .PBAVN(PBAVN),
    .PCINFV(PCINFV),
    .PIODV(PIODV),
    .PR0V(PR0V),
    .TAGS(TAGS),
    .TRSV(TRSV),
    .W6(W6)
);

gse gse1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .SIM_TLM(SIM_TLM),
    .SIM_TLM_SYNC(SIM_TLM_SYNC),
    .SIM_UART_RX(SIM_UART_RX),
    .SIM_UART_TX(SIM_UART_TX),

    // RCA-110A
    .BR1X(BR1X),
    .BR2X(BR2X),
    .BR3X(BR3X),
    .BR4X(BR4X),
    .BR5X(BR5X),
    .BR6X(BR6X),
    .BR7X(BR7X),
    .BR8X(BR8X),
    .BR9X(BR9X),
    .BR10X(BR10X),
    .BR11X(BR11X),
    .BR12X(BR12X),
    .BR13X(BR13X),
    .BR14X(BR14X),
    .BR15X(BR15X),
    .BR16X(BR16X),
    .BR17X(BR17X),
    .BR18X(BR18X),
    .BR19X(BR19X),
    .BR20X(BR20X),
    .BR21X(BR21X),
    .BR22X(BR22X),
    .BR23X(BR23X),
    .BR24X(BR24X),
    .BR25X(BR25X),
    .BR26X(BR26X),
    .MOD1(MOD1),
    .MOD2(MOD2),
    .MOD3(MOD3),
    .MOD4(MOD4),
    .MOD5(MOD5),
    .MOD6(MOD6),
    .RT1X(RT1X),
    .TAG1X(TAG1X),
    .TAG2X(TAG2X),
    .TAG3X(TAG3X),
    .TAG4X(TAG4X),
    .TAG5X(TAG5X),
    .TAG6X(TAG6X),
    .TAG7X(TAG7X),
    .TAG8X(TAG8X),

    .DIN1X(DIN1X),
    .DIN7X(DIN7X),
    .DIN8X(DIN8X),
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
    .INTR3X(INTR3X),

    // Laboratory Test Equipment
    .A1V(A1V),
    .A2V(A2V),
    .A3V(A3V),
    .A4V(A4V),
    .A5V(A5V),
    .A6V(A6V),
    .A7V(A7V),
    .A8V(A8V),
    .A9V(A9V),
    .ADV(ADV),
    .AI3V(AI3V),
    .BRA14P(BRA14P),
    .BRB14P(BRB14P),
    .C1RDN(C1RDN),
    .C2RDN(C2RDN),
    .C3RD(C3RD),
    .C4RDV(C4RDV),
    .DATAV(DATAV),
    .DDC1R(DDC1R),
    .DDC2R(DDC2R),
    .DDC3R(DDC3R),
    .DDC4R(DDC4R),
    .DINN(DINN),
    .DO1RCA(DO1RCA),
    .DO2RCA(DO2RCA),
    .DOMD(DOMD),
    .ECSB(ECSB),
    .G5DVN(G5DVN),
    .HOPC1V(HOPC1V),
    .INFOV(INFOV),
    .INTCV(INTCV),
    .MD7V(MD7V),
    .MR1V(MR1V),
    .OP1V(OP1V),
    .OP2V(OP2V),
    .OP3V(OP3V),
    .OP4V(OP4V),
    .PBAVN(PBAVN),
    .PCINFV(PCINFV),
    .PIODV(PIODV),
    .PR0V(PR0V),
    .TAGS(TAGS),
    .TRSV(TRSV),
    .W6(W6),

    .CST(CST),
    .DIN(DIN),
    .TE1(TE1),
    .TE2(TE2),
    .TE3(TE3),
    .TER(TER)
);

initial begin
    $dumpfile("iu.fst");
    $dumpvars(4, iu_sim);
    #100 SIM_RST = 1;
    // GSE sequencing is located in gse/gse.v
    #10000000 $finish;
end

endmodule
`default_nettype wire
