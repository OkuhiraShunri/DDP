(* dont_touch = "true" *)
//`include "macro.vh"
`include "common_macro.vh"
module MA_Stage(
    input WRITE_EN, LOAD_FLG, Send_in, Ack_in, MR,
    input [15:0] WRITE_DATA,
    input [39:0] PACKET_IN,
    output Send_out, Ack_out,
    output [39:0] PACKET_OUT
);


(* dont_touch = "true" *) reg [`DMEM_WIDTH_SIZE] DMEM [`DMEM_HEIGHT_SIZE];//DMEM_WIDTH >> 16 DMEM_DEPTH >> 1024
(* dont_touch = "true" *) reg [`MA_DL_SIZE] DL; //MA_PACKET_SIZE >> 40, 最上位ビットはLOAD_FLG, DLは計41bit

integer i;
initial begin
    for (i = 0; i < `DMEM_HEIGHT; i = i + 1) begin
        DMEM[i] <= `DMEM_WIDTH'd0;
    end
end

(* dont_touch = "true" *) wire CP;
(* dont_touch = "true" *) C c(.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP(CP));

//DLの更新
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 41'b0;
    end
    else begin
        DL <= {LOAD_FLG, PACKET_IN};
    end
end

//DMEMの読み出しと書き込み処理
(* dont_touch = "true" *) wire [`MA_PACKET_RESULTDATA] ResultData;
assign ResultData = PACKET_IN[`MA_PACKET_RESULTDATA];//メモリアドレス取得
(* dont_touch = "true" *) reg [15:0] LOAD_DATA;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        for (i = 0; i < `DMEM_HEIGHT; i = i + 1) begin
            DMEM[i] <= `DMEM_WIDTH'd0;
        end
        LOAD_DATA <= 16'b0;
    end
    else if(WRITE_EN)begin//書き込み処理
        DMEM[ResultData] <= WRITE_DATA;
    end
    else begin//読み出し処理
        LOAD_DATA <= DMEM[ResultData];
    end
end

//merge処理
(* dont_touch = "true" *) wire [`MA_MERGE_SIZE] MERGE_DATA;//MA_MERGE_LENGTH >> 40
(* dont_touch = "true" *) wire [`MA_OTHERDATA_SIZE] OTHER_DATA; //OTHER_DATA_LENGTH >> 24
assign OTHER_DATA = DL[`MA_PACKET_OTHERDATA];
assign MERGE_DATA = {OTHER_DATA, LOAD_DATA};


//output
assign PACKET_OUT = DL[40] ? MERGE_DATA : DL[39:0]; //DL[40]はLOAD_FLGに対応

endmodule