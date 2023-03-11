`timescale 1ns/1ps
`default_nettype none

module mem_parity_check(
    input wire V1,
    input wire BRA1,
    input wire BRA1N,
    input wire BRA2,
    input wire BRA2N,
    input wire BRA3,
    input wire BRA3N,
    input wire BRA4,
    input wire BRA4N,
    input wire BRA5,
    input wire BRA5N,
    input wire BRA6,
    input wire BRA6N,
    input wire BRA7,
    input wire BRA7N,
    input wire BRA8,
    input wire BRA8N,
    input wire BRA9,
    input wire BRA9N,
    input wire BRA10,
    input wire BRA10N,
    input wire BRA11,
    input wire BRA11N,
    input wire BRA12,
    input wire BRA12N,
    input wire BRA13,
    input wire BRA13N,
    input wire BRA14,
    input wire BRA14N,
    input wire BRB1,
    input wire BRB1N,
    input wire BRB2,
    input wire BRB2N,
    input wire BRB3,
    input wire BRB3N,
    input wire BRB4,
    input wire BRB4N,
    input wire BRB5,
    input wire BRB5N,
    input wire BRB6,
    input wire BRB6N,
    input wire BRB7,
    input wire BRB7N,
    input wire BRB8,
    input wire BRB8N,
    input wire BRB9,
    input wire BRB9N,
    input wire BRB10,
    input wire BRB10N,
    input wire BRB11,
    input wire BRB11N,
    input wire BRB12,
    input wire BRB12N,
    input wire BRB13,
    input wire BRB13N,
    input wire BRB14,
    input wire BRB14N,
    output wire EAP,
    output wire EBP
);

wire PAE1;
wire PAE2;
wire PAE3;
wire PAE4;
wire PAE5;
wire PAE6N;
wire PAO1;
wire PAO2;
wire PAO3;
wire PAO4;
wire PAO5;
wire PAO6;
wire PAO7;
wire PAO8;
wire PAO9;
wire PAO10;
wire PAO11;
wire PAO12;
wire PBE1;
wire PBE2;
wire PBE3;
wire PBE4;
wire PBE5;
wire PBE6N;
wire PBO1;
wire PBO2;
wire PBO3;
wire PBO4;
wire PBO5;
wire PBO6;
wire PBO7;
wire PBO8;
wire PBO9;
wire PBO10;
wire PBO11;
wire PBO12;

wor na5b;
wor na5e;
wor na6a;
wire na6b;
wor na6d;
wire na6e;
wor na8a;
wor na8d;
wor na9a;
wor na9d;
wor na11a;
wire na11b;
wor na11d;
wire na11e;
wor na12a;
wor na12d;
wor na14a;
wor na14d;
wire na15a;
wor na15b;
wire na15d;
wor na15e;
wire na16a;
wor na16b;
wire na16d;
wor na16e;
wor na18a;
wire na18b;
wor na18d;
wire na18e;
wire na19a;
wor na19b;
wire na19d;
wor na19e;
wor na20a;
wire na20b;
wor na20d;
wire na20e;
wor na21a;
wire na21b;
wor na21d;
wire na21e;
wor na22a;
wire na22b;
wor na22d;
wire na22e;
wire na23a;
wor na23b;
wire na23d;
wor na23e;
wire na26a;
wor na26b;
wire na26d;
wor na26e;
wire na27a;
wor na27b;
wire na27d;
wor na27e;
wire na28a;
wire na28b;
wire na28d;
wire na28e;
wire na35a;
wor na35b;
wire na35d;
wor na35e;

// 10-54
a a29a(.clk(V1), .a1(BRA1), .a2(BRA2), .y(na22a));
a a22a(.exp(na22b), .a1(BRA2N), .y(na22a));
a a22b(.clk(V1), .a1(BRA1N), .y(na22b));
i a22c(.a(na22a), .y(PAO1));

a a15a(.clk(V1), .a1(BRA3N), .y(na15a));
a a15b(.exp(na15a), .a1(BRA4N), .y(na15b));
a a29b(.clk(V1), .a1(BRA3), .a2(BRA4), .y(na15b));
i a15c(.a(na15b), .y(PAO2));

a a8a(.clk(V1), .a1(PAO1), .y(na8a));
a a8b(.clk(V1), .a1(PAO2), .y(na8a));
i a8c(.a(na8a), .y(PAE1));

a a10a(.clk(V1), .a1(PAE1), .y(na11a));
a a11a(.clk(V1), .exp(na11b), .a1(PAO2), .y(na11a));
a a11b(.a1(PAO1), .y(na11b));
i a11c(.a(na11a), .y(PAO8));

