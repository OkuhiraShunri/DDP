`timescale 1ps/1ps
module PS_Stage_sim ();
`include "common_macro.vh"
localparam TinA = 12000;
localparam TinB = 12000;

reg MR, Send_in, Ack_in;
reg [`PS_PACKIN_SIZE] PACKET_IN;
wire Ack_out, Send_out, DEL;
//wire [`PS_PACKOUT_SIZE] PACKET_OUT;
wire LR, BR, MF, CPY, C, Z;
wire [`COLOR_SIZE] color;
wire [`GEN_SIZE] gen;
wire [`DEST_SIZE] dest;
wire [`OPC_SIZE] OPC;
wire [`DATA_SIZE] DataL, DataR;

PS_Stage PS_Stage (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), 
                            .PACKET_IN(PACKET_IN), .PACKET_OUT({color, gen, dest, LR, BR, MF, CPY, OPC, C, Z, DataL, DataR}), .DEL(DEL));


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
            PACKET_IN <= {3'd0, 8'd0, 7'd0, 1'd0, 1'd0, {32{1'b0}}};
    #25000  PACKET_IN <= {3'd0, 8'd0, 7'd1, 1'd0, 1'd0, {32{1'b0}}};
    #25000  PACKET_IN <= {3'd0, 8'd0, 7'd2, 1'd0, 1'd0, {32{1'b0}}};
    #25000  PACKET_IN <= {3'd0, 8'd0, 7'd3, 1'd0, 1'd0, {32{1'b0}}};
    #25000;
end

endmodule