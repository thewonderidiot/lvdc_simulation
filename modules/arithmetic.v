`timescale 1ns/1ps
`default_nettype none

module arithmetic(
    input wire v1,
    input wire a1v,
    input wire a2v,
    input wire a5v,
    input wire a6v,
    input wire av,
    input wire avn,
    input wire ai1v,
    input wire ai3v,
    input wire cstv,
    input wire exmvn,
    input wire g1v,
    input wire g1vn,
    input wire g3vn,
    input wire g4v,
    input wire g5v,
    input wire g5vn,
    input wire g6vn,
    input wire g7v,
    input wire g7vn,
    input wire intv,
    input wire hoyv,
    input wire op1v,
    input wire op1vn,
    input wire op2v,
    input wire op2vn,
    input wire op3v,
    input wire op3vn,
    input wire op4v,
    input wire op4vn,
    input wire p3vn,
    input wire pav,
    input wire pavn,
    input wire pbv,
    input wire pcv,
    input wire q8v,
    input wire shfv,
    input wire tbcv,
    input wire voyvn,
    input wire w1,
    input wire x3,
    input wire y7,
    input wire z3,
    input wire zn
);

wire ai4;
wire ai4n;
wire and_;
wire andn;
wire b;
wire bn;
wire c;
wire cn;
wire q8d;
wire q8dn;
wire rac;
wire racn;

assign ai4 = 0;
assign ai4n = 1;
assign b = 0;
assign bn = 1;

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
a a7a(.clk(v1), .exp(na7b), .a1(cn), .y(na7a));
a a7b(.a1(andn), .y(na7b));
a a21a(.clk(z3), .exp(na35a), .a1(op1v), .a2(ai4n), .a3(bn), .y(na7a));
a a35a(.a1(op2v), .y(na35a));
a a20a(.clk(z3), .a1(pavn), .y(na20a));
a a14a(.exp(na20a), .a1(op3vn), .a2(bn), .a3(ai4), .y(na7a));
a a14b(.clk(z3), .a1(pav), .a2(ai4n), .y(na7a));
a a6a(.clk(x3), .a1(hoyv), .a2(voyvn), .a3(p3vn), .y(na7a));
a a6b(.clk(x3), .exp(na5a), .a1(av), .a2(g1v), .a3(g3vn), .y(na7a));
a a5a(.a1(pav), .a2(cstv), .y(na5a));
a a34a(.clk(z3), .a1(b), .a2(ai4n), .a3(op2vn), .y(na7a));
a #(1) a35b(.clk(x3), .a1(intv), .y(na7a));
i a7c(.a(na7a), .y(c));
a a28a(.clk(v1), .a1(c), .y(na28a));
a a28b(.exp(na21b), .y(na28a));
a a21b(.clk(z3), .a1(ai4), .a2(b), .a3(op1v), .a4(op2v), .y(na21b));
a a27a(.exp(na20b), .a1(op3vn), .a2(op4vn), .a3(ai4n), .y(na28a));
a a20b(.clk(z3), .a1(b), .y(na20b));
a a27b(.a1(pcv), .a2(ai3v), .a3(g7vn), .a4(g1vn), .y(na27b));
a a33a(.clk(z3), .exp(na27b), .a1(shfv), .a2(a1v), .y(na28a));
a a33b(.clk(x3), .exp(na32a), .a1(shfv), .a2(pcv), .a3(a2v), .y(na28a));
a a32a(.a1(avn), .a2(g5vn), .a3(ai1v), .a4(g7v), .y(na32a));
a a32b(.clk(w1), .exp(na20c), .a1(pav), .a2(av), .a3(g3vn), .y(na28a));
a a20c(.a1(g1v), .a2(exmvn), .y(na20c));
a a34b(.exp(na35c), .a1(tbcv), .a2(racn), .a3(op2vn), .y(na28a));
a a35c(.clk(z3), .a1(bn), .a2(ai4), .y(na35c));
a a25a(.a1(op3v), .y(na35c));
i a28c(.a(na28a), .y(cn));

a a10a(.clk(v1), .a1(q8dn), .y(na10a));
i a10b(.a(na10a), .y(q8d));
i a24c(.a(na24a), .y(q8dn));
a #(1) a24a(.clk(zn), .a1(q8d), .y(na24a));
a a24b(.clk(w1), .a1(q8v), .y(na24a));

a #(1) a3a(.clk(v1), .a1(andn), .y(na3a));
i a3c(.a(na3a), .y(and_));
i a5c(.a(na3b), .y(andn));
a a3b(.clk(zn), .a1(and_), .y(na3b));
a a4a(.clk(w1), .a1(op1vn), .a2(op2v), .a3(op3v), .a4(op4vn), .y(na4a));
a a5b(.exp(na4a), .a1(tbcv), .y(na3b));

a a25b(.a1(op2v), .y(na25b));
a a31a(.clk(z3), .exp(na25b), .a1(pav), .a2(op1v), .a3(op3vn), .y(na19a));
a a26a(.clk(z3), .a1(pav), .a2(op1vn), .a3(op4v), .y(na19a));
a a26b(.clk(z3), .a1(pav), .a2(op2vn), .a3(op4vn), .y(na19a));
a a19a(.clk(v1), .a1(rac), .y(na19a));
i a19b(.a(na19a), .y(racn));
i a11c(.a(na11a), .y(rac));
a #(1) a11a(.clk(v1), .a1(racn), .y(na11a));
a a12a(.clk(y7), .a1(pav), .a2(g1vn), .a3(g7vn), .y(na11a));
a a11b(.clk(z3), .a1(shfv), .y(na11b));
a a12b(.exp(na11b), .a1(a5v), .a2(pbv), .a3(g4v), .y(na11a));
a a19c(.clk(z3), .a1(shfv), .y(na19c));
a a18a(.exp(na19c), .a1(g5v), .a2(a6v), .a3(pbv), .y(na11a));
a a17a(.clk(z3), .exp(na18b), .a1(g6vn), .y(na11a));
a a18b(.a1(g7v), .a2(a2v), .a3(pcv), .a4(shfv), .y(na18b));

// 10-27




endmodule
`default_nettype wire
