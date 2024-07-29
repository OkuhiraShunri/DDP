`timescale 1ps/1ps
module B_Stage_sim ();
`include "common_macro.vh"
localparam TinA = 8000;
localparam TinB = 8000;

reg MR, Send_in, Ack_in_a, Ack_in_b;
reg [`B_PACKIN_SIZE] PACKET_IN;
wire Ack_out, Send_out_a, Send_out_b;
wire [`B_PACKOUT_SIZE] PACKET_OUT;

B_Stage B_Stage (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out_a(Send_out_a), .Send_out_b(Send_out_b), 
                    .Ack_in_a(Ack_in_a), .Ack_in_b(Ack_in_b), .PACKET_IN(PACKET_IN), .PACKET_OUT(PACKET_OUT));

// MR信号の作成
initial begin
            MR <= 1'b1;
    #12000  MR <= 1'b0;         // MRが1->0となるタイミング=データを送信開始できるタイミング
end

// Send_in信号を作成    入力データ数は7とする
initial begin
            Send_in <= 1'b1;    // データ1の入力：TINにおけるB
    #12000  Send_in <= 1'b0;    // データ1の入力：TINにおけるA
    #TinA   Send_in <= 1'b1;    // データ2の入力：TINにおけるB
    #TinB   Send_in <= 1'b0;    // データ2の入力：TINにおけるA
    #TinA   Send_in <= 1'b1;    // データ3の入力：TINにおけるB
    #TinB   Send_in <= 1'b0;    // データ3の入力：TINにおけるA
    #TinA   Send_in <= 1'b1;    // データ4の入力：TINにおけるB
    #TinB   Send_in <= 1'b0;    // データ4の入力：TINにおけるA
    #TinA   Send_in <= 1'b1;    // データ5の入力：TINにおけるB
    #TinB   Send_in <= 1'b0;    // データ5の入力：TINにおけるA
    #TinA   Send_in <= 1'b1;    // データ6の入力：TINにおけるB
    #TinB   Send_in <= 1'b0;    // データ6の入力：TINにおけるA
    #TinA   Send_in <= 1'b1;    // データ7の入力：TINにおけるB
    #TinB   Send_in <= 1'b0;    // データ7の入力：TINにおけるA
    #TinA   Send_in <= 1'b1;    // データの入力がない場合は1
end

// Ack_in_a信号とAck_in_b信号の生成
initial begin
            {Ack_in_a, Ack_in_b} <= 2'b11;
    #28000  {Ack_in_a, Ack_in_b} <= {Ack_in_a, 1'b0};
    #8000   {Ack_in_a, Ack_in_b} <= {Ack_in_a, 1'b1};
    #8000   {Ack_in_a, Ack_in_b} <= {Ack_in_a, 1'b0};
    #8000   {Ack_in_a, Ack_in_b} <= {Ack_in_a, 1'b1};
    #8000   {Ack_in_a, Ack_in_b} <= {1'b0, Ack_in_b};
    #8000   {Ack_in_a, Ack_in_b} <= {1'b1, Ack_in_b};
    #8000   {Ack_in_a, Ack_in_b} <= {Ack_in_a, 1'b0};
    #8000   {Ack_in_a, Ack_in_b} <= {Ack_in_a, 1'b1};
    #8000   {Ack_in_a, Ack_in_b} <= {1'b0, Ack_in_b};
    #8000   {Ack_in_a, Ack_in_b} <= {1'b1, Ack_in_b};
end

// PACKET_IN信号の生成
always begin
            PACKET_IN <= {{19{1'b0}}, 1'b0, {19{1'b0}}};
    #16000  PACKET_IN <= {{19{1'b0}}, 1'b1, {19{1'b0}}};
    #16000;
end

endmodule