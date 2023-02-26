`timescale 1ns/1ps
`default_nettype none

module a1a3_clock_drivers(
    input wire bop,
    input wire cgpp,
    input wire cgppn,
    input wire cgqp,
    input wire cgqpn,
    input wire cgrp,
    input wire cgrpn
);

wire w1;
wire w2;
wire w3;
wire w4;
wire w5;
wire w6;
wire w7;
wire w8;
wire wda;
wire wf;
wire wn;
wire x1;
wire x2;
wire x3;
wire x4;
wire x5;
wire x6;
wire x7;
wire x8;
wire xda;
wire xf;
wire xn;
wire y1;
wire y2;
wire y3;
wire y4;
wire y5;
wire y6;
wire y7;
wire y8;
wire yda;
wire yf;
wire yn;
wire z1;
wire z2;
wire z3;
wire z4;
wire z5;
wire z6;
wire z7;
wire z8;
wire zda;
wire zf;
wire zn;

wor ncg2_01;
wor ncg2_02;
wor ncg2_03;
wor ncg2_04;
wire nnsi_01;
wire nnsi_02;
wire nnsi_03;
wire nnsi_04;

// 10-4
cg2 cg2_01(.a1(bop), .a2(cgpp), .y(ncg2_01));
cg1 cg1_01(.a(cgrp), .y(ncg2_01));
cg1 cg1_02(.a(zf), .y(ncg2_01));
cg1 cg1_03(.a(yf), .y(ncg2_01));
nsi nsi_01(.a(ncg2_01), .y(nnsi_01));
cef cef_01(.a(nnsi_01), .y(wf));
cef cef_02(.a(nnsi_01), .y(wda));
cef cef_03(.a(wf), .y(w1));
cef cef_04(.a(wf), .y(w2));
cef cef_05(.a(wf), .y(w3));
cef cef_06(.a(wf), .y(w4));
cef cef_07(.a(wf), .y(w5));
cef cef_08(.a(wf), .y(w6));
cef cef_09(.a(wf), .y(w7));
cef cef_10(.a(wf), .y(w8));
i i_01(.a(wf), .y(wn));

// 10-5
cg2 cg2_02(.a1(bop), .a2(cgppn), .y(ncg2_02));
cg1 cg1_04(.a(cgqp), .y(ncg2_02));
cg1 cg1_05(.a(zf), .y(ncg2_02));
cg1 cg1_06(.a(wf), .y(ncg2_02));
nsi nsi_02(.a(ncg2_02), .y(nnsi_02));
cef cef_11(.a(nnsi_02), .y(xf));
cef cef_12(.a(nnsi_02), .y(xda));
cef cef_13(.a(xf), .y(x1));
cef cef_14(.a(xf), .y(x2));
cef cef_15(.a(xf), .y(x3));
cef cef_16(.a(xf), .y(x4));
cef cef_17(.a(xf), .y(x5));
cef cef_18(.a(xf), .y(x6));
cef cef_19(.a(xf), .y(x7));
cef cef_20(.a(xf), .y(x8));
i i_02(.a(xf), .y(xn));

// 10-6
cg2 cg2_03(.a1(bop), .a2(cgpp), .y(ncg2_03));
cg1 cg1_07(.a(cgrpn), .y(ncg2_03));
cg1 cg1_08(.a(xf), .y(ncg2_03));
cg1 cg1_09(.a(wf), .y(ncg2_03));
nsi nsi_03(.a(ncg2_03), .y(nnsi_03));
cef cef_21(.a(nnsi_03), .y(yf));
cef cef_22(.a(nnsi_03), .y(yda));
cef cef_23(.a(yf), .y(y1));
cef cef_24(.a(yf), .y(y2));
cef cef_25(.a(yf), .y(y3));
cef cef_26(.a(yf), .y(y4));
cef cef_27(.a(yf), .y(y5));
cef cef_28(.a(yf), .y(y6));
cef cef_29(.a(yf), .y(y7));
cef cef_30(.a(yf), .y(y8));
i i_03(.a(yf), .y(yn));

// 10-7
cg2 cg2_04(.a1(bop), .a2(cgppn), .y(ncg2_04));
cg1 cg1_10(.a(cgqpn), .y(ncg2_04));
cg1 cg1_11(.a(xf), .y(ncg2_04));
cg1 cg1_12(.a(yf), .y(ncg2_04));
nsi nsi_04(.a(ncg2_04), .y(nnsi_04));
cef cef_31(.a(nnsi_04), .y(zf));
cef cef_32(.a(nnsi_04), .y(zda));
cef cef_33(.a(zf), .y(z1));
cef cef_34(.a(zf), .y(z2));
cef cef_35(.a(zf), .y(z3));
cef cef_36(.a(zf), .y(z4));
cef cef_37(.a(zf), .y(z5));
cef cef_38(.a(zf), .y(z6));
cef cef_39(.a(zf), .y(z7));
cef cef_40(.a(zf), .y(z8));
i i_04(.a(zf), .y(zn));

endmodule
`default_nettype wire
