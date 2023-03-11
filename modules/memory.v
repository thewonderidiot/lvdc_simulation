`timescale 1ns/1ps
`default_nettype none

module memory(
    input wire AnAX0VN,
    input wire AnAX1VN,
    input wire AnAX2VN,
    input wire AnAX3VN,
    input wire AnAX4VN,
    input wire AnAX5VN,
    input wire AnAX6VN,
    input wire AnAX7VN,
    input wire AnAX00VN,
    input wire AnAX10VN,
    input wire AnAX20VN,
    input wire AnAX30VN,
    input wire AnAX40VN,
    input wire AnAX50VN,
    input wire AnAX60VN,
    input wire AnAX70VN,
    input wire AnAY0VN,
    input wire AnAY1VN,
    input wire AnAY2VN,
    input wire AnAY3VN,
    input wire AnAY4VN,
    input wire AnAY5VN,
    input wire AnAY6VN,
    input wire AnAY7VN,
    input wire AnAY00VN,
    input wire AnAY10VN,
    input wire AnAY20VN,
    input wire AnAY30VN,
    input wire AnAY40VN,
    input wire AnAY50VN,
    input wire AnAY60VN,
    input wire AnAY70VN,
    input wire AnINHBSV,
    input wire AnRDMV,
    input wire AnRDMVN,
    input wire AnSYL0VN,
    input wire AnSYL1VN,
    input wire MmSYNCV,
    output wire EDmX,
    output wire EDmY,
    output wire MmSA1,
    output wire MmSA2,
    output wire MmSA3,
    output wire MmSA4,
    output wire MmSA5,
    output wire MmSA6,
    output wire MmSA7,
    output wire MmSA8,
    output wire MmSA9,
    output wire MmSA10,
    output wire MmSA11,
    output wire MmSA12,
    output wire MmSA13,
    output wire MmSA14
);

wire MmRDP1;
wire MmRDP2;
wire MmRDP3;
wire MmSTRP1;
wire MmSTRP2;
wire MmSTRP3;
wire MmSTROB;

// 10-154
mcd1 mcd1a(.a1(AnRDMVN), .a2(MmSYNCV), .y(MmSTRP1));
mcd2 #(2500) mcd2a(.a(MmSTRP1), .y(MmSTRP2));
mcd2 #(1500) mcd2b(.a(MmSTRP2), .y(MmSTRP3));

mcd1 mcd1b(.a1(MmSYNCV), .a2(AnRDMV), .y(MmRDP1));
mcd2 #(2500) mcd2c(.a(MmRDP1), .y(MmRDP2));
mcd2 #(1500) mcd2d(.a(MmRDP2), .y(MmRDP3));
vsg vsga(.a(MmRDP3), .b(AnINHBSV), .y(MmSTROB));

// Address decoding
reg [11:0] address;
always @(*) begin
    case ({AnAX7VN, AnAX6VN, AnAX5VN, AnAX4VN, AnAX3VN, AnAX2VN, AnAX1VN, AnAX0VN})
    8'b11111110: address[2:0] = 3'o0;
    8'b11111101: address[2:0] = 3'o1;
    8'b11111011: address[2:0] = 3'o2;
    8'b11110111: address[2:0] = 3'o3;
    8'b11101111: address[2:0] = 3'o4;
    8'b11011111: address[2:0] = 3'o5;
    8'b10111111: address[2:0] = 3'o6;
    8'b01111111: address[2:0] = 3'o7;
    default: address[2:0] = 3'o0;
    endcase
end

always @(*) begin
    case ({AnAY7VN, AnAY6VN, AnAY5VN, AnAY4VN, AnAY3VN, AnAY2VN, AnAY1VN, AnAY0VN})
    8'b11111110: address[5:3] = 3'o0;
    8'b11111101: address[5:3] = 3'o1;
    8'b11111011: address[5:3] = 3'o2;
    8'b11110111: address[5:3] = 3'o3;
    8'b11101111: address[5:3] = 3'o4;
    8'b11011111: address[5:3] = 3'o5;
    8'b10111111: address[5:3] = 3'o6;
    8'b01111111: address[5:3] = 3'o7;
    default: address[5:3] = 3'o0;
    endcase
end

always @(*) begin
    case ({AnAX70VN, AnAX60VN, AnAX50VN, AnAX40VN, AnAX30VN, AnAX20VN, AnAX10VN, AnAX00VN})
    8'b11111110: address[8:6] = 3'o0;
    8'b11111101: address[8:6] = 3'o1;
    8'b11111011: address[8:6] = 3'o2;
    8'b11110111: address[8:6] = 3'o3;
    8'b11101111: address[8:6] = 3'o4;
    8'b11011111: address[8:6] = 3'o5;
    8'b10111111: address[8:6] = 3'o6;
    8'b01111111: address[8:6] = 3'o7;
    default: address[8:6] = 3'o0;
    endcase
end

always @(*) begin
    case ({AnAY70VN, AnAY60VN, AnAY50VN, AnAY40VN, AnAY30VN, AnAY20VN, AnAY10VN, AnAY00VN})
    8'b11111110: address[11:9] = 3'o0;
    8'b11111101: address[11:9] = 3'o1;
    8'b11111011: address[11:9] = 3'o2;
    8'b11110111: address[11:9] = 3'o3;
    8'b11101111: address[11:9] = 3'o4;
    8'b11011111: address[11:9] = 3'o5;
    8'b10111111: address[11:9] = 3'o6;
    8'b01111111: address[11:9] = 3'o7;
    default: address[11:9] = 3'o0;
    endcase
end

// Data
reg [28:1] core[0:4095];
initial begin
    $readmemh("core/module0.mem", core);
end

wire [28:1] data;
assign data = core[address];

wire [14:1] syllable;
assign syllable = AnSYL1VN ? data[14:1] : data[28:15];

assign {MmSA14, MmSA13, MmSA12, MmSA11, MmSA10, MmSA9, MmSA8, MmSA7, MmSA6, MmSA5, MmSA4, MmSA3, MmSA2, MmSA1} = MmSTROB ? 14'b0 : syllable;

// Outputs
assign EDmX = MmRDP3 | MmSTRP3;
assign EDmY = MmRDP3 | MmSTRP3;

endmodule
`default_nettype wire
