`timescale 1ns/1ps
`default_nettype none

module lvdc_sim;

reg CSTN = 1; reg DATAV = 0;
reg DIN = 0;
reg HALTV = 1;
reg INTCV = 0;
reg TER = 0;

wire AI3V;
wire PBV;
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
    .CSTN(CSTN),
    .DATAV(DATAV),
    .DIN(DIN),
    .HALTV(HALTV),
    .INTCV(INTCV),
    .TER(TER),
    .AI3V(AI3V),
    .PBV(PBV),
    .WDA(WDA),
    .XDA(XDA),
    .YDA(YDA),
    .ZDA(ZDA)
);

initial begin
    $dumpfile("lvdc.fst");
    $dumpvars(3, lvdc_sim);
    #100000 HALTV = 0;
    #5000000 $finish;
end

endmodule
`default_nettype wire
