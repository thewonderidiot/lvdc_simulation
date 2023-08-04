`timescale 1ns/1ps
`default_nettype none

module timing_1(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire WDA,
    input wire XDA,
    input wire YDA,
    input wire ZDA,

    output wire W2,
    output wire W3,
    output wire W4,
    output wire W7,
    output wire W8,
    output wire X1,
    output wire X2,
    output wire X3,
    output wire X4,
    output wire Y2,
    output wire Y3,
    output wire Y4,
    output wire Y5,
    output wire Y6,
    output wire Y7,
    output wire Y8,
    output wire Z1,
    output wire Z2,
    output wire Z4,
    output wire Z5,
    output wire Z6,
    output wire Z7
);

wire W1;
wire W5;
wire W6;
wire X5;
wire X6;
wire X7;
wire X8;
wire Y1;
wire Z3;
wire Z8;

// 10-4
cd4 a2a(W1, WDA);
cd4 a2b(W2, WDA);
cd4 a2c(W3, WDA);
cd4 a16a(W4, WDA);
cd4 a16b(W5, WDA);
cd4 a16c(W6, WDA);
cd4 a30a(W7, WDA);
cd4 a30b(W8, WDA);

// 10-5
cd4 a6a(X1, XDA);
cd4 a6b(X2, XDA);
cd4 a6c(X3, XDA);
cd4 a20a(X4, XDA);
cd4 a20b(X5, XDA);
cd4 a20c(X6, XDA);
cd4 a34a(X7, XDA);
cd4 a34b(X8, XDA);

// 10-6
cd4 a2d(Y1, YDA);
cd4 a2e(Y2, YDA);
cd4 a2f(Y3, YDA);
cd4 a16d(Y4, YDA);
cd4 a16e(Y5, YDA);
cd4 a16f(Y6, YDA);
cd4 a30c(Y7, YDA);
cd4 a30d(Y8, YDA);

// 10-7
cd4 a6d(Z1, ZDA);
cd4 a6e(Z2, ZDA);
cd4 a6f(Z3, ZDA);
cd4 a20d(Z4, ZDA);
cd4 a20e(Z5, ZDA);
cd4 a20f(Z6, ZDA);
cd4 a34c(Z7, ZDA);
cd4 a34d(Z8, ZDA);

endmodule
`default_nettype wire