a a23a(.clk(V1), .a1(BRA5), .y(na23a));
a a23b(.exp(na23a), .a1(BRA6), .y(na23b));
a a30a(.clk(V1), .a1(BRA5N), .a2(BRA6N), .y(na23b));
i a23c(.a(na23b), .y(PAO3));

a a16a(.clk(V1), .a1(BRA7), .y(na16a));
a a16b(.exp(na16a), .a1(BRA8), .y(na16b));
a a30b(.clk(V1), .a1(BRA8N), .a2(BRA7N), .y(na16b));
i a16c(.a(na16b), .y(PAO4));

a a9a(.clk(V1), .a1(PAO3), .y(na9a));
a a9b(.clk(V1), .a1(PAO4), .y(na9a));
i a9c(.a(na9a), .y(PAE2));

a a10b(.clk(V1), .a1(PAE2), .y(na18a));
a a18a(.clk(V1), .exp(na18b), .a1(PAO4), .y(na18a));
a a18b(.a1(PAO3), .y(na18b));
i a18c(.a(na18a), .y(PAO9));

a a26a(.clk(V1), .a1(BRA9), .y(na26a));
a a26b(.exp(na26a), .a1(BRA10), .y(na26b));
a a33a(.clk(V1), .a1(BRA9N), .a2(BRA10N), .y(na26b));
i a26c(.a(na26b), .y(PAO5));

a a19a(.clk(V1), .a1(BRA11), .y(na19a));
a a19b(.exp(na19a), .a1(BRA12), .y(na19b));
a a33b(.clk(V1), .a1(BRA11N), .a2(BRA12N), .y(na19b));
i a19c(.a(na19b), .y(PAO6));

a a5a(.clk(V1), .a1(PAO5), .y(na5b));
a a5b(.clk(V1), .a2(PAO6), .y(na5b));
i a5c(.a(na5b), .y(PAE3));

a a10c(.clk(V1), .a1(PAE3), .y(na6a));
a a6a(.clk(V1), .exp(na6b), .a1(PAO6), .y(na6a));
a a6b(.a1(PAO5), .y(na6b));
i a6c(.a(na6a), .y(PAO10));

a a27a(.clk(V1), .a1(BRA13), .y(na27a));
a a27b(.exp(na27a), .a1(BRA14), .y(na27b));
a a34a(.clk(V1), .a1(BRA13N), .a2(BRA14N), .y(na27b));
i a27c(.a(na27b), .y(PAO7));

// 10-55
a a12a(.clk(V1), .a1(PAO8), .y(na12a));
a a12b(.clk(V1), .a1(PAO9), .y(na12a));
i a12c(.a(na12a), .y(PAE4));

a a13a(.clk(V1), .a1(PAE4), .y(na20a));
a a20a(.clk(V1), .exp(na20b), .a1(PAO9), .y(na20a));
a a20b(.a1(PAO8), .y(na20b));
i a20c(.a(na20a), .y(PAO11));

a a14a(.clk(V1), .a1(PAO10), .y(na14a));
a a14b(.clk(V1), .a1(PAO7), .y(na14a));
i a14c(.a(na14a), .y(PAE5));

a a13b(.clk(V1), .a1(PAE5), .y(na21a));
a a21a(.clk(V1), .exp(na21b), .a1(PAO10), .y(na21a));
a a21b(.a1(PAO7), .y(na21b));
i a21c(.a(na21a), .y(PAO12));

a a28a(.clk(V1), .exp(na28b), .a1(PAO12), .y(na28a));
a a28b(.a1(PAO11), .y(na28b));
i a28c(.a(na28a), .y(PAE6N));

a a34b(.clk(V1), .a1(PAO11), .a2(PAE6N), .y(na35b));
a a35a(.a1(PAE6N), .y(na35a));
a a35b(.clk(V1), .exp(na35a), .a1(PAO12), .y(na35b));
i a35c(.a(na35b), .y(EAP));

// 10-56
a a29c(.clk(V1), .a1(BRB1), .a2(BRB2), .y(na22d));
a a22d(.exp(na22e), .a1(BRB2N), .y(na22d));
a a22e(.clk(V1), .a1(BRB1N), .y(na22e));
i a22f(.a(na22d), .y(PBO1));

a a15d(.clk(V1), .a1(BRB3N), .y(na15d));
a a15e(.exp(na15d), .a1(BRB4N), .y(na15e));
a a29d(.clk(V1), .a1(BRB3), .a2(BRB4), .y(na15e));
i a15f(.a(na15e), .y(PBO2));

