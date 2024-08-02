`timescale 1ps/1ps
module DDP_sim ();
`include "common_macro.vh"
`include "common_param.vh"
localparam TinA = 12000;
localparam TinB = 12000;
localparam Tin = TinA + TinB;

reg Send_in, Ack_in, MR;
reg [`M_PACKET_SIZE] PACKET_IN;
wire Send_out, Ack_out;
wire LR, MF, C, Z;
wire [`COLOR_SIZE] color;
wire [`GEN_SIZE] gen;
wire [`DEST_SIZE] dest;
wire [`DATA_SIZE] ResultData;

DDP DDP (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in),
            .PACKET_IN(PACKET_IN), .PACKET_OUT({color, gen, dest, LR, MF, C, Z, ResultData}));


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
end

// Ack_in信号の生成
initial begin
            Ack_in <= 1'b1;
    //#TinB   Ack_in <= 1'b0;
    //#TinA;
    
    // パケットの出力数は1である上に，基本的に少ないため，Ack_inを動かすのはゆっくりで良い...?
    // ただし，パケットが2つ続けて出力された場合などは，あまり切り替わるタイミングが遅いと上書きされる...?
    /*        Ack_in <= 1'b1;
    #120000 Ack_in <= 1'b0;
    #120000;*/
    // Ack_inはずっと1'b1で，これで動き続けることができる．
end

// PACKET_IN信号の生成
// binary表示でも見やすくするため，colorを1で埋める
// このDDPでは，一回で扱えるデータのビット幅は16ビットであり，演算結果は8!までは確認可能
initial begin
    #12000  PACKET_IN <= {3'b111, 8'b0, 7'b0, 1'b0, 1'b0, 1'b0, 1'b0, 16'd4};
    /*#12000  PACKET_IN <= {3'b111, 8'b1111_1111, 7'b0, 1'b0, 1'b1, 1'b0, 1'b0, 16'd31};
    #Tin    PACKET_IN <= {3'b111, 8'b1111_1111, 7'b0, 1'b1, 1'b1, 1'b0, 1'b0, 16'd7};*/
    #Tin;
end

endmodule