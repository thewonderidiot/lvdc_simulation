`timescale 1ns/1ps
`default_nettype none

module clock_logic(
    input wire V1,
    input wire V5,

    input wire BO1,
    input wire BO2,
    input wire BO3,

    output wire A1RP,
    output wire A1RPN,
    output wire A1PP,
    output wire A1PPN,
    output wire A1QP,
    output wire A1QPN,
    output wire BO1P
);

// Internal wires
wire A1P;
wire A1PN;
wire A1Q;
wire A1QN;
wire A1R;
wire A1RN;
wire A1RV;
wire A1RVN;
wire A1S;
wire A1SN;
wire A1SV;
wire A1SVN;
wire A2P;
wire A2PN;
wire A2PP;
wire A2PPN;
wire A2Q;
wire A2QN;
wire A2QP;
wire A2QPN;
wire A2R;
wire A2RN;
wire A2RP;
wire A2RPN;
wire A2RV;
wire A2RVN;
wire A2S;
wire A2SN;
wire A2SV;
wire A2SVN;
wire A3P;
wire A3PN;
wire A3PP;
wire A3PPN;
wire A3Q;
wire A3QN;
wire A3QP;
wire A3QPN;
wire A3R;
wire A3RN;
wire A3RP;
wire A3RPN;
wire A3RV;
wire A3RVN;
wire A3S;
wire A3SN;
wire A3SV;
wire A3SVN;
wire BO1A;
wire BO2A;
wire BO2P;
wire BO3A;
wire BO3P;

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
a a30a(.clk(V1), .a1(A1P), .a2(BO1), .y(na30a));
a a22a(.clk(V1), .exp(na30a), .a1(A1Q), .y(na22a));
a a22b(.clk(V1), .a1(A1RN), .y(na22a));
i #(0) a22c(.a(na22a), .y(A1R));
a a30b(.clk(V1), .a1(A1P), .a2(BO1), .y(na30b));
a a29b(.clk(V1), .exp(na30b), .a1(A1QN), .y(na29a));
a a29a(.clk(V1), .a1(A1R), .y(na29a));
i a29c(.a(na29a), .y(A1RN));
efl a23a(.a(A1R), .y(A1RP));
efl a23b(.a(A1RN), .y(A1RPN));

a a11a(.clk(V1), .a1(A2P), .a2(BO2), .y(na11a));
a a9a(.clk(V1), .exp(na11a), .a1(A2Q), .y(na9a));
a a9b(.clk(V1), .a1(A2RN), .y(na9a));
i #(0) a9c(.a(na9a), .y(A2R));
a a11b(.clk(V1), .a1(A2P), .a2(BO2), .y(na11b));
a a10b(.clk(V1), .exp(na11b), .a1(A2QN), .y(na10a));
a a10a(.clk(V1), .a1(A2R), .y(na10a));
i a10c(.a(na10a), .y(A2RN));
efl a15a(.a(A2R), .y(A2RP));
efl a15b(.a(A2RN), .y(A2RPN));

a a2a(.clk(V1), .a1(A3P), .a2(BO3), .y(na2a));
a a8a(.clk(V1), .exp(na2a), .a1(A3Q), .y(na8a));
a a8b(.clk(V1), .a1(A3RN), .y(na8a));
i #(0) a8c(.a(na8a), .y(A3R));
a a2b(.clk(V1), .a1(A3P), .a2(BO3), .y(na2b));
a a1b(.clk(V1), .exp(na2b), .a1(A3QN), .y(na1a));
a a1a(.clk(V1), .a1(A3R), .y(na1a));
i a1c(.a(na1a), .y(A3RN));

tmv a26a(.en1(V5), .en2(V5), .en3(V5), .a1(A1R), .a2(A2R), .a3(A3R), .y(na26a));
vi a28a(.a(na26a), .y(A1RV));
tmv a19a(.en1(V5), .en2(V5), .en3(V5), .a1(A1R), .a2(A2R), .a3(A3R), .y(na19a));
vi a21a(.a(na19a), .y(A2RV));
tmv a12a(.en1(V5), .en2(V5), .en3(V5), .a1(A1R), .a2(A2R), .a3(A3R), .y(na12a));
vi a14a(.a(na12a), .y(A3RV));

