`include "common_macro.vh"
module MMRAM_Stage(
    input WR_E, DEL, MR, Send_in, Ack_in,
    input [5:0] ADDR,
    input [37:0] PACKET_IN,
    output [51:0] PACKET_OUT,
    output Send_out, Ack_out
);

reg [19:0] RAM[63:0];
reg [15:0] CST_MEM[63:0];
integer i;
initial begin
    for (i = 0; i < 64; i = i + 1) begin//RAM初期化
            RAM[i] = 20'd0;
    end
    for (i = 0; i < 64; i = i + 1) begin//CST_MEM初期化
            CST_MEM[i] = i + 1;
    end
end
wire CP;
CE ce(.CE_Send_in(Send_in), .CE_Ack_in(Ack_in), .MR(MR), .Exb(DEL), .CE_Ack_out(Ack_out), .CE_Send_out(Send_out), .CE_CP(CP));

//---DLとRAMの書き込み処理---
reg [37:0] DL;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 38'b0;
    end
    else if(WR_E)begin
        RAM[ADDR] <= PACKET_IN[19:0];
        DL <= PACKET_IN;
    end
    else if(!WR_E)begin
        DL <= PACKET_IN;
    end
end

//---RAMの読み出し処理---
wire [20:0] DATA_OUT;
assign DATA_OUT = RAM[ADDR];

//---CST_MEMの読み出し処理(書き込みはしない)---
wire [6:0] dest;
wire [15:0] CST_DATA;
assign dest = PACKET_IN[26:20];
assign CST_DATA = CP ? CST_MEM[dest] : CST_DATA;//組み合わせ回路

//merge1
wire [53:0] MERGE1_OUT;
assign MERGE1_OUT = {DL, DATA_OUT[15:0]}; 

//merge2
wire [53:0] MERGE2_OUT;
assign MERGE2_OUT = {DL, CST_DATA};

//mux
wire [53:0] MUX_OUT;
wire MF;
assign MF = DL[18];
assign MUX_OUT = MF ? MERGE1_OUT : MERGE2_OUT; 

//output
assign PACKET_OUT = (MUX_OUT[`MMRAM_MUXOUT_LR])? {MUX_OUT[`MMRAM_MUXOUT_CGD], MUX_OUT[`MMRAM_MUXOUT_CZ], MUX_OUT[`MMRAM_MUXOUT_LWRDATA], MUX_OUT[`MMRAM_MUXOUT_UPRDATA]}: //LWRDATAはたぶん、RAMやCST_MEMからよんだデータでUPRDATAはDLからのデータ
                                                 {MUX_OUT[`MMRAM_MUXOUT_CGD], MUX_OUT[`MMRAM_MUXOUT_CZDD]};

endmodule