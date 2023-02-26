`timescale 1ns/1ps
`default_nettype none

module a4a12_clock_logic(
    input wire v1,
    input wire v5,

    input wire bo1,
    input wire bo2,
    input wire bo3,

    output wire a1rp,
    output wire a1rpn,
    output wire a1pp,
    output wire a1ppn,
    output wire a1qp,
    output wire a1qpn,
    output wire bo1p
);

// Internal wires
wire a1p;
wire a1pn;
wire a1q;
wire a1qn;
wire a1r;
wire a1rn;
wire a1rv;
wire a1rvn;
wire a1s;
wire a1sn;
wire a1sv;
wire a1svn;
wire a2p;
wire a2pn;
wire a2pp;
wire a2ppn;
wire a2q;
wire a2qn;
wire a2qp;
wire a2qpn;
wire a2r;
wire a2rn;
wire a2rp;
wire a2rpn;
wire a2rv;
wire a2rvn;
wire a2s;
wire a2sn;
wire a2sv;
wire a2svn;
wire a3p;
wire a3pn;
wire a3pp;
wire a3ppn;
wire a3q;
wire a3qn;
wire a3qp;
wire a3qpn;
wire a3r;
wire a3rn;
wire a3rp;
wire a3rpn;
wire a3rv;
wire a3rvn;
wire a3s;
wire a3sn;
wire a3sv;
wire a3svn;
wire bo1a;
wire bo2a;
wire bo2p;
wire bo3a;
wire bo3p;
wor na1a;
wire na2a;
wire na2b;
wire na2c;
wor na3a;
wor na4a;
wire na5a;
wire na5b;
wire na5c;
wire na5d;
wor na6a;
wire na6d;
wor na7a;
wire na7d;
wor na8a;
wor na8d;
wor na9a;
wor na9d;
wor na10a;
wire na11a;
wire na11b;
wire na11c;
wire na12a;
wire na13a;
wor na16a;
wire na15c;
wire na15d;
wire na15e;
wire na16f;
wor na17a;
wire na18a;
wire na18b;
wire na18c;
wire na19a;
wire na19b;
wire na20a;
wire na20b;
wor na22a;
wor na22d;
wor na23c;
wor na24a;
wor na25a;
wor na26a;
wor na26b;
wire na27a;
wor na27b;
wor na29a;
wire na29d;
wire na29e;
wire na29f;
wire na30a;
wire na30b;
wire na30c;
wor na31a;
wor na32a;
wire na33a;
wire na33b;
wire na33c;
wire na33d;
wire na33e;
wire na33f;
wor na34a;
wor na35a;

// 10-96
a a30a(.clk(v1), .a1(a1p), .a2(bo1), .y(na30a));
a a22a(.clk(v1), .exp(na30a), .a1(a1q), .y(na22a));
a a22b(.clk(v1), .a1(a1rn), .y(na22a));
i a22c(.a(na22a), .y(a1r));
a a30b(.clk(v1), .a1(a1p), .a2(bo1), .y(na30b));
a a29b(.clk(v1), .exp(na30b), .a1(a1qn), .y(na29a));
a #(1) a29a(.clk(v1), .a1(a1r), .y(na29a));
i a29c(.a(na29a), .y(a1rn));
efl a23a(.a(a1r), .y(a1rp));
efl a23b(.a(a1rn), .y(a1rpn));

a a11a(.clk(v1), .a1(a2p), .a2(bo2), .y(na11a));
a a9a(.clk(v1), .exp(na11a), .a1(a2q), .y(na9a));
a a9b(.clk(v1), .a1(a2rn), .y(na9a));
i a9c(.a(na9a), .y(a2r));
a a11b(.clk(v1), .a1(a2p), .a2(bo2), .y(na11b));
a a10b(.clk(v1), .exp(na11b), .a1(a2qn), .y(na10a));
a #(1) a10a(.clk(v1), .a1(a2r), .y(na10a));
i a10c(.a(na10a), .y(a2rn));
efl a15a(.a(a2r), .y(a2rp));
efl a15b(.a(a2rn), .y(a2rpn));

a a2a(.clk(v1), .a1(a3p), .a2(bo3), .y(na2a));
a a8a(.clk(v1), .exp(na2a), .a1(a3q), .y(na8a));
a a8b(.clk(v1), .a1(a3rn), .y(na8a));
i a8c(.a(na8a), .y(a3r));
a a2b(.clk(v1), .a1(a3p), .a2(bo3), .y(na2b));
a a1b(.clk(v1), .exp(na2b), .a1(a3qn), .y(na1a));
a #(1) a1a(.clk(v1), .a1(a3r), .y(na1a));
i a1c(.a(na1a), .y(a3rn));

