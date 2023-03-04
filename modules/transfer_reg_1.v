`timescale 1ns/1ps
`default_nettype none

module transfer_reg_1(
    input wire V1,
    input wire V4MOD2,
    input wire AI1V,
    input wire BRA1,
    input wire BRB1,
    input wire CLTR,
    input wire DIN,
    input wire G1V,
    input wire G1VN,
    input wire G7VN,
    input wire MAOV,
    input wire MBOV,
    input wire MD2V,
    input wire PAV,
    input wire PBVN,
    input wire PCV,
    input wire RUNV,
    input wire RUNVN,
    input wire SRTR,
    input wire STMD,
    input wire STMDN,
    input wire STO,
    input wire TBR,
    input wire W6,
    input wire X8,
    input wire Y4,
    output wire TR1,
    output wire TR2,
    output wire TR3,
    output wire TR4,
    output wire TR5,
    output wire TR6,
    output wire TR7,
    output wire TR8,
    output wire TR9
);

wire SS;
wire SSN;
wire TR1N;
wire TR2N;
wire TR3N;
wire TR4N;
wire TR5N;
wire TR6N;
wire TR7N;
wire TR8N;
wire TR9N;

assign TR2 = 0;
assign TR3 = 0;
assign TR4 = 0;
assign TR5 = 0;
assign TR6 = 0;
assign TR7 = 0;
assign TR8 = 0;
assign TR9 = 0;

wand na1a;
wire na8a;
wire na15a;
wire na19a;
wor na28a;
wire na33a;
wire na33b;
wire na33c;
wor na35a;

// 10-58
a a1a(.clk(V1), .a1(TR1), .a2(TR2), .a3(TR3), .a4(TR4), .y(na1a));
a a1b(.a1(TR5), .a2(TR6), .a3(TR7), .a4(TR9), .y(na1a));
a a8a(.a1(G1VN), .y(na8a));
i a8b(.a(na8a), .y(SSN));
a a15a(.clk(V1), .a1(SSN), .y(na15a));
i a15b(.a(na15a), .y(SS));

a a34a(.clk(X8), .a1(RUNVN), .a2(DIN), .y(na35a));
a a19a(.clk(X8), .a1(MD2V), .y(na19a));
a a34b(.exp(na19a), .a1(STMD), .a2(SRTR), .a3(RUNV), .y(na35a));
a a33a(.clk(X8), .a1(RUNV), .a2(AI1V), .y(na33a));
a a27a(.exp(na33a), .a1(STO), .a2(STMDN), .a3(SRTR), .y(na35a));
a a33b(.clk(Y4), .a1(AI1V), .a2(RUNV), .y(na33b));
a a20a(.clk(Y4), .exp(na33b), .a1(G7VN), .a2(G1VN), .a3(PCV), .y(na35a));
a a33c(.clk(Y4), .a1(RUNV), .a2(AI1V), .y(na33c));
a a20b(.clk(Y4), .exp(na33c), .a1(PAV), .a2(G1V), .a3(PBVN), .y(na35a));
a a26a(.clk(X8), .a1(BRA1), .a2(TBR), .a3(MAOV), .y(na35a));
a a26b(.clk(X8), .a1(BRB1), .a2(TBR), .a3(MBOV), .y(na35a));
a a35a(.clk(V1), .a1(TR1), .y(na35a));
i a35b(.a(na35a), .y(TR1N));
i a28c(.a(na28a), .y(TR1));
a #(1) a28a(.clk(V4MOD2), .a1(TR1N), .y(na28a));
a a28b(.clk(W6), .a1(SRTR), .y(na28a));
a a35c(.clk(W6), .a1(CLTR), .y(na28a));

endmodule
`default_nettype wire