tmv a27a(.en1(V5), .en2(V5), .en3(V5), .a1(A1RN), .a2(A2RN), .a3(A3RN), .y(na27a));
vi a28b(.a(na27a), .y(A1RVN));
tmv a20a(.en1(V5), .en2(V5), .en3(V5), .a1(A1RN), .a2(A2RN), .a3(A3RN), .y(na20a));
vi a21b(.a(na20a), .y(A2RVN));
tmv a13a(.en1(V5), .en2(V5), .en3(V5), .a1(A1RN), .a2(A2RN), .a3(A3RN), .y(na13a));
vi a14b(.a(na13a), .y(A3RVN));

// 10-97
a a30c(.clk(V1), .a1(A1PN), .a2(BO1), .y(na30c));
a a31a(.clk(V1), .exp(na30c), .a1(A1RVN), .y(na31a));
a a31b(.clk(V1), .a1(A1QN), .y(na31a));
i #(0) a31c(.a(na31a), .y(A1Q));
a a33a(.clk(V1), .a1(BO1), .a2(A1PN), .y(na33a));
a a32b(.clk(V1), .exp(na33a), .a1(A1RV), .y(na32a));
a a32a(.clk(V1), .a1(A1Q), .y(na32a));
i a32c(.a(na32a), .y(A1QN));

a a11c(.clk(V1), .a1(A2PN), .a2(BO2), .y(na11c));
a a17a(.clk(V1), .exp(na11c), .a1(A2RVN), .y(na17a));
a a17b(.clk(V1), .a1(A2QN), .y(na17a));
i #(0) a17c(.a(na17a), .y(A2Q));
a a18a(.clk(V1), .a1(BO2), .a2(A2PN), .y(na18a));
a a16b(.clk(V1), .exp(na18a), .a1(A2RV), .y(na16a));
a a16a(.clk(V1), .a1(A2Q), .y(na16a));
i a16c(.a(na16a), .y(A2QN));

a a2c(.clk(V1), .a1(A3PN), .a2(BO3), .y(na2c));
a a3a(.clk(V1), .exp(na2c), .a1(A3RVN), .y(na3a));
a a3b(.clk(V1), .a1(A3QN), .y(na3a));
i #(0) a3c(.a(na3a), .y(A3Q));
a a5a(.clk(V1), .a1(BO3), .a2(A3PN), .y(na5a));
a a4b(.clk(V1), .exp(na5a), .a1(A3RV), .y(na4a));
a a4a(.clk(V1), .a1(A3Q), .y(na4a));
i a4c(.a(na4a), .y(A3QN));

a a33b(.clk(V1), .a1(BO1), .a2(A1P), .y(na33b));
a a34a(.exp(na33b), .y(na34a));
a a34b(.clk(V1), .a1(A1SN), .y(na34a));
i #(0) a34c(.a(na34a), .y(A1S));
a a33c(.clk(V1), .a1(BO1), .a2(A1PN), .y(na33c));
a a35b(.exp(na33c), .y(na35a));
a a35a(.clk(V1), .a1(A1S), .y(na35a));
i a35c(.a(na35a), .y(A1SN));

a a18b(.clk(V1), .a1(BO2), .a2(A2P), .y(na18b));
a a25a(.exp(na18b), .y(na25a));
a a25b(.clk(V1), .a1(A2SN), .y(na25a));
i #(0) a25c(.a(na25a), .y(A2S));
a a18c(.clk(V1), .a1(BO2), .a2(A2PN), .y(na18c));
a a24b(.exp(na18c), .y(na24a));
a a24a(.clk(V1), .a1(A2S), .y(na24a));
i a24c(.a(na24a), .y(A2SN));

a a5b(.clk(V1), .a1(BO3), .a2(A3P), .y(na5b));
a a7a(.exp(na5b), .y(na7a));
a a7b(.clk(V1), .a1(A3SN), .y(na7a));
i #(0) a7c(.a(na7a), .y(A3S));
a a5c(.clk(V1), .a1(BO3), .a2(A3PN), .y(na5c));
a a6b(.exp(na5c), .y(na6a));
a a6a(.clk(V1), .a1(A3S), .y(na6a));
i a6c(.a(na6a), .y(A3SN));

