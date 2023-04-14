`timescale 1ns/1ps
`default_nettype none

module inv(
    output wire y,
    input wire a
);
parameter iv = 1;

reg rst = 1;

assign #2 y = rst ? iv : ~a;

initial begin
    #100 rst = 0;
end

endmodule
`default_nettype wire
