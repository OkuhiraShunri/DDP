`timescale 1ps/1ps
module MMRAM_SIM ();
`include "common_macro.vh"
localparam TinA = 8000;
localparam TinB = 8000;

reg MR, Send_in, Ack_in, DEL, WR_E;
reg [`MMRAM_ADDR_SIZE] ADDR;
reg [`MMRAM_PACKIN_SIZE] PACKET_IN;
wire Ack_out, Send_out;
//wire [`MMRAM_PACKOUT_SIZE] PACKET_OUT;
wire C, Z;
wire [`COLOR_SIZE] color;
wire [`GEN_SIZE] gen;
wire [`DEST_SIZE] dest;
wire [`DATA_SIZE] DataL, DataR;

MMRAM_Stage MMRAM_Stage (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), 
                         .PACKET_IN(PACKET_IN), .PACKET_OUT({color, gen, dest, C, Z, DataL, DataR}), .WR_E(WR_E), .DEL(DEL), .ADDR(ADDR));


// MR信号の生成
initial begin
            MR <= 1'b1;
    #12000  MR <= 1'b0;         // MRが1->0となるタイミング=データを送信開始できるタイミング
end

// Send_in信号を生成
initial begin
            Send_in <= 1'b1;
    #12000  Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1;
    #TinB   Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1;
    #TinB   Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1;
    #TinB   Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1;
    #TinB   Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1;
    #TinB   Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1;
    #TinB   Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1;
    #TinB   Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1;
end

// Ack_in信号の生成
initial begin
            Ack_in <= 1'b1;
    // #36000  Ack_in <= 1'b0;
    // #12000  Ack_in <= 1'b1;
    // #12000  Ack_in <= 1'b0;
    // #12000  Ack_in <= 1'b1;
    // #12000  Ack_in <= 1'b0;
    // #12000  Ack_in <= 1'b1;
    // #12000  Ack_in <= 1'b0;
    // #12000  Ack_in <= 1'b1;
    // #12000  Ack_in <= 1'b0;
    // #12000  Ack_in <= 1'b1;
    // #12000  Ack_in <= 1'b0;
    // #12000  Ack_in <= 1'b1;
    // #12000  Ack_in <= 1'b0;
    // #12000  Ack_in <= 1'b1;
    // #12000  Ack_in <= 1'b0;
    // #12000  Ack_in <= 1'b1;
end

always begin
            PACKET_IN <= {3'd0, 8'd0, 7'd4, 1'd0, 1'd1, 2'b11, 16'b1010101};
    #25000  PACKET_IN <= {3'd1, 8'd1, 7'd4, 1'd1, 1'd1, 2'b00, 16'b1111111};
    #25000  PACKET_IN <= {3'd0, 8'd1, 7'd4, 1'd1, 1'd1, 2'b11, 16'b0000111};
    #25000  PACKET_IN <= {3'd0, 8'd1, 7'd4, 1'd0, 1'd1, 2'b00, 16'b1111000};
    #25000  PACKET_IN <= {3'd1, 8'd1, 7'd4, 1'd0, 1'd1, 2'b11, 16'b1000100};
    #25000  PACKET_IN <= {3'd0, 8'd0, 7'd4, 1'd1, 1'd1, 2'b00, 16'b1000000};
    #25000  PACKET_IN <= {3'd0, 8'd0, 7'd4, 1'd1, 1'd0, 2'b10, 16'b1000000};     // Machingを行わない定数演算を行うパケット
    #25000;
end

// {WR_E, DEL, ADDR}信号の生成
always begin
            {WR_E, DEL, ADDR} <= {1'b1, 1'b0, 6'd3};
    #25000  {WR_E, DEL, ADDR} <= {1'b1, 1'b0, 6'd4};
    #25000  {WR_E, DEL, ADDR} <= {1'b1, 1'b0, 6'd5};
    #25000  {WR_E, DEL, ADDR} <= {1'b0, 1'b1, 6'd5};
    #25000  {WR_E, DEL, ADDR} <= {1'b0, 1'b1, 6'd4};
    #25000  {WR_E, DEL, ADDR} <= {1'b0, 1'b1, 6'd3};
    #25000  {WR_E, DEL, ADDR} <= {1'b0, 1'b1, 6'd0};     // Machingを行わない定数演算を行うパケット
    #25000;
end

endmodule