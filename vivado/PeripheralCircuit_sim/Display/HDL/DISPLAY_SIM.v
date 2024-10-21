`timescale 1ns/100ps
module DISPLAY_SIM();
reg clk, rst, switch;
reg [37:0] packect;
reg [4:0] pc;
wire togle;
wire [7:0] nhex;
DISPLAY DISPLAY(.CLK(clk), .RST(rst), .DISP_SWITCH(switch), .PC(pc), .PACKET_IN(packect), .TOGLE(togle), .nHEX(nhex));
initial begin
    packect = {3'b111, 8'b0, 7'd0, 1'b0, 1'b0, 1'b0, 1'b0, 16'd120};
    pc = 5'd3;
end

initial begin
        rst = 1;
#200    rst = 0;
//#100    rst = 0;
end
initial begin
        switch = 0;
#300    switch = 1;
#100    switch = 0;

#500    switch = 1;
#100    switch = 0;

#500    switch = 1;
#100    switch = 0;

#800    switch = 1;
#100    switch = 0;
end
always begin
        clk = 0;
#100    clk = 1;
#100;
end
endmodule