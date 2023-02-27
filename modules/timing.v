`timescale 1ns/1ps
`default_nettype none

module timing(
    input wire v1,
    input wire v4mod1,

    input wire av,
    input wire avn,
    input wire g1v,
    input wire g1vn,
    input wire g2v,
    input wire g2vn,
    input wire g3v,
    input wire g3vn,
    input wire g4v,
    input wire g4vn,
    input wire g5v,
    input wire g5vn,
    input wire g6v,
    input wire g6vn,
    input wire g7v,
    input wire g7vn,
    input wire pav,
    input wire pavn,
    input wire pbv,
    input wire pbvn,
    input wire pcv,
    input wire pcvn,
    input wire w7,
    input wire y5,

    output wire a,
    output wire an,
    output wire g1,
    output wire g1n,
    output wire g2,
    output wire g2n,
    output wire g3,
    output wire g3n,
    output wire g4,
    output wire g4n,
    output wire g5,
    output wire g5n,
    output wire g6,
    output wire g6n,
    output wire g7,
    output wire g7n,
    output wire pa,
    output wire pan,
    output wire pb,
    output wire pbn,
    output wire pc,
    output wire pcn
);

wire ab;
wire abn;
wire tbc;
wire tbcn;

wire na2b;
wire na6b;
wire na8a;
wor na8b;
wor na9a;
wor na9d;
wire na9f;
wire na10a;
wor na10b;
wor na11b;
wor na11d;
wire na12a;
wor na12b;
wor na13a;
wor na13d;
wire na14a;
wor na14b;
wor na15a;
wor na16b;
wor na16d;
wor na17a;
wire na17d;
wire na17e;
wor na18a;
wor na18d;
wire na18e;
wor na19a;
wire na19d;
wor na20b;
wor na20e;
wor na21a;
wor na22a;
wire na22b;
wire na23a;
wire na23b;
wire na23c;
wire na23e;
wire na24b;
wor na25b;
wor na26a;
wire na26c;
wire na27a;
wire na27b;
wire na27c;
wor na29a;
wor na32a;
wor na33a;

// 10-38
a a24a(.clk(w7), .exp(na24b), .a1(g5vn), .a2(g4vn), .a3(g3vn), .y(na26a));
a a24b(.a1(g2vn), .a2(g6vn), .a3(g7vn), .a4(avn), .y(na24b));
a a26a(.clk(v4mod1), .a1(g1), .y(na26a));
i a26b(.a(na26a), .y(g1n));
i a33c(.a(na33a), .y(g1));
a #(1) a33a(.clk(v4mod1), .a1(g1n), .y(na33a));
a a33b(.clk(w7), .exp(na26c), .a1(g7v), .y(na33a));
a a26c(.a1(av), .y(na26c));

a a2a(.clk(w7), .exp(na8a), .y(na8b));
a a8a(.a1(av), .a2(g1v), .y(na8a));
a a8b(.clk(v4mod1), .a1(g2), .y(na8b));
i a8c(.a(na8b), .y(g2n));
i a15c(.a(na15a), .y(g2));
a #(1) a15a(.clk(v4mod1), .a1(g2n), .y(na15a));
a a15b(.clk(w7), .exp(na23a), .a1(g1vn), .y(na15a));
a a23a(.a1(avn), .y(na23a));

a a23b(.clk(w7), .a1(avn), .y(na23b));
a a16a(.exp(na23b), .a1(g2v), .y(na16b));
a a16b(.clk(v4mod1), .a1(g3), .y(na16b));
i a16c(.a(na16b), .y(g3n));
i a9c(.a(na9a), .y(g3));
a #(1) a9a(.clk(v4mod1), .a1(g3n), .y(na9a));
a a9b(.clk(w7), .exp(na2b), .a1(g2vn), .y(na9a));
a a2b(.a1(av), .y(na2b));

a a2c(.clk(w7), .exp(na10a), .y(na10b));
a a10a(.a1(av), .a2(g3v), .y(na10a));
a a10b(.clk(v4mod1), .a1(g4), .y(na10b));
i a10c(.a(na10b), .y(g4n));
i a17c(.a(na17a), .y(g4));
a #(1) a17a(.clk(v4mod1), .a1(g4n), .y(na17a));
a a17b(.clk(w7), .exp(na23c), .a1(g3vn), .y(na17a));
a a23c(.a1(avn), .y(na23c));

