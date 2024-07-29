`timescale 1ps/1ps
module MA_Stage_sim ();
`include "common_macro.vh"
localparam TinA = 12000;
localparam TinB = 12000;

reg MR, Send_in, Ack_in, WRITE_EN, LOAD_FLG;
reg [`DATA_SIZE] WRITE_DATA;
reg [`MA_PACKET_SIZE] PACKET_IN;
wire Ack_out, Send_out;
wire [`MA_PACKET_SIZE] PACKET_OUT;

MA_Stage MA_Stage (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), 
                    .WRITE_DATA(WRITE_DATA), .WRITE_EN(WRITE_EN), .LOAD_FLG(LOAD_FLG), .PACKET_IN(PACKET_IN), .PACKET_OUT(PACKET_OUT));


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
end

// Ack_in信号の生成
initial begin
            Ack_in <= 1'b1;
    #36000  Ack_in <= 1'b0;
    #12000  Ack_in <= 1'b1;
    #12000  Ack_in <= 1'b0;
    #12000  Ack_in <= 1'b1;
    #12000  Ack_in <= 1'b0;
    #12000  Ack_in <= 1'b1;
    #12000  Ack_in <= 1'b0;
    #12000  Ack_in <= 1'b1;
    #12000  Ack_in <= 1'b0;
    #12000  Ack_in <= 1'b1;
    #12000  Ack_in <= 1'b0;
    #12000  Ack_in <= 1'b1;
    #12000  Ack_in <= 1'b0;
    #12000  Ack_in <= 1'b1;
end

// PACKET_IN信号の生成
always begin
            PACKET_IN <= {{24{1'b0}}, 16'd3};
    #50000  PACKET_IN <= {{24{1'b0}}, 16'd4};
    #50000;
end

// LOAD_FLG, WRITE_EN, WRITE_DATA信号の生成
initial begin
            {LOAD_FLG, WRITE_EN, WRITE_DATA} = {1'b0, 1'b1, 16'd55555};
    #25000  {LOAD_FLG, WRITE_EN, WRITE_DATA} = {1'b0, 1'b1, 16'd11111};
    #25000  {LOAD_FLG, WRITE_EN, WRITE_DATA} = {1'b0, 1'b1, 16'd33333};
    #25000  {LOAD_FLG, WRITE_EN, WRITE_DATA} = {1'b0, 1'b1, 16'd22222};
    #25000  {LOAD_FLG, WRITE_EN, WRITE_DATA} = {1'b1, 1'b0, 16'd44444};
end

endmodule