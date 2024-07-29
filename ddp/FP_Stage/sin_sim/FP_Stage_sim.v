`timescale 1ps/1ps
module FP_Stage_sim ();
`include "common_macro.vh"
`include "common_param.vh"
localparam TinA = 8000;
localparam TinB = 8000;

reg Send_in, Ack_in, MR, DEL;
reg [`FP_PACKIN_SIZE] PACKET_IN;
wire Send_out, Ack_out, WRITE_EN, LOAD_FLG;
wire [`DATA_SIZE] WRITE_DATA;
//wire [`FP_PACKOUT_SIZE] PACKET_OUT;
wire LR, BR, MF, CPY, C, Z;
wire [`COLOR_SIZE] color;
wire [`GEN_SIZE] gen;
wire [`DEST_SIZE] dest;
wire [`DATA_SIZE] ResultData;

FP_Stage FP_Stage (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .DEL(DEL), .WRITE_EN(WRITE_EN), 
                    .LOAD_FLG(LOAD_FLG), .WRITE_DATA(WRITE_DATA), .PACKET_IN(PACKET_IN), .PACKET_OUT({color, gen, dest, LR, BR, MF, CPY, C, Z, ResultData}));


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
    #12000  Ack_in <= 1'b0;
    #12000  Ack_in <= 1'b1;
end

// PACKET_IN信号の生成 （すべて待ち合わせを行うためMF=1'b1とする．）
always begin
            PACKET_IN <= {22'b0, STM, 1'b0, 1'b0, 16'd10, 16'd5};
    #25000  PACKET_IN <= {22'b0, LDM, 1'b0, 1'b0, 16'd2, 16'd7};
    #25000  PACKET_IN <= {22'b0, ADD, 1'b0, 1'b0, 16'd3, 16'd5};
    #25000  PACKET_IN <= {22'b0, ADD, 1'b0, 1'b0, 16'd2, {16{1'b1}}};
    #25000  PACKET_IN <= {22'b0, SUB, 1'b0, 1'b0, 16'd7, 16'd7};
    #25000  PACKET_IN <= {22'b0, SHR, 1'b0, 1'b0, 16'd2, 16'd6};
    #25000;
end

// DEL信号の生成
initial begin
            DEL <= 1'b1;
end

endmodule