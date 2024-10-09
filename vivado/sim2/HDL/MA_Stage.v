(* dont_touch = "true" *)
`include "macro.vh"
module MA_Stage(
    input WRITE_EN, LOAD_FLG, Send_in, Ack_in, MR,
    input [15:0] WRITE_DATA,
    input [39:0] PACKET_IN,
    output Send_out, Ack_out,
    output [39:0] PACKET_OUT
);


//(* dont_touch = "true" *) reg [`DMEM_WIDTH - 1 : 0] DMEM [0:`DMEM_DEPTH - 1];//DMEM_WIDTH >> 16 DMEM_DEPTH >> 1024
(* dont_touch = "true" *) reg [`MA_PACKET_SIZE : 0] DL; //MA_PACKET_SIZE >> 40, 最上位ビットはLOAD_FLG, DLは計41bit

// integer i;
// initial begin
//     for (i = 0; i < `DMEM_DEPTH; i = i + 1) begin
//         DMEM[i] <= `DMEM_WIDTH'd0;
//     end
// end

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
 (* dont_touch = "true" *) wire [16:0] ResultData;
 assign ResultData = PACKET_IN[15:0];//メモリアドレス取得
// (* dont_touch = "true" *) reg [15:0] LOAD_DATA;
// always @(posedge CP or posedge MR) begin
//     if(MR)begin
//         for (i = 0; i < `DMEM_DEPTH; i = i + 1) begin
//             DMEM[i] <= `DMEM_WIDTH'd0;
//         end
//         LOAD_DATA <= 16'b0;
//     end
//     else if(WRITE_EN)begin//書き込み処理
//         DMEM[ResultData] <= WRITE_DATA;
//     end
//     else begin//読み出し処理
//         LOAD_DATA <= DMEM[ResultData];
//     end
// end
(* dont_touch = "true" *) wire [15:0] LOAD_DATA;
DMEM dmem(
    .clka(CP),    // input wire clka
    .wea(WRITE_EN),      // input wire [0 : 0] wea
    .addra(ResultData[9:0]),  // input wire [5 : 0] addra
    .dina(WRITE_DATA),    // input wire [19 : 0] dina
    .douta(LOAD_DATA)  // output wire [19 : 0] douta
);

//merge処理
(* dont_touch = "true" *) wire [`MA_MERGE_LENGTH - 1 : 0] MERGE_DATA;//MA_MERGE_LENGTH >> 40
(* dont_touch = "true" *) wire [`OTHER_DATA_LENGTH - 1 : 0] OTHER_DATA; //OTHER_DATA_LENGTH >> 24
assign OTHER_DATA = DL[39:16];
assign MERGE_DATA = {OTHER_DATA, LOAD_DATA};


//output
assign PACKET_OUT = DL[40] ? MERGE_DATA : DL[39:0]; //DL[40]はLOAD_FLGに対応

endmodule