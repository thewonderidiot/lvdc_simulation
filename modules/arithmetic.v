`timescale 1ns/1ps
`default_nettype none

module arithmetic(
    input wire V1,
    input wire A1V,
    input wire A2V,
    input wire A5V,
    input wire A6V,
    input wire AV,
    input wire AVN,
    input wire AI1V,
    input wire AI3V,
    input wire CSTV,
    input wire EXMVN,
    input wire G1V,
    input wire G1VN,
    input wire G3VN,
    input wire G4V,
    input wire G5V,
    input wire G5VN,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire INTV,
    input wire HOYV,
    input wire OP1V,
    input wire OP1VN,
    input wire OP2V,
    input wire OP2VN,
    input wire OP3V,
    input wire OP3VN,
    input wire OP4V,
    input wire OP4VN,
    input wire P3VN,
    input wire PAV,
    input wire PAVN,
    input wire PBV,
    input wire PCV,
    input wire Q8V,
    input wire SHFV,
    input wire TBCV,
    input wire VOYVN,
    input wire W1,
    input wire X3,
    input wire Y7,
    input wire Z3,
    input wire ZN
);

wire AI4;
wire AI4N;
wire AND;
wire ANDN;
wire B;
wire BN;
wire C;
wire CN;
wire Q8D;
wire Q8DN;
wire RAC;
wire RACN;

assign AI4 = 0;
assign AI4N = 1;
assign B = 0;
assign BN = 1;

wire na3a;
wor na3b;
wire na4a;
wire na5a;
wor na7a;
wire na7b;
wire na10a;
wor na11a;
wire na11b;
wire na18b;
wor na19a;
wire na19c;
wire na20a;
wire na20b;
wire na20c;
wire na21b;
wire na24a;
wire na25b;
wire na27b;
wor na28a;
wire na32a;
wire na35a;
wor na35c;

// 10-26
a a7a(.clk(V1), .exp(na7b), .a1(CN), .y(na7a));
a a7b(.a1(ANDN), .y(na7b));
a a21a(.clk(Z3), .exp(na35a), .a1(OP1V), .a2(AI4N), .a3(BN), .y(na7a));
a a35a(.a1(OP2V), .y(na35a));
a a20a(.clk(Z3), .a1(PAVN), .y(na20a));
a a14a(.exp(na20a), .a1(OP3VN), .a2(BN), .a3(AI4), .y(na7a));
a a14b(.clk(Z3), .a1(PAV), .a2(AI4N), .y(na7a));
a a6a(.clk(X3), .a1(HOYV), .a2(VOYVN), .a3(P3VN), .y(na7a));
a a6b(.clk(X3), .exp(na5a), .a1(AV), .a2(G1V), .a3(G3VN), .y(na7a));
a a5a(.a1(PAV), .a2(CSTV), .y(na5a));
a a34a(.clk(Z3), .a1(B), .a2(AI4N), .a3(OP2VN), .y(na7a));
a #(1) a35b(.clk(X3), .a1(INTV), .y(na7a));
i a7c(.a(na7a), .y(C));
a a28a(.clk(V1), .a1(C), .y(na28a));
a a28b(.exp(na21b), .y(na28a));
a a21b(.clk(Z3), .a1(AI4), .a2(B), .a3(OP1V), .a4(OP2V), .y(na21b));
a a27a(.exp(na20b), .a1(OP3VN), .a2(OP4VN), .a3(AI4N), .y(na28a));
a a20b(.clk(Z3), .a1(B), .y(na20b));
a a27b(.a1(PCV), .a2(AI3V), .a3(G7VN), .a4(G1VN), .y(na27b));
a a33a(.clk(Z3), .exp(na27b), .a1(SHFV), .a2(A1V), .y(na28a));
a a33b(.clk(X3), .exp(na32a), .a1(SHFV), .a2(PCV), .a3(A2V), .y(na28a));
a a32a(.a1(AVN), .a2(G5VN), .a3(AI1V), .a4(G7V), .y(na32a));
a a32b(.clk(W1), .exp(na20c), .a1(PAV), .a2(AV), .a3(G3VN), .y(na28a));
a a20c(.a1(G1V), .a2(EXMVN), .y(na20c));
a a34b(.exp(na35c), .a1(TBCV), .a2(RACN), .a3(OP2VN), .y(na28a));
a a35c(.clk(Z3), .a1(BN), .a2(AI4), .y(na35c));
a a25a(.a1(OP3V), .y(na35c));
i a28c(.a(na28a), .y(CN));

a a10a(.clk(V1), .a1(Q8DN), .y(na10a));
i a10b(.a(na10a), .y(Q8D));
i a24c(.a(na24a), .y(Q8DN));
a #(1) a24a(.clk(ZN), .a1(Q8D), .y(na24a));
a a24b(.clk(W1), .a1(Q8V), .y(na24a));

a #(1) a3a(.clk(V1), .a1(ANDN), .y(na3a));
i a3c(.a(na3a), .y(AND));
i a5c(.a(na3b), .y(ANDN));
a a3b(.clk(ZN), .a1(AND), .y(na3b));
a a4a(.clk(W1), .a1(OP1VN), .a2(OP2V), .a3(OP3V), .a4(OP4VN), .y(na4a));
a a5b(.exp(na4a), .a1(TBCV), .y(na3b));

a a25b(.a1(OP2V), .y(na25b));
a a31a(.clk(Z3), .exp(na25b), .a1(PAV), .a2(OP1V), .a3(OP3VN), .y(na19a));
a a26a(.clk(Z3), .a1(PAV), .a2(OP1VN), .a3(OP4V), .y(na19a));
a a26b(.clk(Z3), .a1(PAV), .a2(OP2VN), .a3(OP4VN), .y(na19a));
a a19a(.clk(V1), .a1(RAC), .y(na19a));
i a19b(.a(na19a), .y(RACN));
i a11c(.a(na11a), .y(RAC));
a #(1) a11a(.clk(V1), .a1(RACN), .y(na11a));
a a12a(.clk(Y7), .a1(PAV), .a2(G1VN), .a3(G7VN), .y(na11a));
a a11b(.clk(Z3), .a1(SHFV), .y(na11b));
a a12b(.exp(na11b), .a1(A5V), .a2(PBV), .a3(G4V), .y(na11a));
a a19c(.clk(Z3), .a1(SHFV), .y(na19c));
a a18a(.exp(na19c), .a1(G5V), .a2(A6V), .a3(PBV), .y(na11a));
a a17a(.clk(Z3), .exp(na18b), .a1(G6VN), .y(na11a));
a a18b(.a1(G7V), .a2(A2V), .a3(PCV), .a4(SHFV), .y(na18b));

// 10-27




endmodule
`default_nettype wire
