`timescale 1ps/1ps
module COPY_sim ();
`include "common_macro.vh"
localparam TinA = 8000;
localparam TinB = 8000;

reg MR, Send_in, Ack_in;
reg [`COPY_PACKIN_SIZE] PACKET_IN;
wire Ack_out, Send_out;
wire [`COPY_PACKOUT_SIZE] PACKET_OUT;

COPY_Stage COPY_Stage (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .PACKET_IN(PACKET_IN), .PACKET_OUT(PACKET_OUT));

// MR信号の作成
initial begin
            MR <= 1'b1;
    #12000  MR <= 1'b0;         // MRが1->0となるタイミング=データを送信開始できるタイミング
    // 100,000ps時点を0として，もう一度初期化を行う
    #88000  MR <= 1'b1;
    #12000  MR <= 1'b0;         // MRが1->0となるタイミング=データを送信開始できるタイミング
end

// Send_in信号を作成
initial begin
            Send_in <= 1'b1;    // データの入力：TINにおけるB
    #12000  Send_in <= 1'b0;    // データの入力：TINにおけるA
    #TinA   Send_in <= 1'b1; 
    #TinB   Send_in <= 1'b0; 
    // 100,000ps時点を0として，もう一度処理を行う
    #72000  Send_in <= 1'b1;
    #12000  Send_in <= 1'b0;
    #TinA   Send_in <= 1'b1; 
end

// Ack_in信号を生成（正確ではない）
initial begin
            Ack_in <= 1'b1;    // データの入力：TINにおけるB
    #32000  Ack_in <= 1'b0; 
    #TinB   Ack_in <= 1'b1; 
    // 100,000ps時点を0として，もう一度処理を行う
    #92000  Ack_in <= 1'b0;
    #TinB   Ack_in <= 1'b1; 
end

// PACKET_IN信号の生成
always begin
            PACKET_IN <= {{11{1'b0}}, 7'd15, {3{1'b0}}, 1'b1, {18{1'b0}}};
    #100000 PACKET_IN <= {{11{1'b0}}, 7'd15, {3{1'b0}}, 1'b0, {18{1'b0}}};
    #100000;
end

endmodule