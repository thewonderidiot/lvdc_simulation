`timescale 1ns/1ps
`default_nettype none

module delay_line(
    input wire v1,
    input wire v5,
    input wire bon,
    input wire dl31,
    input wire dl44,
    input wire w7,
    input wire wn,
    input wire x3,
    input wire xn,
    input wire y8,
    input wire yn,
    input wire z2,
    input wire zn
);

wire acc0;
wire acc0n;
wire ai0;
wire ai0n;
wire dl31sa;
wire dl44sa;
wire dld31b;
wire dld44b;
wire md0;
wire md0n;
wire mr0;
wire mr0n;
wire nu;
wire nun;
wire pqr;
wire pqrn;
wire pr;
wire prn;
wire stp;
wire stpn;
wire tp3;
wire tp16;

wor na5a;
wire na9a;
wire na9b;
wire na13a;
wire na13b;
wor na14b;
wor na16b;
wire na17a;
wire na17b;
wire na19a;
wire na19b;
wor na20b;
wor na23b;
wor na24b;
wire na25a;
wire na25b;
wor na26b;
wor na27b;
wire na30a;
wire na30b;
wire na33a;
wire na33b;
wire na34a;
wire na34b;

// 10-12
a a9a(.clk(w7), .y(na9a));
a a8a(.clk(w7), .exp(na9a), .a1(dl44sa), .y(na5a));
a a5a(.clk(zn), .a1(prn), .y(na5a));
i a8b(.a(na5a), .y(pr));
i a9c(.a(na9b), .y(prn));
a #(1) a9b(.clk(v1), .a1(pr), .y(na9b));

a a17a(.clk(x3), .y(na17a));
a a16a(.clk(x3), .exp(na17a), .a1(dl44sa), .y(na16b));
a a16b(.clk(wn), .a1(md0n), .y(na16b));
i a16c(.a(na16b), .y(md0));
i a17c(.a(na17b), .y(md0n));
a #(1) a17b(.clk(v1), .a1(md0), .y(na17b));

a a30a(.clk(y8), .y(na30a));
a a23a(.clk(y8), .exp(na30a), .a1(dl44sa), .y(na23b));
a a23b(.clk(xn), .a1(mr0n), .y(na23b));
i a23c(.a(na23b), .y(mr0));
i a30c(.a(na30b), .y(mr0n));
a #(1) a30b(.clk(v1), .a1(mr0), .y(na30b));

a a25a(.clk(z2), .y(na25a));
a a24a(.clk(z2), .exp(na25a), .a1(dl44sa), .y(na24b));
a a24b(.clk(yn), .a1(acc0n), .y(na24b));
i a24c(.a(na24b), .y(acc0));
i a25c(.a(na25b), .y(acc0n));
a #(1) a25b(.clk(v1), .a1(acc0), .y(na25b));

a a13a(.clk(w7), .y(na13a));
a a14a(.clk(w7), .exp(na13a), .a1(dl31sa), .y(na14b));
a a14b(.clk(zn), .a1(stpn), .y(na14b));
i a14c(.a(na14b), .y(stp));
i a13c(.a(na13b), .y(stpn));
a #(1) a13b(.clk(v1), .a1(stp), .y(na13b));

a a19a(.clk(x3), .y(na19a));
a a20a(.clk(x3), .exp(na19a), .a1(dl31sa), .y(na20b));
a a20b(.clk(wn), .a1(ai0n), .y(na20b));
i a20c(.a(na20b), .y(ai0));
i a19c(.a(na19b), .y(ai0n));
a #(1) a19b(.clk(v1), .a1(ai0), .y(na19b));

a a34a(.clk(y8), .y(na34a));
a a27a(.clk(y8), .exp(na34a), .a1(dl31sa), .y(na27b));
a a27b(.clk(xn), .a1(nun), .y(na27b));
i a27c(.a(na27b), .y(nu));
i a34c(.a(na34b), .y(nun));
a #(1) a34b(.clk(v1), .a1(nu), .y(na34b));

a a33a(.clk(z2), .y(na33a));
a a26a(.clk(z2), .exp(na33a), .a1(dl31sa), .y(na26b));
a a26b(.clk(yn), .a1(pqrn), .y(na26b));
i a26c(.a(na26b), .y(pqr));
i a33c(.a(na33b), .y(pqrn));
a #(1) a33b(.clk(v1), .a1(pqr), .y(na33b));

// 10-13
dld a2(.volt(v5), .gate(dl44), .clk(bon), .y(dld44b));
dl #(44500) dl1(.a(dld44b), .y(tp3));
dsa a15(.a(tp3), .y(dl44sa));

dld a6(.volt(v5), .gate(dl31), .clk(bon), .y(dld31b));
dl #(30207) dl2(.a(dld31b), .y(tp16));
dsa a21(.a(tp16), .y(dl31sa));

endmodule
`default_nettype wire
