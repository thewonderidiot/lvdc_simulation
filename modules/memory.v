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
    input wire AnBROVa,
    input wire AnBROVb,
    input wire AnINHBSV,
    input wire AnRDMV,
    input wire AnRDMVN,
    input wire AnSYL0VN,
    input wire AnSYL1VN,
    input wire BRA1,
    input wire BRA2,
    input wire BRA3,
    input wire BRA4,
    input wire BRA5,
    input wire BRA6,
    input wire BRA7,
    input wire BRA8,
    input wire BRA9,
    input wire BRA10,
    input wire BRA11,
    input wire BRA12,
    input wire BRA13,
    input wire BRA14,
    input wire BRB1,
    input wire BRB2,
    input wire BRB3,
    input wire BRB4,
    input wire BRB5,
    input wire BRB6,
    input wire BRB7,
    input wire BRB8,
    input wire BRB9,
    input wire BRB10,
    input wire BRB11,
    input wire BRB12,
    input wire BRB13,
    input wire BRB14,
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

wire MmINH1;
wire MmINH2;
wire MmINH3;
wire MmINH4;
wire MmINH5;
wire MmINH6;
wire MmINH7;
wire MmINH8;
wire MmINH9;
wire MmINH10;
wire MmINH11;
wire MmINH12;
wire MmINH13;
wire MmINH14;
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

// Inhibit
id id1(.a(BRA1), .b(AnBROVa), .c(BRB1), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH1));
id id2(.a(BRA2), .b(AnBROVa), .c(BRB2), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH2));
id id3(.a(BRA3), .b(AnBROVa), .c(BRB3), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH3));
id id4(.a(BRA4), .b(AnBROVa), .c(BRB4), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH4));
id id5(.a(BRA5), .b(AnBROVa), .c(BRB5), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH5));
id id6(.a(BRA6), .b(AnBROVa), .c(BRB6), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH6));
id id7(.a(BRA7), .b(AnBROVa), .c(BRB7), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH7));
id id8(.a(BRA8), .b(AnBROVa), .c(BRB8), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH8));
id id9(.a(BRA9), .b(AnBROVa), .c(BRB9), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH9));
id id10(.a(BRA10), .b(AnBROVa), .c(BRB10), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH10));
id id11(.a(BRA11), .b(AnBROVa), .c(BRB11), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH11));
id id12(.a(BRA12), .b(AnBROVa), .c(BRB12), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH12));
id id13(.a(BRA13), .b(AnBROVa), .c(BRB13), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH13));
id id14(.a(BRA14), .b(AnBROVa), .c(BRB14), .d(AnBROVb), .clk2(MmSTRP2), .y(MmINH14));

wire [14:1] inh;
assign inh = {MmINH1, MmINH2, MmINH3, MmINH4, MmINH5, MmINH6, MmINH7, MmINH8, MmINH9, MmINH10, MmINH11, MmINH12, MmINH13, MmINH14};

always @(*) begin
    if (MmSTRP3) begin
        core[address] = AnSYL0VN ? {data[28:15], inh} : {inh, data[14:1]};
    end
end


// Sense
wire [28:1] data;
assign data = core[address];

wire [14:1] syllable;
assign syllable = AnSYL0VN ? data[14:1] : data[28:15];

assign {MmSA1, MmSA2, MmSA3, MmSA4, MmSA5, MmSA6, MmSA7, MmSA8, MmSA9, MmSA10, MmSA11, MmSA12, MmSA13, MmSA14} = MmSTROB ? 14'b0 : syllable;

// Outputs
assign EDmX = MmRDP3 | MmSTRP3;
assign EDmY = MmRDP3 | MmSTRP3;

endmodule
`default_nettype wire
