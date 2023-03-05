`timescale 1ns/1ps
`default_nettype none

module transfer_reg_1(
    input wire V1,
    input wire V4MOD2,
    input wire AI1V,
    input wire AVN,
    input wire BRA1,
    input wire BRA2,
    input wire BRA3,
    input wire BRA4,
    input wire BRA5,
    input wire BRA6,
    input wire BRA7,
    input wire BRA8,
    input wire BRA9,
    input wire BRB1,
    input wire BRB2,
    input wire BRB3,
    input wire BRB4,
    input wire BRB5,
    input wire BRB6,
    input wire BRB7,
    input wire BRB8,
    input wire BRB9,
    input wire CLTR,
    input wire DIN,
    input wire EXMVN,
    input wire G1V,
    input wire G1VN,
    input wire G3VN,
    input wire G5V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire INTV,
    input wire MAOV,
    input wire MBOV,
    input wire MD2V,
    input wire PAV,
    input wire PBVN,
    input wire PCV,
    input wire RUNV,
    input wire RUNVN,
    input wire SRTR,
    input wire STO,
    input wire TBR,
    input wire W6,
    input wire X5,
    input wire X8,
    input wire Y4,
    input wire Z2,
    output wire TR1,
    output wire TR1N,
    output wire TR2,
    output wire TR3,
    output wire TR4,
    output wire TR5,
    output wire TR6,
    output wire TR7,
    output wire TR8,
    output wire TR9,
    output wire TR9D,
    output wire TR9DN
);

wire SS;
wire SSN;
wire STMD;
wire STMDN;
wire TR1D;
wire TR1DN;
wire TR2N;
wire TR3N;
wire TR3D;
wire TR3DN;
wire TR4N;
wire TR5N;
wire TR6N;
wire TR6D;
wire TR6DN;
wire TR7N;
wire TR8N;
wire TR9N;

wand na1a;
wor na1c;
wor na2b;
wor na2d;
wor na3a;
wor na4a;
wire na5a;
wire na5c;
wor na6a;
wor na6d;
wire na6b;
wire na7a;
wor na7d;
wire na8a;
wand na8c;
wire na8e;
wor na8d;
wor na9a;
wor na9d;
wor na13a;
wor na13d;
wor na14a;
wor na14d;
wire na14e;
wire na15a;
wor na15d;
wor na16b;
wire na16d;
wor na16e;
wire na18a;
wire na18b;
wire na18c;
wire na19a;
wire na20c;
wor na20d;
wor na21b;
wor na21d;
wire na22a;
wire na24a;
wire na24b;
wire na24c;
wor na25a;
wire na27c;
wire na27d;
wire na27e;
wor na28a;
wire na28d;
wor na29b;
wor na30a;
wire na33a;
wire na33b;
wire na33c;
wor na34c;
wor na35a;
wor na35e;

// 10-58
a a1a(.clk(V1), .a1(TR1), .a2(TR2), .a3(TR3), .a4(TR4), .y(na1a));
a a1b(.a1(TR5), .a2(TR6), .a3(TR7), .a4(TR9), .y(na1a));
a a8a(.exp(na1a), .a1(G1VN), .y(na8a));
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

a a21a(.clk(Z2), .a1(TR1N), .y(na21b));
a a21b(.clk(V1), .a1(TR1DN), .y(na21b));
i a21c(.a(na21b), .y(TR1D));
i a14c(.a(na14a), .y(TR1DN));
a #(1) a14a(.clk(V1), .a1(TR1D), .y(na14a));
a a14b(.clk(Z2), .a1(TR1), .y(na14a));

a a12a(.clk(Y4), .a1(BRA2), .a2(TBR), .a3(MAOV), .y(na13a));
a a12b(.clk(Y4), .a1(BRB2), .a2(TBR), .a3(MBOV), .y(na13a));
a a7a(.a1(SRTR), .y(na7a));
a a7b(.clk(X8), .exp(na7a), .a1(TR1D), .y(na13a));
a a13a(.clk(V1), .a1(TR2), .y(na13a));
i a13b(.a(na13a), .y(TR2N));
i a6c(.a(na6a), .y(TR2));
a #(1) a6a(.clk(V4MOD2), .a1(TR2N), .y(na6a));
a a6b(.clk(X8), .a1(TR1DN), .y(na6b));
a a7c(.exp(na6b), .a1(SRTR), .y(na6a));
a a13c(.clk(X8), .a1(CLTR), .y(na6a));

