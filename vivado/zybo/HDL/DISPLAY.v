(* dont_touch = "true" *)
`include "common_macro.vh"
module DISPLAY(
    input CLK, RST, DISP_SWITCH, 
    input [4:0] PC,
    input [37:0] PACKET_IN,
    output TOGLE,
    output reg [7:0] nHEX
);

//50Hz counter 
(* dont_touch = "true" *) reg [21:0] cnt;
always @(posedge CLK)begin
    if(RST)
        cnt <= 22'b0;
    else if(en50hz) 
        cnt <= 22'b0;
    else
        cnt <= cnt + 22'b1;
end
(* dont_touch = "true" *) wire en50hz = (cnt == 22'd2500000-1);


//togle
(* dont_touch = "true" *) reg togle_r = 0;
always @(posedge en50hz) begin
    if(RST)begin
        togle_r <= 1'b0;
    end
    else if(togle_r)begin
        togle_r <= 1'b0;
    end
    else begin
        togle_r <= 1'b1;
    end
end
assign TOGLE = togle_r;//<< Is this outputregster?

(* dont_touch = "true" *) reg togle_sw = 0;
always @(posedge DISP_SWITCH) begin
    if(RST)begin
        togle_sw <= 1'b0;
    end
    else if(togle_sw)begin
        togle_sw <= 1'b0;
    end
    else begin
        togle_sw <= 1'b1;
    end
end

(* dont_touch = "true" *) wire [7:0] mux1;
assign mux1 = togle_sw ? PACKET_IN[7:0] : {3'b0, PC};//パケットのデータ部分は16bitあるけど、ここでは8bitまでしか取得してないため、最大16真数表示で二桁(FF)までしか表示できない

(* dont_touch = "true" *) wire [3:0] mux2;
assign mux2 = TOGLE ? mux1[7:4] : mux1[3:0];

//7seg
always @* begin
    case(mux2)
        4'h0:   nHEX = 8'b11000000;
        4'h1:   nHEX = 8'b11111001;
        4'h2:   nHEX = 8'b10100100;
        4'h3:   nHEX = 8'b10110000;
        4'h4:   nHEX = 8'b10011001;
        4'h5:   nHEX = 8'b10010010;
        4'h6:   nHEX = 8'b10000010;
        4'h7:   nHEX = 8'b11011000;
        4'h8:   nHEX = 8'b10000000;
        4'h9:   nHEX = 8'b10010000;
        4'ha:   nHEX = 8'b10001000;
        4'hb:   nHEX = 8'b10000011;
        4'hc:   nHEX = 8'b10100111;
        4'hd:   nHEX = 8'b10100001;
        4'he:   nHEX = 8'b10000110;
        4'hf:   nHEX = 8'b10001110;
        default:nHEX = 8'b11111111;
    endcase
end
endmodule