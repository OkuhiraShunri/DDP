`include "common_macro.vh"
module MMRAM_Stage (
    input Send_in, Ack_in, MR, DEL, WR_E,
    input [`MMRAM_ADDR_SIZE] ADDR,
    input [`MMRAM_PACKIN_SIZE] PACKET_IN,
    output Send_out, Ack_out, 
    output [`MMRAM_PACKOUT_SIZE] PACKET_OUT
);

reg [`CMEM_WIDTH_SIZE] Cmem[`CMEM_HEIGHT_SIZE];         // Constant Memory
reg [`MMRAM_WIDTH_SIZE] MMRAM[`MMRAM_HEIGHT_SIZE];      // MM Random Access Memory

wire CP, MF;
wire [`DATA_SIZE] CST_DATA;
wire [`MMRAM_DATAIO_SIZE] DATA_IN, DATA_OUT;
wire [`MMRAM_MERGEOUT_SIZE] MERGE1_OUT, MERGE2_OUT, MUX_OUT;
reg [`MMRAM_DL_SIZE] DL;

CE CE5 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP(CP), .exb(DEL));


/* Cmem の初期化処理 (ROM のためこれ以降は書き込まない) */
integer i;
initial begin
    for (i = 0; i < `CMEM_HEIGHT; i = i + 1) begin
            Cmem[i] = `CMEM_WIDTH'd0;
    end
    $readmemh("Factorial_constant.txt", Cmem);       // 使用するプログラムファイルを指定
end

/* MMRAM の初期化処理 */
initial begin
    for (i = 0; i < `MMRAM_HEIGHT; i = i + 1) begin
            MMRAM[i] = `MMRAM_WIDTH'd0;
    end
end

/* MMRAM の更新処理 (データの書き込み) */
always @(posedge MR or posedge CP) begin
    if (MR) begin
        for (i = 0; i < `MMRAM_HEIGHT; i = i + 1) begin
            MMRAM[i] = `MMRAM_WIDTH'd0;
        end
    end
    else if (CP & DL[`MMRAM_DL_WR_E]) begin
        MMRAM[DL[`MMRAM_DL_ADDR]] <= DATA_IN;
    end
end

assign MF = DL[`MMRAM_DL_MF];
assign CST_DATA = (CP)? Cmem[DL[`MMRAM_DL_DEST_6bit]]: CST_DATA;
assign DATA_IN = DL[`MMRAM_DL_LMCZD];
assign DATA_OUT = (CP)? MMRAM[DL[`MMRAM_DL_ADDR]]: DATA_OUT;

assign MERGE1_OUT = (DL[`MMRAM_DL_LR])? {DL[`MMRAM_DL_CGDLM], DL[`MMRAM_DL_CZ], DL[`MMRAM_DL_DATA], DATA_OUT[`MMRAM_DATAOUT_DATA]}:
                                                        {DL[`MMRAM_DL_CGDLM], DATA_OUT[`MMRAM_DATAOUT_CZ], DL[`MMRAM_DL_DATA], DATA_OUT[`MMRAM_DATAOUT_DATA]};
assign MERGE2_OUT = {DL[`MMRAM_DL_MMPACKIN], CST_DATA};
assign MUX_OUT = (MF)? MERGE1_OUT: MERGE2_OUT;
assign PACKET_OUT = (MUX_OUT[`MMRAM_MUXOUT_LR])? {MUX_OUT[`MMRAM_MUXOUT_CGD], MUX_OUT[`MMRAM_MUXOUT_CZ], MUX_OUT[`MMRAM_MUXOUT_LWRDATA], MUX_OUT[`MMRAM_MUXOUT_UPRDATA]}: 
                                                    {MUX_OUT[`MMRAM_MUXOUT_CGD], MUX_OUT[`MMRAM_MUXOUT_CZDD]};

/* DL の更新処理 */
always @(posedge MR or posedge CP) begin
    if (MR) begin
        DL <= `MMRAM_DL_WIDTH'b0;
    end else begin
        DL <= {WR_E, ADDR, PACKET_IN};
    end
end
    
endmodule