// 10-59
a a8c(.clk(Z2), .a1(STO), .y(na8c));
a a15c(.a1(SS), .a2(PAV), .y(na8c));
a a16a(.exp(na8c), .a1(G7VN), .y(na16b));
a a16b(.clk(V1), .a1(STMD), .y(na16b));
i a16c(.a(na16b), .y(STMDN));
i a25b(.a(na25a), .y(STMD));
a #(1) a25a(.clk(V1), .a1(STMDN), .y(na25a));
a a27b(.clk(Z2), .a1(PCV), .a2(G6VN), .a3(G7V), .y(na25a));

a a2a(.clk(Y4), .a1(TR3), .y(na2b));
a a2b(.clk(V1), .a1(TR3D), .y(na2b));
i a2c(.a(na2b), .y(TR3DN));
i a9c(.a(na9a), .y(TR3D));
a #(1) a9a(.clk(V1), .a1(TR3DN), .y(na9a));
a a9b(.clk(Y4), .a1(TR3N), .y(na9a));

a a11a(.clk(X8), .a1(BRA3), .a2(TBR), .a3(MAOV), .y(na4a));
a a11b(.clk(X8), .a1(BRB3), .a2(TBR), .a3(MBOV), .y(na4a));
a a5a(.clk(W6), .a1(SRTR), .y(na5a));
a a5b(.exp(na5a), .a1(TR2), .y(na4a));
a a4a(.clk(V1), .a1(TR3), .y(na4a));
i a4b(.a(na4a), .y(TR3N));
i a3c(.a(na3a), .y(TR3));
a #(1) a3a(.clk(V4MOD2), .a1(TR3N), .y(na3a));
a a3b(.clk(W6), .exp(na5c), .a1(TR2N), .y(na3a));
a a5c(.a1(SRTR), .y(na5c));
a a4c(.clk(W6), .a1(CLTR), .y(na3a));

// 10-60
a a5d(.clk(Y4), .a1(BRA4), .a2(TBR), .a3(MAOV), .y(na6d));
a a5e(.clk(Y4), .a1(BRB4), .a2(TBR), .a3(MBOV), .y(na6d));
a a4d(.clk(X8), .a1(SRTR), .a2(TR3D), .y(na6d));
a a6d(.clk(V1), .a1(TR4), .y(na6d));
i a6e(.a(na6d), .y(TR4N));
i a7f(.a(na7d), .y(TR4));
a #(1) a7d(.clk(V4MOD2), .a1(TR4N), .y(na7d));
a a7e(.clk(X8), .exp(na28d), .a1(TR3DN), .y(na7d));
a a28d(.a1(SRTR), .y(na28d));
a a6f(.clk(X8), .a1(CLTR), .y(na7d));

a a12c(.clk(X8), .a1(BRA5), .a2(TBR), .a3(MAOV), .y(na13d));
a a12d(.clk(X8), .a1(BRB5), .a2(TBR), .a3(MBOV), .y(na13d));
a a4e(.clk(W6), .a1(SRTR), .a2(TR4), .y(na13d));
a a13d(.clk(V1), .a1(TR5), .y(na13d));
i a13e(.a(na13d), .y(TR5N));
i a14f(.a(na14d), .y(TR5));
a #(1) a14d(.clk(V4MOD2), .a1(TR5N), .y(na14d));
a a14e(.clk(W6), .a1(TR4N), .a2(SRTR), .y(na14e));
a a28e(.exp(na14e), .y(na14d));
a a27c(.a1(EXMVN), .y(na27c));
a a13f(.clk(X8), .exp(na27c), .a1(CLTR), .y(na14d));

a a19b(.clk(X8), .a1(BRA6), .a2(TBR), .a3(MAOV), .y(na20d));
a a19c(.clk(X8), .a1(BRB6), .a2(TBR), .a3(MBOV), .y(na20d));
a a28f(.clk(Z2), .exp(na20c), .y(na20d));
a a20c(.clk(Z2), .a1(SRTR), .a2(TR5), .y(na20c));
a a20d(.clk(V1), .a1(TR6), .y(na20d));
i a20e(.a(na20d), .y(TR6N));
i a21f(.a(na21d), .y(TR6));
a #(1) a21d(.clk(V4MOD2), .a1(TR6N), .y(na21d));
a a11c(.clk(Z2), .a1(SRTR), .a2(TR5N), .y(na21d));
a a21e(.clk(X8), .exp(na27d), .a1(CLTR), .y(na21d));
a a27d(.a1(EXMVN), .y(na27d));

