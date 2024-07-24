`timescale 1ps/1ps
module MMCAM_Stage_sim ();
`include "common_macro.vh"
localparam TinA = 12000;
localparam TinB = 12000;

reg MR, Send_in, Ack_in;
reg [`MMCAM_PACKET_SIZE] PACKET_IN;
wire Ack_out, Send_out, DEL, WR_E;
wire [`MMRAM_ADDR_SIZE] ADDR;
wire [`MMCAM_PACKET_SIZE] PACKET_OUT;

MMCAM_Stage MMCAM_Stage (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), 
                            .PACKET_IN(PACKET_IN), .PACKET_OUT(PACKET_OUT), .WR_E(WR_E), .DEL(DEL), .ADDR(ADDR));


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

// PACKET_IN信号の生成 （すべて待ち合わせを行うためMF=1'b1とする．）
always begin
            PACKET_IN <= {3'd0, 8'd0, 7'd0, 1'd0, 1'd1, {18{1'b0}}};
    #25000  PACKET_IN <= {3'd1, 8'd1, 7'd1, 1'd1, 1'd1, {18{1'b0}}};
    #25000  PACKET_IN <= {3'd0, 8'd1, 7'd1, 1'd1, 1'd1, {18{1'b0}}};
    #25000  PACKET_IN <= {3'd0, 8'd1, 7'd1, 1'd0, 1'd1, {18{1'b0}}};
    #25000  PACKET_IN <= {3'd1, 8'd1, 7'd1, 1'd0, 1'd1, {18{1'b0}}};
    #25000  PACKET_IN <= {3'd0, 8'd0, 7'd0, 1'd1, 1'd1, {18{1'b0}}};
    #25000;
end

endmodule