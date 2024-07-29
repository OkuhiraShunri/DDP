`include "common_macro.vh"
module MA_Stage (
    input Send_in, Ack_in, MR, WRITE_EN, LOAD_FLG,
    input [`DATA_SIZE] WRITE_DATA, 
    input [`MA_PACKET_SIZE] PACKET_IN,
    output Send_out, Ack_out,
    output [`MA_PACKET_SIZE] PACKET_OUT
);
reg [`DMEM_WIDTH_SIZE] Dmem[`DMEM_HEIGHT_SIZE];    // Data Memory

wire CP;
wire [`DATA_SIZE] LOAD_DATA;
wire [`MA_OTHERDATA_SIZE] OTHER_DATA;
wire [`MA_PACKET_SIZE] MERGE_DATA;
wire [`MA_DL_SIZE] DL;

C C6 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP(CP));


/* Dmem の初期化処理 */
integer i;
initial begin
    for (i = 0; i < `DMEM_HEIGHT; i = i + 1) begin
            Dmem[i] = `DMEM_WIDTH'd0;
    end
end

/* Dmem の更新処理 (データの書き込み) */
always @(posedge MR or posedge CP) begin
    if (MR) begin
        for (i = 0; i < `DMEM_HEIGHT; i = i + 1) begin
            Dmem[i] <= `DMEM_WIDTH'd0;
        end
    end
    else if (CP & WRITE_EN) begin
        Dmem[PACKET_IN[`MA_PACKET_RESULTDATA]] <= WRITE_DATA;
    end
end


assign DL = (CP)? {PACKET_IN[`MA_PACKET_SIZE], LOAD_FLG}: DL;
assign LOAD_DATA = Dmem[PACKET_IN[`MA_PACKET_RESULTDATA]];
assign OTHER_DATA = DL[`MA_PACKET_OTHERDATA];
assign MERGE_DATA = {OTHER_DATA, LOAD_DATA};
assign PACKET_OUT = (DL[`MA_DL_LOADFLG])? MERGE_DATA: DL[`MA_DL_PACKETOUT];
    
endmodule