tmv a26a(.en1(v5), .en2(v5), .en3(v5), .a1(a1r), .a2(a2r), .a3(a3r), .y(na26a));
vi a28a(.a(na26a), .y(a1rv));
tmv a19a(.en1(v5), .en2(v5), .en3(v5), .a1(a1r), .a2(a2r), .a3(a3r), .y(na19a));
vi a21a(.a(na19a), .y(a2rv));
tmv a12a(.en1(v5), .en2(v5), .en3(v5), .a1(a1r), .a2(a2r), .a3(a3r), .y(na12a));
vi a14a(.a(na12a), .y(a3rv));

tmv a27a(.en1(v5), .en2(v5), .en3(v5), .a1(a1rn), .a2(a2rn), .a3(a3rn), .y(na27a));
vi a28b(.a(na27a), .y(a1rvn));
tmv a20a(.en1(v5), .en2(v5), .en3(v5), .a1(a1rn), .a2(a2rn), .a3(a3rn), .y(na20a));
vi a21b(.a(na20a), .y(a2rvn));
tmv a13a(.en1(v5), .en2(v5), .en3(v5), .a1(a1rn), .a2(a2rn), .a3(a3rn), .y(na13a));
vi a14b(.a(na13a), .y(a3rvn));

// 10-97
a a30c(.clk(v1), .a1(a1pn), .a2(bo1), .y(na30c));
a a31a(.clk(v1), .exp(na30c), .a1(a1rvn), .y(na31a));
a a31b(.clk(v1), .a1(a1qn), .y(na31a));
i a31c(.a(na31a), .y(a1q));
a a33a(.clk(v1), .a1(bo1), .a2(a1pn), .y(na33a));
a a32b(.clk(v1), .exp(na33a), .a1(a1rv), .y(na32a));
a #(1) a32a(.clk(v1), .a1(a1q), .y(na32a));
i a32c(.a(na32a), .y(a1qn));

a a11c(.clk(v1), .a1(a2pn), .a2(bo2), .y(na11c));
a a17a(.clk(v1), .exp(na11c), .a1(a2rvn), .y(na17a));
a a17b(.clk(v1), .a1(a2qn), .y(na17a));
i a17c(.a(na17a), .y(a2q));
a a18a(.clk(v1), .a1(bo2), .a2(a2pn), .y(na18a));
a a16b(.clk(v1), .exp(na18a), .a1(a2rv), .y(na16a));
a #(1) a16a(.clk(v1), .a1(a2q), .y(na16a));
i a16c(.a(na16a), .y(a2qn));

a a2c(.clk(v1), .a1(a3pn), .a2(bo3), .y(na2c));
a a3a(.clk(v1), .exp(na2c), .a1(a3rvn), .y(na3a));
a a3b(.clk(v1), .a1(a3qn), .y(na3a));
i a3c(.a(na3a), .y(a3q));
a a5a(.clk(v1), .a1(bo3), .a2(a3pn), .y(na5a));
a a4b(.clk(v1), .exp(na5a), .a1(a3rv), .y(na4a));
a #(1) a4a(.clk(v1), .a1(a3q), .y(na4a));
i a4c(.a(na4a), .y(a3qn));

a a33b(.clk(v1), .a1(bo1), .a2(a1p), .y(na33b));
a a34a(.exp(na33b), .y(na34a));
a a34b(.clk(v1), .a1(a1sn), .y(na34a));
i a34c(.a(na34a), .y(a1s));
a a33c(.clk(v1), .a1(bo1), .a2(a1pn), .y(na33c));
a a35b(.exp(na33c), .y(na35a));
a #(1) a35a(.clk(v1), .a1(a1s), .y(na35a));
i a35c(.a(na35a), .y(a1sn));

a a18b(.clk(v1), .a1(bo2), .a2(a2p), .y(na18b));
a a25a(.exp(na18b), .y(na25a));
a a25b(.clk(v1), .a1(a2sn), .y(na25a));
i a25c(.a(na25a), .y(a2s));
a a18c(.clk(v1), .a1(bo2), .a2(a2pn), .y(na18c));
a a24b(.exp(na18c), .y(na24a));
a #(1) a24a(.clk(v1), .a1(a2s), .y(na24a));
i a24c(.a(na24a), .y(a2sn));

a a5b(.clk(v1), .a1(bo3), .a2(a3p), .y(na5b));
a a7a(.exp(na5b), .y(na7a));
a a7b(.clk(v1), .a1(a3sn), .y(na7a));
i a7c(.a(na7a), .y(a3s));
a a5c(.clk(v1), .a1(bo3), .a2(a3pn), .y(na5c));
a a6b(.exp(na5c), .y(na6a));
a #(1) a6a(.clk(v1), .a1(a3s), .y(na6a));
i a6c(.a(na6a), .y(a3sn));

