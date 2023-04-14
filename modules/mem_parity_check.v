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
and a29a(na22a, V1, BRA1, BRA2);
and a22a(na22a, na22b, BRA2N);
and a22b(na22b, V1, BRA1N);
inv a22c(PAO1, na22a);

and a15a(na15a, V1, BRA3N);
and a15b(na15b, na15a, BRA4N);
and a29b(na15b, V1, BRA3, BRA4);
inv a15c(PAO2, na15b);

and a8a(na8a, V1, PAO1);
and a8b(na8a, V1, PAO2);
inv a8c(PAE1, na8a);

and a10a(na11a, V1, PAE1);
and a11a(na11a, V1, na11b, PAO2);
and a11b(na11b, PAO1);
inv a11c(PAO8, na11a);

and a23a(na23a, V1, BRA5);
and a23b(na23b, na23a, BRA6);
and a30a(na23b, V1, BRA5N, BRA6N);
inv a23c(PAO3, na23b);

and a16a(na16a, V1, BRA7);
and a16b(na16b, na16a, BRA8);
and a30b(na16b, V1, BRA8N, BRA7N);
inv a16c(PAO4, na16b);

and a9a(na9a, V1, PAO3);
and a9b(na9a, V1, PAO4);
inv a9c(PAE2, na9a);

and a10b(na18a, V1, PAE2);
and a18a(na18a, V1, na18b, PAO4);
and a18b(na18b, PAO3);
inv a18c(PAO9, na18a);

and a26a(na26a, V1, BRA9);
and a26b(na26b, na26a, BRA10);
and a33a(na26b, V1, BRA9N, BRA10N);
inv a26c(PAO5, na26b);

and a19a(na19a, V1, BRA11);
and a19b(na19b, na19a, BRA12);
and a33b(na19b, V1, BRA11N, BRA12N);
inv a19c(PAO6, na19b);

and a5a(na5b, V1, PAO5);
and a5b(na5b, V1, PAO6);
inv a5c(PAE3, na5b);

and a10c(na6a, V1, PAE3);
and a6a(na6a, V1, na6b, PAO6);
and a6b(na6b, PAO5);
inv a6c(PAO10, na6a);

and a27a(na27a, V1, BRA13);
and a27b(na27b, na27a, BRA14);
and a34a(na27b, V1, BRA13N, BRA14N);
inv a27c(PAO7, na27b);

// 10-55
and a12a(na12a, V1, PAO8);
and a12b(na12a, V1, PAO9);
inv a12c(PAE4, na12a);

and a13a(na20a, V1, PAE4);
and a20a(na20a, V1, na20b, PAO9);
and a20b(na20b, PAO8);
inv a20c(PAO11, na20a);

and a14a(na14a, V1, PAO10);
and a14b(na14a, V1, PAO7);
inv a14c(PAE5, na14a);

and a13b(na21a, V1, PAE5);
and a21a(na21a, V1, na21b, PAO10);
and a21b(na21b, PAO7);
inv a21c(PAO12, na21a);

and a28a(na28a, V1, na28b, PAO12);
and a28b(na28b, PAO11);
inv a28c(PAE6N, na28a);

and a34b(na35b, V1, PAO11, PAE6N);
and a35a(na35a, PAE6N);
and a35b(na35b, V1, na35a, PAO12);
inv a35c(EAP, na35b);

// 10-56
and a29c(na22d, V1, BRB1, BRB2);
and a22d(na22d, na22e, BRB2N);
and a22e(na22e, V1, BRB1N);
inv a22f(PBO1, na22d);

and a15d(na15d, V1, BRB3N);
and a15e(na15e, na15d, BRB4N);
and a29d(na15e, V1, BRB3, BRB4);
inv a15f(PBO2, na15e);

and a8d(na8d, V1, PBO1);
and a8e(na8d, V1, PBO2);
inv a8f(PBE1, na8d);

and a10d(na11d, V1, PBE1);
and a11d(na11d, na11e, PBO2);
and a11e(na11e, PBO1);
inv a11f(PBO8, na11d);

and a23d(na23d, V1, BRB5);
and a23e(na23e, na23d, BRB6);
and a30c(na23e, V1, BRB5N, BRB6N);
inv a23f(PBO3, na23e);

and a16d(na16d, V1, BRB7);
and a16e(na16e, na16d, BRB8);
and a30d(na16e, V1, BRB8N, BRB7N);
inv a16f(PBO4, na16e);

and a9d(na9d, V1, PBO3);
and a9e(na9d, V1, PBO4);
inv a9f(PBE2, na9d);

and a10e(na18d, V1, PBE2);
and a18d(na18d, V1, na18e, PBO4);
and a18e(na18e, PBO3);
inv a18f(PBO9, na18d);

and a26d(na26d, V1, BRB9);
and a26e(na26e, na26d, BRB10);
and a33c(na26e, V1, BRB9N, BRB10N);
inv a26f(PBO5, na26e);

and a19d(na19d, V1, BRB11);
and a19e(na19e, na19d, BRB12);
and a33d(na19e, V1, BRB11N, BRB12N);
inv a19f(PBO6, na19e);

and a5d(na5e, V1, PBO5);
and a5e(na5e, V1, PBO6);
inv a5f(PBE3, na5e);

and a10f(na6d, V1, PBE3);
and a6d(na6d, V1, na6e, PBO6);
and a6e(na6e, PBO5);
inv a6f(PBO10, na6d);

and a27d(na27d, V1, BRB13);
and a27e(na27e, na27d, BRB14);
and a34c(na27e, V1, BRB13N, BRB14N);
inv a27f(PBO7, na27e);

// 10-57
and a12d(na12d, V1, PBO8);
and a12e(na12d, V1, PBO9);
inv a12f(PBE4, na12d);

and a13c(na20d, V1, PBE4);
and a20d(na20d, V1, na20e, PBO9);
and a20e(na20e, PBO8);
inv a20f(PBO11, na20d);

and a14d(na14d, V1, PBO10);
and a14e(na14d, V1, PBO7);
inv a14f(PBE5, na14d);

and a13d(na21d, V1, PBE5);
and a21d(na21d, V1, na21e, PBO10);
and a21e(na21e, PBO7);
inv a21f(PBO12, na21d);

and a28d(na28d, V1, na28e, PBO12);
and a28e(na28e, PBO11);
inv a28f(PBE6N, na28d);

and a34d(na35e, V1, PBO11, PBE6N);
and a35d(na35d, PBE6N);
and a35e(na35e, V1, na35d, PBO12);
inv a35f(EBP, na35e);

endmodule
`default_nettype wire
