`timescale 1ns/1ps
`default_nettype none

module lvdc_sim;

lvdc lvdc1();

initial begin
    $dumpfile("lvdc.fst");
    $dumpvars(0, lvdc1);
    #1000000 $finish;
end

endmodule
`default_nettype wire
