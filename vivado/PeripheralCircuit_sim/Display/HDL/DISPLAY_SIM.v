`timescale 1ns/100ps
module DISPLAY_SIM();
reg clk, rst;
reg [37:0] packect;
wire togle;
wire [7:0] nhex;
DISPLAY DISPLAY(.CLK(clk), .RST(rst), .PACKET_IN(packect), .TOGLE(togle), .nHEX(nhex));
initial begin
    packect = {3'b111, 8'b0, 7'd0, 1'b0, 1'b0, 1'b0, 1'b0, 16'd120};
end

initial begin
        rst = 0;
#100    rst = 1;
#100    rst = 0;
end
always begin
        clk = 0;
#100    clk = 1;
#100;
end
endmodule