`include "common_macro.vh"
//`include "macro.vh"
module MMRAM_Stage(
    input WR_E, DEL, MR, Send_in, Ack_in,
    input [`MMRAM_ADDR_SIZE] ADDR,
    input [`MMRAM_PACKIN_SIZE] PACKET_IN,
    output [`MMRAM_PACKOUT_SIZE] PACKET_OUT,
    output Send_out, Ack_out
);

reg [`MMRAM_WIDTH_SIZE] RAM[`MMRAM_HEIGHT_SIZE];
reg [`CMEM_WIDTH_SIZE] CST_MEM[`CMEM_HEIGHT_SIZE];
integer i;
initial begin
    for (i = 0; i < `MMRAM_HEIGHT; i = i + 1) begin//RAM初期化
            RAM[i] = `MMRAM_WIDTH'd0;
    end
    for (i = 0; i < `CMEM_HEIGHT; i = i + 1) begin//CST_MEM初期化
            CST_MEM[i] = i + 1;
    end

    CST_MEM[0] = 0;
    CST_MEM[1] = 1;
    CST_MEM[2] = 0;
    CST_MEM[4] = 1;
    CST_MEM[5] = 0;
    CST_MEM[7] = 0;
    CST_MEM[8] = 0;
    CST_MEM[9] = 1;
    CST_MEM[12] = 0;
    CST_MEM[13] = 1;
    CST_MEM[14] = 0;
end
wire CP;
CE ce(.CE_Send_in(Send_in), .CE_Ack_in(Ack_in), .MR(MR), .Exb(DEL), .CE_Ack_out(Ack_out), .CE_Send_out(Send_out), .CE_CP(CP));

//---DLとRAMの書き込み処理---
reg [37:0] DL;
wire [`MMRAM_DATAIO_SIZE] DATA_IN;
assign DATA_IN = PACKET_IN[`MMRAM_PACKIN_LMCZD];
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 38'b0;
    end
    else if(WR_E)begin
        RAM[ADDR] <= DATA_IN;
        DL <= PACKET_IN;
    end
    else if(!WR_E)begin
        DL <= PACKET_IN;
    end
end

//---RAMの読み出し処理---
// wire [20:0] DATA_OUT;
// assign DATA_OUT = RAM[ADDR];//組み合わせ回路
reg [`MMRAM_DATAIO_SIZE] DATA_OUT;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DATA_OUT <= `MMRAM_DATAIO_WIDTH'b0;
    end
    else begin
        DATA_OUT <= RAM[ADDR];
    end
end

//---CST_MEMの読み出し処理(書き込みはしない)---
// wire [6:0] dest;
// wire [15:0] CST_DATA;
// assign dest = PACKET_IN[26:20];
// assign CST_DATA = CP ? CST_MEM[dest] : CST_DATA;//組み合わせ回路
wire [`DEST_SIZE] dest;
assign dest = PACKET_IN[`MMRAM_PACKIN_DEST];
reg [`CMEM_WIDTH_SIZE] CST_DATA;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        CST_DATA <= `CMEM_WIDTH'b0;
    end
    else begin
        CST_DATA <= CST_MEM[dest];
    end
end




//merge1
wire [`MMRAM_MERGEOUT_SIZE] MERGE1_OUT;
//assign MERGE1_OUT = {DL, DATA_OUT[15:0]}; 
assign MERGE1_OUT[31:0] = {DL[`MMRAM_PACKIN_DATA], DATA_OUT[`MMRAM_DATAOUT_DATA]};    //DATA結合
assign MERGE1_OUT[34:32] = (DL[19])? DL[18:16] : DATA_OUT[18:16];//DLのLRフラグが1(右)ならDLのCとZをMERGEに反映。逆にLRフラグが0(左)なら待ち合わせパケットのCとZをMERGEに反映。
assign MERGE1_OUT[35] = DL[19];  //LR
assign MERGE1_OUT[53:36] = DL[37:20];//color_gen_dest

//merge2
wire [`MMRAM_MERGEOUT_SIZE] MERGE2_OUT;
assign MERGE2_OUT = {DL, CST_DATA};

//mux
wire [`MMRAM_MERGEOUT_SIZE] MUX_OUT;
wire MF;
assign MF = DL[`MMRAM_PACKIN_MF];
assign MUX_OUT = MF ? MERGE1_OUT : MERGE2_OUT; 

//output
assign PACKET_OUT = (MUX_OUT[`MMRAM_MUXOUT_LR])? {MUX_OUT[`MMRAM_MUXOUT_CGD], MUX_OUT[`MMRAM_MUXOUT_CZ], MUX_OUT[`MMRAM_MUXOUT_LWRDATA], MUX_OUT[`MMRAM_MUXOUT_UPRDATA]}: //LWRDATAはたぶん、RAMやCST_MEMからよんだデータでUPRDATAはDLからのデータ
                                                 {MUX_OUT[`MMRAM_MUXOUT_CGD], MUX_OUT[`MMRAM_MUXOUT_CZDD]};

endmodule