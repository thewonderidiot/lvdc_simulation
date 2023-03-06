`timescale 1ns/1ps
`default_nettype none

module clock_drivers(
    input wire BOP,
    input wire CGPP,
    input wire CGPPN,
    input wire CGQP,
    input wire CGQPN,
    input wire CGRP,
    input wire CGRPN,
    output wire W1,
    output wire W3,
    output wire W6,
    output wire W7,
    output wire WN,
    output wire X2,
    output wire X3,
    output wire X4,
    output wire X5,
    output wire X8,
    output wire XN,
    output wire Y1,
    output wire Y3,
    output wire Y4,
    output wire Y5,
    output wire Y6,
    output wire Y7,
    output wire Y8,
    output wire YN,
    output wire Z1,
    output wire Z2,
    output wire Z3,
    output wire Z5,
    output wire Z7,
    output wire Z8,
    output wire ZN
);

wire W2;
wire W4;
wire W5;
wire W8;
wire WDA;
wire WF;
wire X1;
wire X6;
wire X7;
wire XDA;
wire XF;
wire Y2;
wire YDA;
wire YF;
wire Z4;
wire Z6;
wire ZDA;
wire ZF;

wor ncg2_01;
wor ncg2_02;
wor ncg2_03;
wor ncg2_04;
wire nnsi_01;
wire nnsi_02;
wire nnsi_03;
wire nnsi_04;

// 10-4
cg2 cg2_01(.a1(BOP), .a2(CGPP), .y(ncg2_01));
cg1 cg1_01(.a(CGRP), .y(ncg2_01));
cg1 cg1_02(.a(ZF), .y(ncg2_01));
cg1 cg1_03(.a(YF), .y(ncg2_01));
nsi nsi_01(.a(ncg2_01), .y(nnsi_01));
cef cef_01(.a(nnsi_01), .y(WF));
cef cef_02(.a(nnsi_01), .y(WDA));
cef cef_03(.a(WF), .y(W1));
cef cef_04(.a(WF), .y(W2));
cef cef_05(.a(WF), .y(W3));
cef cef_06(.a(WF), .y(W4));
cef cef_07(.a(WF), .y(W5));
cef cef_08(.a(WF), .y(W6));
cef cef_09(.a(WF), .y(W7));
cef cef_10(.a(WF), .y(W8));
i i_01(.a(WF), .y(WN));

// 10-5
cg2 cg2_02(.a1(BOP), .a2(CGPPN), .y(ncg2_02));
cg1 cg1_04(.a(CGQP), .y(ncg2_02));
cg1 cg1_05(.a(ZF), .y(ncg2_02));
cg1 cg1_06(.a(WF), .y(ncg2_02));
nsi nsi_02(.a(ncg2_02), .y(nnsi_02));
cef cef_11(.a(nnsi_02), .y(XF));
cef cef_12(.a(nnsi_02), .y(XDA));
cef cef_13(.a(XF), .y(X1));
cef cef_14(.a(XF), .y(X2));
cef cef_15(.a(XF), .y(X3));
cef cef_16(.a(XF), .y(X4));
cef cef_17(.a(XF), .y(X5));
cef cef_18(.a(XF), .y(X6));
cef cef_19(.a(XF), .y(X7));
cef cef_20(.a(XF), .y(X8));
i i_02(.a(XF), .y(XN));

// 10-6
cg2 cg2_03(.a1(BOP), .a2(CGPP), .y(ncg2_03));
cg1 cg1_07(.a(CGRPN), .y(ncg2_03));
cg1 cg1_08(.a(XF), .y(ncg2_03));
cg1 cg1_09(.a(WF), .y(ncg2_03));
nsi nsi_03(.a(ncg2_03), .y(nnsi_03));
cef cef_21(.a(nnsi_03), .y(YF));
cef cef_22(.a(nnsi_03), .y(YDA));
cef cef_23(.a(YF), .y(Y1));
cef cef_24(.a(YF), .y(Y2));
cef cef_25(.a(YF), .y(Y3));
cef cef_26(.a(YF), .y(Y4));
cef cef_27(.a(YF), .y(Y5));
cef cef_28(.a(YF), .y(Y6));
cef cef_29(.a(YF), .y(Y7));
cef cef_30(.a(YF), .y(Y8));
i i_03(.a(YF), .y(YN));

// 10-7
cg2 cg2_04(.a1(BOP), .a2(CGPPN), .y(ncg2_04));
cg1 cg1_10(.a(CGQPN), .y(ncg2_04));
cg1 cg1_11(.a(XF), .y(ncg2_04));
cg1 cg1_12(.a(YF), .y(ncg2_04));
nsi nsi_04(.a(ncg2_04), .y(nnsi_04));
cef cef_31(.a(nnsi_04), .y(ZF));
cef cef_32(.a(nnsi_04), .y(ZDA));
cef cef_33(.a(ZF), .y(Z1));
cef cef_34(.a(ZF), .y(Z2));
cef cef_35(.a(ZF), .y(Z3));
cef cef_36(.a(ZF), .y(Z4));
cef cef_37(.a(ZF), .y(Z5));
cef cef_38(.a(ZF), .y(Z6));
cef cef_39(.a(ZF), .y(Z7));
cef cef_40(.a(ZF), .y(Z8));
i i_04(.a(ZF), .y(ZN));

endmodule
`default_nettype wire