// 10-98
a a15c(.clk(v1), .a1(a1svn), .y(na15c));
a a8d(.clk(v1), .exp(na15c), .a1(a1pn), .y(na8d));
a a15d(.a1(bo1), .y(na15d));
a a8e(.clk(v1), .exp(na15d), .a1(a1pn), .y(na8d));
i a8f(.a(na8d), .y(a1p));
a a15e(.clk(v1), .a1(a1sv), .y(na15e));
a a9e(.clk(v1), .exp(na15e), .a1(a1p), .y(na9d)); 
a #(1) a9d(.clk(v1), .exp(bo1a), .a1(a1p), .y(na9d));
i a9f(.a(na9d), .y(a1pn));
efl a16d(.a(a1p), .y(a1pp));
efl a16e(.a(a1pn), .y(a1ppn));

a a29d(.clk(v1), .a1(a2svn), .y(na29d));
a a22d(.clk(v1), .exp(na29d), .a1(a2pn), .y(na22d));
a a29e(.a1(bo2), .y(na29e));
a a22e(.clk(v1), .exp(na29e), .a1(a2pn), .y(na22d));
i a22f(.a(na22d), .y(a2p));
a a29f(.clk(v1), .a1(a2sv), .y(na29f));
a a23d(.clk(v1), .exp(na29f), .a1(a2p), .y(na23c));
a #(1) a23c(.clk(v1), .exp(bo2a), .a1(a2p), .y(na23c));
i a23e(.a(na23c), .y(a2pn));
efl a30d(.a(a2p), .y(a2pp));
efl a30e(.a(a2pn), .y(a2ppn));

a a33d(.clk(v1), .a1(a3svn), .y(na33d));
a a26b(.clk(v1), .exp(na33d), .a1(a3pn), .y(na26b));
a a33e(.a1(bo3), .y(na33e));
a a26c(.clk(v1), .exp(na33e), .a1(a3pn), .y(na26b));
i a26d(.a(na26b), .y(a3p));
a a33f(.clk(v1), .a1(a3sv), .y(na33f));
a a27c(.clk(v1), .exp(na33f), .a1(a3p), .y(na27b));
a #(1) a27b(.clk(v1), .exp(bo3a), .a1(a3p), .y(na27b));
i a27d(.a(na27b), .y(a3pn));
efl a34d(.a(a3p), .y(a3pp));
efl a34e(.a(a3pn), .y(a3ppn));

efl a10d(.a(bo1), .y(bo1p));
efl a24d(.a(bo2), .y(bo2p));
efl a28c(.a(bo3), .y(bo3p));

tmv a5d(.en1(v5), .en2(v5), .en3(v5), .a1(a1s), .a2(a2s), .a3(a3s), .y(na5d));
vi a12b(.a(na5d), .y(a1sv));
tmv a6d(.en1(v5), .en2(v5), .en3(v5), .a1(a1s), .a2(a2s), .a3(a3s), .y(na6d));
vi a13b(.a(na6d), .y(a2sv));
tmv a7d(.en1(v5), .en2(v5), .en3(v5), .a1(a1s), .a2(a2s), .a3(a3s), .y(na7d));
vi a14c(.a(na7d), .y(a3sv));

tmv a16f(.en1(v5), .en2(v5), .en3(v5), .a1(a1sn), .a2(a2sn), .a3(a3sn), .y(na16f));
vi a12c(.a(na16f), .y(a1svn));
tmv a19b(.en1(v5), .en2(v5), .en3(v5), .a1(a1sn), .a2(a2sn), .a3(a3sn), .y(na19b));
vi a13c(.a(na19b), .y(a2svn));
tmv a20b(.en1(v5), .en2(v5), .en3(v5), .a1(a1sn), .a2(a2sn), .a3(a3sn), .y(na20b));
vi a14d(.a(na20b), .y(a3svn));

// 10-99
efl a10e(.a(bo1), .y(bo1a));
efl a24e(.a(bo2), .y(bo2a));
efl a28d(.a(bo3), .y(bo3a));

efl a1d(.a(a1q), .y(a1qp));
efl a1e(.a(a1qn), .y(a1qpn));

efl a2d(.a(a2q), .y(a2qp));
efl a2e(.a(a2qn), .y(a2qpn));

efl a3d(.a(a3q), .y(a3qp));
efl a3e(.a(a3qn), .y(a3qpn));

efl a4d(.a(a3r), .y(a3rp));
efl a4e(.a(a3rn), .y(a3rpn));

endmodule
`default_nettype wire