a a6a(.clk(w7), .exp(na12a), .y(na12b));
a a12a(.a1(avn), .a2(g4v), .y(na12a));
a a12b(.clk(v4mod1), .a1(g5), .y(na12b));
i a12c(.a(na12b), .y(g5n));
i a19c(.a(na19a), .y(g5));
a #(1) a19a(.clk(v4mod1), .a1(g5n), .y(na19a));
a a19b(.clk(w7), .exp(na27a), .a1(g4vn), .y(na19a));
a a27a(.a1(av), .y(na27a));

a a27b(.clk(w7), .a1(av), .y(na27b));
a a20a(.exp(na27b), .a1(g5v), .y(na20b));
a a20b(.clk(v4mod1), .a1(g6), .y(na20b));
i a20c(.a(na20b), .y(g6n));
i a13c(.a(na13a), .y(g6));
a #(1) a13a(.clk(v4mod1), .a1(g6n), .y(na13a));
a a13b(.clk(w7), .exp(na6b), .a1(g5vn), .y(na13a));
a a6b(.a1(avn), .y(na6b));

// 10-39
a a6c(.clk(w7), .exp(na14a), .y(na14b));
a a14a(.a1(avn), .a2(g6v), .y(na14a));
a a14b(.clk(v4mod1), .a1(g7), .y(na14b));
i a14c(.a(na14b), .y(g7n));
i a21c(.a(na21a), .y(g7));
a #(1) a21a(.clk(v4mod1), .a1(g7n), .y(na21a));
a a21b(.clk(w7), .exp(na27c), .a1(g6vn), .y(na21a));
a a27c(.a1(av), .y(na27c));

a a11a(.clk(w7), .a1(avn), .y(na11b));
a a11b(.clk(v1), .a1(abn), .y(na11b));
i a11c(.a(na11b), .y(ab));
i a18c(.a(na18a), .y(abn));
a #(1) a18a(.clk(v1), .a1(ab), .y(na18a));
a a18b(.clk(w7), .a1(av), .y(na18a));

a a25a(.clk(y5), .a1(ab), .y(na25b));
a a25b(.clk(v4mod1), .a1(an), .y(na25b));
i a25c(.a(na25b), .y(a));
i a32c(.a(na32a), .y(an));
a #(1) a32a(.clk(v4mod1), .a1(a), .y(na32a));
a a32b(.clk(y5), .a1(abn), .y(na32a));

// 10-40
a a10d(.clk(w7), .exp(na17d), .a1(g2vn), .a2(g7vn), .a3(avn), .y(na9d));
a a17d(.a1(pbvn), .y(na17d));
a a9d(.clk(v4mod1), .a1(pa), .y(na9d));
i a9e(.a(na9d), .y(pan));
i a16f(.a(na16d), .y(pa)); 
a #(1) a16d(.clk(v4mod1), .a1(pan), .y(na16d));
a a16e(.clk(y5), .exp(na9f), .a1(pbv), .y(na16d));
a a9f(.a1(g1v), .y(na9f));

a a19d(.clk(y5), .a1(pbv), .y(na19d));
a a20d(.exp(na19d), .a1(g3v), .y(na20e));
a a20e(.clk(v1), .a1(tbc), .y(na20e));
i a20f(.a(na20e), .y(tbcn));
i a13f(.a(na13d), .y(tbc));
a #(1) a13d(.clk(v4mod1), .a1(tbcn), .y(na13d));
a a13e(.clk(y5), .a1(pav), .y(na13d));

// 10-41
a a10e(.clk(w7), .exp(na17e), .a1(pav), .a2(pcvn), .a3(g7vn), .y(na11d));
a a17e(.a1(g2vn), .a2(avn), .y(na17e));
a a11d(.clk(v4mod1), .a1(pb), .y(na11d));
i a11e(.a(na11d), .y(pbn));
i a18f(.a(na18d), .y(pb));
a #(1) a18d(.clk(v4mod1), .a1(pbn), .y(na18d));
a a11f(.clk(y5), .exp(na18e), .a1(pavn), .y(na18d));
a a18e(.a1(pcv), .a2(g1v), .y(na18e));

a a23d(.clk(w7), .exp(na23e), .a1(pavn), .a2(g7vn), .y(na22a));
a a23e(.a1(g2vn), .a2(avn), .a3(pbv), .y(na23e));
a a22a(.clk(v4mod1), .a1(pc), .y(na22a));
i a22c(.a(na22a), .y(pcn));
i a29c(.a(na29a), .y(pc));
a #(1) a29a(.clk(v4mod1), .a1(pcn), .y(na29a));
a a29b(.clk(y5), .exp(na22b), .a1(pbvn), .y(na29a));
a a22b(.a1(pav), .a2(g1v), .y(na22b));

endmodule
`default_nettype wire
