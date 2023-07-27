`timescale 1ns/1ps
`default_nettype none

module lvdc_sim;

reg SIM_CLK;
initial SIM_CLK = 0;

`ifdef TARGET_FPGA
always #12.20703125 SIM_CLK = !SIM_CLK;
`endif

reg SIM_RST = 0;


reg CST = 0;
reg DIN = 0;
reg HLT = 1;
reg TER = 0;
reg TE1H = 0;

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
    .CST(CST),
    .G5VN(G5VN),
    .HLT(HLT),
    .PBVN(PBVN),
    .PIOV(PIOV),
    .TE1H(TE1H),
    .TRSV(TRSV),
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
