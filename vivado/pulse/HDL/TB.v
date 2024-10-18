`timescale 1ns/100ps
module TB();
reg clk, rst;
wire en50hz, togle;
//CNT50HZ CNT50HZ(.CLK(clk), .RST(rst), .EN50HZ(en50hz));
TOGLE TOGLE(.CLK(clk), .RST(rst), .TOGLE(togle));
initial begin
    rst = 0;
#100 rst = 1;
#100 rst = 0;
end
always begin
        clk = 0;
#100     clk = 1;
#100;
end
endmodule