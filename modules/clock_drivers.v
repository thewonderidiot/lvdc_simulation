`timescale 1ns/1ps
`default_nettype none

module clock_drivers(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire BOP,
    input wire CGPP,
    input wire CGPPN,
    input wire CGQP,
    input wire CGQPN,
    input wire CGRP,
    input wire CGRPN,
    output wire W1,
    output wire W2,
    output wire W3,
    output wire W5,
    output wire W6,
    output wire W7,
    output wire W8,
    output wire WDA,
    output wire WN,
    output wire X1,
    output wire X2,
    output wire X3,
    output wire X4,
    output wire X5,
    output wire X7,
    output wire X8,
    output wire XDA,
    output wire XN,
    output wire Y1,
    output wire Y3,
    output wire Y4,
    output wire Y5,
    output wire Y6,
    output wire Y7,
    output wire Y8,
    output wire YDA,
    output wire YN,
    output wire Z1,
    output wire Z2,
    output wire Z3,
    output wire Z4,
    output wire Z5,
    output wire Z6,
    output wire Z7,
    output wire Z8,
    output wire ZDA,
    output wire ZN
);

wire W4;
wire WF;
wire X6;
wire XF;
wire Y2;
wire YF;
wire ZF;

wire ncg2w;
wire ncg2w_cg2w;
wire ncg2w_cg1wa;
wire ncg2w_cg1wb;
wire ncg2w_cg1wc;
assign ncg2w = ncg2w_cg2w | ncg2w_cg1wa | ncg2w_cg1wb | ncg2w_cg1wc;
wire ncg2x;
wire ncg2x_cg2x;
wire ncg2x_cg1xa;
wire ncg2x_cg1xb;
wire ncg2x_cg1xc;
assign ncg2x = ncg2x_cg2x | ncg2x_cg1xa | ncg2x_cg1xb | ncg2x_cg1xc;
wire ncg2y;
wire ncg2y_cg2y;
wire ncg2y_cg1ya;
wire ncg2y_cg1yb;
wire ncg2y_cg1yc;
assign ncg2y = ncg2y_cg2y | ncg2y_cg1ya | ncg2y_cg1yb | ncg2y_cg1yc;
wire ncg2z;
wire ncg2z_cg2z;
wire ncg2z_cg1za;
wire ncg2z_cg1zb;
wire ncg2z_cg1zc;
assign ncg2z = ncg2z_cg2z | ncg2z_cg1za | ncg2z_cg1zb | ncg2z_cg1zc;
wire nnsiw;
wire nnsix;
wire nnsiy;
wire nnsiz;

// 10-4
cg2 cg2w(ncg2w_cg2w, BOP, CGPP);
cg1 cg1wa(ncg2w_cg1wa, CGRP);
cg1 cg1wb(ncg2w_cg1wb, ZF);
cg1 cg1wc(ncg2w_cg1wc, YF);
nsi nsiw(nnsiw, ncg2w, SIM_CLK, SIM_RST);
cef cefwa(WF, nnsiw);
cef cefwb(WDA, nnsiw);
cef cefwc(W1, WF);
cef cefwd(W2, WF);
cef cefwe(W3, WF);
cef cefwf(W4, WF);
cef cefwg(W5, WF);
cef cefwh(W6, WF);
cef cefwi(W7, WF);
cef cefwj(W8, WF);
inv iw(WN, WF, SIM_CLK, SIM_RST);

// 10-5
cg2 cg2x(ncg2x_cg2x, BOP, CGPPN);
cg1 cg1xa(ncg2x_cg1xa, CGQP);
cg1 cg1xb(ncg2x_cg1xb, ZF);
cg1 cg1xc(ncg2x_cg1xc, WF);
nsi nsix(nnsix, ncg2x, SIM_CLK, SIM_RST);
cef cefxa(XF, nnsix);
cef cefxb(XDA, nnsix);
cef cefxc(X1, XF);
cef cefxd(X2, XF);
cef cefxe(X3, XF);
cef cefxf(X4, XF);
cef cefxg(X5, XF);
cef cefxh(X6, XF);
cef cefxi(X7, XF);
cef cefxj(X8, XF);
inv ix(XN, XF, SIM_CLK, SIM_RST);

// 10-6
cg2 cg2y(ncg2y_cg2y, BOP, CGPP);
cg1 cg1ya(ncg2y_cg1ya, CGRPN);
cg1 cg1yb(ncg2y_cg1yb, XF);
cg1 cg1yc(ncg2y_cg1yc, WF);
nsi nsiy(nnsiy, ncg2y, SIM_CLK, SIM_RST);
cef cefya(YF, nnsiy);
cef cefyb(YDA, nnsiy);
cef cefyc(Y1, YF);
cef cefyd(Y2, YF);
cef cefye(Y3, YF);
cef cefyf(Y4, YF);
cef cefyg(Y5, YF);
cef cefyh(Y6, YF);
cef cefyi(Y7, YF);
cef cefyj(Y8, YF);
inv iy(YN, YF, SIM_CLK, SIM_RST);

// 10-7
cg2 cg2z(ncg2z_cg2z, BOP, CGPPN);
cg1 cg1za(ncg2z_cg1za, CGQPN);
cg1 cg1zb(ncg2z_cg1zb, XF);
cg1 cg1zc(ncg2z_cg1zc, YF);
nsi nsiz(nnsiz, ncg2z, SIM_CLK, SIM_RST);
cef cefza(ZF, nnsiz);
cef cefzb(ZDA, nnsiz);
cef cefzc(Z1, ZF);
cef cefzd(Z2, ZF);
cef cefze(Z3, ZF);
cef cefzf(Z4, ZF);
cef cefzg(Z5, ZF);
cef cefzh(Z6, ZF);
cef cefzi(Z7, ZF);
cef cefzj(Z8, ZF);
inv iz(ZN, ZF, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
