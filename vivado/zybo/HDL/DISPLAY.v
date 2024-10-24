(* dont_touch = "true" *)
`include "common_macro.vh"
module DISPLAY(
    input CLK, RST, DISP_SWITCH, //DISP_SWIITCHはトグル
    input [4:0] PC,
    input [37:0] PACKET_IN,
    output TOGLE,
    output reg [6:0] PIN_NUM
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
(* dont_touch = "true" *) wire en50hz = (cnt == 22'd250000-1);


//togle
(* dont_touch = "true" *) reg togle_r = 0;
always @(posedge CLK or posedge RST) begin
    if (RST) begin
        togle_r <= 1'b0;
    end
    else if (en50hz) begin
        togle_r <= ~togle_r;
    end
end

// always @(posedge en50hz) begin
//     if(RST)begin
//         togle_r <= 1'b0;
//     end
//     else if(togle_r)begin
//         togle_r <= 1'b0;
//     end
//     else begin
//         togle_r <= 1'b1;
//     end
// end
assign TOGLE = togle_r;//<< Is this outputregster?

// (* dont_touch = "true" *) reg togle_sw = 0;
// always @(posedge DISP_SWITCH) begin
//     if(RST)begin
//         togle_sw <= 1'b0;
//     end
//     else if(togle_sw)begin
//         togle_sw <= 1'b0;
//     end
//     else begin
//         togle_sw <= 1'b1;
//     end
// end

(* dont_touch = "true" *) wire [7:0] mux1;
assign mux1 = DISP_SWITCH ? PACKET_IN[7:0] : {3'b0, PC};//パケットのデータ部分は16bitあるけど、ここでは8bitまでしか取得してないため、最大16真数表示で二桁(FF)までしか表示できない


(* dont_touch = "true" *) wire [3:0] mux2;
assign mux2 = TOGLE ? mux1[7:4] : mux1[3:0];

//7seg
always @* begin
    case(mux2)
        4'd0:   PIN_NUM = 7'b0111111;
        4'd1:   PIN_NUM = 7'b0000110;
        4'd2:   PIN_NUM = 7'b1011011;
        4'd3:   PIN_NUM = 7'b1001111;
        4'd4:   PIN_NUM = 7'b1100110;
        4'd5:   PIN_NUM = 7'b1101101;
        4'd6:   PIN_NUM = 7'b1111101;
        4'd7:   PIN_NUM = 7'b0100111;
        4'd8:   PIN_NUM = 7'b1111111;
        4'd9:   PIN_NUM = 7'b1100111;
        // a
        4'd10:  PIN_NUM = 7'b1110111;
        // b
        4'd11:  PIN_NUM = 7'b1111100;
        // c
        4'd12:  PIN_NUM = 7'b1011000;
        // d
        4'd13:  PIN_NUM = 7'b1011110;
        // e
        4'd14:  PIN_NUM = 7'b1111001;
        // f
        4'd15:  PIN_NUM = 7'b1110001;
        default:PIN_NUM = 7'b0000000;
    endcase
end
endmodule