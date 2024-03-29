`timescale 1ns/1ps
`default_nettype none

module iu_sim;

reg SIM_CLK;
initial SIM_CLK = 0;
wire SIM_UART_TX;

`ifdef TARGET_FPGA
always #12.20703125 SIM_CLK = !SIM_CLK;
`endif

reg SIM_RST = 0;

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
reg CRI1X = 0;
reg CRI2X = 0;
reg CST = 0;
reg DIN = 0;
reg DIN1X = 0;
reg DIN2AX = 0;
reg DIN2BX = 0;
reg DIN3X = 0;
reg DIN4X = 0;
reg DIN5X = 0;
reg DIN6X = 0;
reg DIN7X = 0;
reg DIN8X = 0;
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
reg DIN23X = 0;
reg DIN24X = 0;
reg DIS1X = 0;
reg DIS2X = 0;
reg DIS3X = 0;
reg DIS4X = 0;
reg DIS5X = 0;
reg DIS6X = 0;
reg DIS7X = 0;
reg DIS8X = 0;
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
reg GCSYNCX = 0;
reg HLTX = 1;
reg ICSN = 1;
reg INTR1X = 0;
reg INTR2X = 0;
reg INTR3X = 0;
reg INTR4X = 0;
reg INTR5X = 0;
reg INTR6X = 0;
reg INTR7X = 0;
reg OCINT = 0;
reg SSFB1X = 0;
reg SSFB2X = 0;
reg SSFB3X = 0;
reg SSFB4X = 0;
reg SSFB5X = 0;
reg SSFB6X = 0;
reg SSFB7X = 0;
reg SSFB8X = 0;
reg TER = 0;
reg TE1H = 0;
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

wire A1V;
wire A2V;
wire A3V;
wire A4V;
wire A5V;
wire A6V;
wire A7V;
wire A8V;
wire A9V;
wire AI3V;
wire BO1N;
wire BRD1;
wire BRD2;
wire BRD3;
wire BRD4;
wire BRD5;
wire BRD6;
wire BRD7;
wire BRD8;
wire BRD9;
wire BRD10;
wire BRD11;
wire BRD12;
wire BRD13;
wire BRD14;
wire BRD15;
wire BRD16;
wire BRD17;
wire BRD18;
wire BRD19;
wire BRD20;
wire BRD21;
wire BRD22;
wire BRD23;
wire BRD24;
wire BRD25;
wire BRD26;
wire CSTN;
wire DATAV;
wire EAMV;
wire EBMV;
wire G5VN;
wire HALTV;
wire INTCV;
wire PBV;
wire PBVN;
wire PIOV;
wire RTR1;
wire RTR2;
wire RTR3;
wire RTR4;
wire RTR5;
wire TAGR1;
wire TAGR2;
wire TAGR3;
wire TAGR4;
wire TAGR5;
wire TAGR6;
wire TAGR7;
wire TAGR8;
wire TLCV;
wire TRSV;
wire TSYNC;
wire WDA;
wire XDA;
wire YDA;
wire ZDA;

reg [26:1] Acc = 26'b0;
reg [26:1] AccShift = 26'b0;

reg [5:0] w_count = 6'b0;
reg pbv_prev = 1'b0;

always @(posedge WDA) begin
    pbv_prev <= PBV;
    if (PBV & ~pbv_prev) begin
        w_count <= 6'd27;
    end else if (w_count > 6'd0) begin
        w_count <= w_count - 1;
        if (w_count < 6'd27) begin
            AccShift <= {AccShift[25:1], AI3V};
        end
    end else if (w_count == 6'd0) begin
        Acc <= AccShift;
    end
end

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
    .EAMV(EAMV),
    .EBMV(EBMV),
    .G5VN(G5VN),
    .PBV(PBV),
    .PBVN(PBVN),
    .PIOV(PIOV),
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

    .BRD1(BRD1),
    .BRD2(BRD2),
    .BRD3(BRD3),
    .BRD4(BRD4),
    .BRD5(BRD5),
    .BRD6(BRD6),
    .BRD7(BRD7),
    .BRD8(BRD8),
    .BRD9(BRD9),
    .BRD10(BRD10),
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
    .CSTN(CSTN),
    .DATAV(DATAV),
    .HALTV(HALTV),
    .INTCV(INTCV),
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

mod410 mod410a(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .SIM_UART_TX(SIM_UART_TX),

    .BRD1(BRD1),
    .BRD2(BRD2),
    .BRD3(BRD3),
    .BRD4(BRD4),
    .BRD5(BRD5),
    .BRD6(BRD6),
    .BRD7(BRD7),
    .BRD8(BRD8),
    .BRD9(BRD9),
    .BRD10(BRD10),
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
    .TAGR8(TAGR8),

    .TSYNC(TSYNC)
);

initial begin
    $dumpfile("iu.fst");
    $dumpvars(4, iu_sim);
    #100 SIM_RST = 1;
    #100000 HLTX = 0;
    //#2000000 INTR7X = 1;
    #10000000 $finish;
end

endmodule
`default_nettype wire
