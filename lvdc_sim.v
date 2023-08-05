`timescale 1ns/1ps
`default_nettype none

module lvdc_sim;

reg SIM_CLK;
initial SIM_CLK = 0;

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
reg HLT = 1;
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
reg TSYNC = 0;

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
wire CSTN;
wire DATAV;
wire G5VN;
wire HALTV;
wire INTCV;
wire PBV;
wire PBVN;
wire PIOV;
wire TRSV;
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
    .G5VN(G5VN),
    .PBV(PBV),
    .PBVN(PBVN),
    .PIOV(PIOV),
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
    .G5VN(G5VN),
    .HLT(HLT),
    .PBVN(PBVN),
    .PIOV(PIOV),
    .TE1H(TE1H),
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

    .CSTN(CSTN),
    .DATAV(DATAV),
    .HALTV(HALTV),
    .INTCV(INTCV)
);

initial begin
    $dumpfile("lvdc.fst");
    $dumpvars(4, lvdc_sim);
    #100 SIM_RST = 1;
    #100000 HLT = 0;
    #5000000 $finish;
end

endmodule
`default_nettype wire