a a18a(.a1(EXMVN), .y(na18a));
a a3d(.clk(Y4), .exp(na18a), .a1(BRA7), .a2(TBR), .a3(MAOV), .y(na2d));
a a24a(.a1(EXMVN), .y(na24a));
a a3e(.clk(Y4), .exp(na24a), .a1(BRB7), .a2(TBR), .a3(MBOV), .y(na2d));
a a11d(.clk(X8), .a1(SRTR), .a2(TR6D), .y(na2d));
a a2d(.clk(V1), .a1(TR7), .y(na2d));
i a2e(.a(na2d), .y(TR7N));
i a1e(.a(na1c), .y(TR7));
a #(1) a1c(.clk(V4MOD2), .a1(TR7N), .y(na1c));
a a1d(.clk(X8), .exp(na22a), .a1(TR6DN), .y(na1c));
a a22a(.a1(SRTR), .y(na22a));
a a2f(.clk(X8), .exp(na18b), .a1(CLTR), .y(na1c));
a a18b(.a1(EXMVN), .y(na18b));

a a24b(.a1(EXMVN), .y(na24b));
a a10a(.clk(X8), .exp(na24b), .a1(BRA8), .a2(TBR), .a3(MAOV), .y(na9d));
a a10b(.clk(X8), .exp(na24c), .a1(BRB8), .a2(TBR), .a3(MBOV), .y(na9d));
a a24c(.a1(EXMVN), .y(na24c));
a a23a(.clk(W6), .a1(SRTR), .a2(TR7), .y(na9d));
a a9d(.clk(V1), .a1(TR8), .y(na9d));
i a9e(.a(na9d), .y(TR8N));
i a8f(.a(na8d), .y(TR8));
a #(1) a8d(.clk(V4MOD2), .a1(TR8N), .y(na8d));
a a8e(.clk(W6), .a1(TR7N), .a2(SRTR), .y(na8e));
a a22b(.exp(na8e), .y(na8d));
a a9f(.clk(X8), .exp(na18c), .a1(CLTR), .y(na8d));
a a18c(.a1(EXMVN), .y(na18c));

a a27e(.a1(G5V), .y(na27e));
a a25c(.clk(X5), .exp(na27e), .a1(INTV), .a2(G3VN), .a3(AVN), .y(na16e));
a a17a(.clk(X8), .a1(BRA9), .a2(TBR), .a3(MAOV), .y(na16e));
a a17b(.clk(X8), .a1(BRB9), .a2(TBR), .a3(MBOV), .y(na16e));
a a22c(.clk(Z2), .exp(na16d), .y(na16e));
a a16d(.clk(Z2), .a1(SRTR), .a2(TR8), .y(na16d));
a a16e(.clk(V1), .a1(TR9), .y(na16e));
i a16f(.a(na16e), .y(TR9N));
i a15f(.a(na15d), .y(TR9));
a #(1) a15d(.clk(V4MOD2), .a1(TR9N), .y(na15d));
a a23b(.clk(Z2), .a1(TR8N), .a2(SRTR), .y(na15d));
a a15e(.clk(X5), .a1(CLTR), .y(na15d));

// 10-61
a a35d(.clk(Y4), .a1(TR6), .y(na35e));
a a35e(.clk(V1), .a1(TR6D), .y(na35e));
i a35f(.a(na35e), .y(TR6DN));
i a34e(.a(na34c), .y(TR6D));
a #(1) a34c(.clk(V1), .a1(TR6DN), .y(na34c));
a a34d(.clk(Y4), .a1(TR6N), .y(na34c));

a a29a(.clk(Y4), .a1(TR9), .y(na29b));
a a29b(.clk(V1), .a1(TR9D), .y(na29b));
i a29c(.a(na29b), .y(TR9DN));
i a30c(.a(na30a), .y(TR9D));
a #(1) a30a(.clk(V1), .a1(TR9DN), .y(na30a));
a a30b(.clk(Y4), .a1(TR9N), .y(na30a));

endmodule
`default_nettype wire