a a8d(.clk(V1), .a1(PBO1), .y(na8d));
a a8e(.clk(V1), .a1(PBO2), .y(na8d));
i a8f(.a(na8d), .y(PBE1));

a a10d(.clk(V1), .a1(PBE1), .y(na11d));
a a11d(.exp(na11e), .a1(PBO2), .y(na11d));
a a11e(.a1(PBO1), .y(na11e));
i a11f(.a(na11d), .y(PBO8));

a a23d(.clk(V1), .a1(BRB5), .y(na23d));
a a23e(.exp(na23d), .a1(BRB6), .y(na23e));
a a30c(.clk(V1), .a1(BRB5N), .a2(BRB6N), .y(na23e));
i a23f(.a(na23e), .y(PBO3));

a a16d(.clk(V1), .a1(BRB7), .y(na16d));
a a16e(.exp(na16d), .a1(BRB8), .y(na16e));
a a30d(.clk(V1), .a1(BRB8N), .a2(BRB7N), .y(na16e));
i a16f(.a(na16e), .y(PBO4));

a a9d(.clk(V1), .a1(PBO3), .y(na9d));
a a9e(.clk(V1), .a1(PBO4), .y(na9d));
i a9f(.a(na9d), .y(PBE2));

a a10e(.clk(V1), .a1(PBE2), .y(na18d));
a a18d(.clk(V1), .exp(na18e), .a1(PBO4), .y(na18d));
a a18e(.a1(PBO3), .y(na18e));
i a18f(.a(na18d), .y(PBO9));

a a26d(.clk(V1), .a1(BRB9), .y(na26d));
a a26e(.exp(na26d), .a1(BRB10), .y(na26e));
a a33c(.clk(V1), .a1(BRB9N), .a2(BRB10N), .y(na26e));
i a26f(.a(na26e), .y(PBO5));

a a19d(.clk(V1), .a1(BRB11), .y(na19d));
a a19e(.exp(na19d), .a1(BRB12), .y(na19e));
a a33d(.clk(V1), .a1(BRB11N), .a2(BRB12N), .y(na19e));
i a19f(.a(na19e), .y(PBO6));

a a5d(.clk(V1), .a1(PBO5), .y(na5e));
a a5e(.clk(V1), .a1(PBO6), .y(na5e));
i a5f(.a(na5e), .y(PBE3));

a a10f(.clk(V1), .a1(PBE3), .y(na6d));
a a6d(.clk(V1), .exp(na6e), .a1(PBO6), .y(na6d));
a a6e(.a1(PBO5), .y(na6e));
i a6f(.a(na6d), .y(PBO10));

a a27d(.clk(V1), .a1(BRB13), .y(na27d));
a a27e(.exp(na27d), .a1(BRB14), .y(na27e));
a a34c(.clk(V1), .a1(BRB13N), .a2(BRB14N), .y(na27e));
i a27f(.a(na27e), .y(PBO7));

// 10-57
a a12d(.clk(V1), .a1(PBO8), .y(na12d));
a a12e(.clk(V1), .a2(PBO9), .y(na12d));
i a12f(.a(na12d), .y(PBE4));

a a13c(.clk(V1), .a1(PBE4), .y(na20d));
a a20d(.clk(V1), .exp(na20e), .a1(PBO9), .y(na20d));
a a20e(.a1(PBO8), .y(na20e));
i a20f(.a(na20d), .y(PBO11));

a a14d(.clk(V1), .a1(PBO10), .y(na14d));
a a14e(.clk(V1), .a1(PBO7), .y(na14d));
i a14f(.a(na14d), .y(PBE5));

a a13d(.clk(V1), .a1(PBE5), .y(na21d));
a a21d(.clk(V1), .exp(na21e), .a1(PBO10), .y(na21d));
a a21e(.a1(PBO7), .y(na21e));
i a21f(.a(na21d), .y(PBO12));

a a28d(.clk(V1), .exp(na28e), .a1(PBO12), .y(na28d));
a a28e(.a1(PBO11), .y(na28e));
i a28f(.a(na28d), .y(PBE6N));

a a34d(.clk(V1), .a1(PBO11), .a2(PBE6N), .y(na35e));
a a35d(.a1(PBE6N), .y(na35d));
a a35e(.clk(V1), .exp(na35d), .a1(PBO12), .y(na35e));
i a35f(.a(na35e), .y(EBP));

endmodule
`default_nettype wire