// 10-98
a a15c(.clk(V1), .a1(A1SVN), .y(na15c));
a a8d(.clk(V1), .exp(na15c), .a1(A1PN), .y(na8d));
a a15d(.a1(BO1), .y(na15d));
a a8e(.clk(V1), .exp(na15d), .a1(A1PN), .y(na8d));
i #(0) a8f(.a(na8d), .y(A1P));
a a15e(.clk(V1), .a1(A1SV), .y(na15e));
a a9e(.clk(V1), .exp(na15e), .a1(A1P), .y(na9d)); 
a a9d(.clk(V1), .exp(BO1A), .a1(A1P), .y(na9d));
i a9f(.a(na9d), .y(A1PN));
efl a16d(.a(A1P), .y(A1PP));
efl a16e(.a(A1PN), .y(A1PPN));

a a29d(.clk(V1), .a1(A2SVN), .y(na29d));
a a22d(.clk(V1), .exp(na29d), .a1(A2PN), .y(na22d));
a a29e(.a1(BO2), .y(na29e));
a a22e(.clk(V1), .exp(na29e), .a1(A2PN), .y(na22d));
i #(0) a22f(.a(na22d), .y(A2P));
a a29f(.clk(V1), .a1(A2SV), .y(na29f));
a a23d(.clk(V1), .exp(na29f), .a1(A2P), .y(na23c));
a a23c(.clk(V1), .exp(BO2A), .a1(A2P), .y(na23c));
i a23e(.a(na23c), .y(A2PN));
efl a30d(.a(A2P), .y(A2PP));
efl a30e(.a(A2PN), .y(A2PPN));

a a33d(.clk(V1), .a1(A3SVN), .y(na33d));
a a26b(.clk(V1), .exp(na33d), .a1(A3PN), .y(na26b));
a a33e(.a1(BO3), .y(na33e));
a a26c(.clk(V1), .exp(na33e), .a1(A3PN), .y(na26b));
i #(0) a26d(.a(na26b), .y(A3P));
a a33f(.clk(V1), .a1(A3SV), .y(na33f));
a a27c(.clk(V1), .exp(na33f), .a1(A3P), .y(na27b));
a a27b(.clk(V1), .exp(BO3A), .a1(A3P), .y(na27b));
i a27d(.a(na27b), .y(A3PN));
efl a34d(.a(A3P), .y(A3PP));
efl a34e(.a(A3PN), .y(A3PPN));

efl a10d(.a(BO1), .y(BO1P));
efl a24d(.a(BO2), .y(BO2P));
efl a28c(.a(BO3), .y(BO3P));

tmv a5d(.en1(V5), .en2(V5), .en3(V5), .a1(A1S), .a2(A2S), .a3(A3S), .y(na5d));
vi a12b(.a(na5d), .y(A1SV));
tmv a6d(.en1(V5), .en2(V5), .en3(V5), .a1(A1S), .a2(A2S), .a3(A3S), .y(na6d));
vi a13b(.a(na6d), .y(A2SV));
tmv a7d(.en1(V5), .en2(V5), .en3(V5), .a1(A1S), .a2(A2S), .a3(A3S), .y(na7d));
vi a14c(.a(na7d), .y(A3SV));

tmv a16f(.en1(V5), .en2(V5), .en3(V5), .a1(A1SN), .a2(A2SN), .a3(A3SN), .y(na16f));
vi a12c(.a(na16f), .y(A1SVN));
tmv a19b(.en1(V5), .en2(V5), .en3(V5), .a1(A1SN), .a2(A2SN), .a3(A3SN), .y(na19b));
vi a13c(.a(na19b), .y(A2SVN));
tmv a20b(.en1(V5), .en2(V5), .en3(V5), .a1(A1SN), .a2(A2SN), .a3(A3SN), .y(na20b));
vi a14d(.a(na20b), .y(A3SVN));

// 10-99
efl a10e(.a(BO1), .y(BO1A));
efl a24e(.a(BO2), .y(BO2A));
efl a28d(.a(BO3), .y(BO3A));

efl a1d(.a(A1Q), .y(A1QP));
efl a1e(.a(A1QN), .y(A1QPN));

efl a2d(.a(A2Q), .y(A2QP));
efl a2e(.a(A2QN), .y(A2QPN));

efl a3d(.a(A3Q), .y(A3QP));
efl a3e(.a(A3QN), .y(A3QPN));

efl a4d(.a(A3R), .y(A3RP));
efl a4e(.a(A3RN), .y(A3RPN));

endmodule
`default_nettype wire
