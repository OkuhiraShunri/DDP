`include "common_macro.vh"
module PS_Stage (
    input Send_in, Ack_in, MR,
    input [`PS_PACKIN_SIZE] PACKET_IN,
    output Send_out, Ack_out, DEL, 
    output [`PS_PACKOUT_SIZE] PACKET_OUT
);
`include "common_param.vh"
reg [`PS_WIDTH_SIZE] PS[`PS_HEIGHT_SIZE];    // Program Storage

wire CP;
wire [`PS_WIDTH_SIZE] PSData;
wire [`PS_PACKIN_SIZE] DL;

C C4 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP(CP));


/* PS の初期化処理 (ROM のためこれ以降は書き込まない) */
integer i;
initial begin
    for (i = 0; i < `PS_HEIGHT; i = i + 1) begin
            PS[i] = `PS_WIDTH'd0;
    end
    $readmemh("Recursion.txt", PS);       // 使用するプログラムファイルを指定

    //**************************** 単体sim用に値を格納しておく*********************////////////////////////
    PS[0] = {7'b0011, 4'b1111, ADDC};
    PS[1] = {7'b1010, 4'b1111, SUBC};
    PS[2] = {7'b1100, 4'b1111, ADDC};
    PS[3] = {7'b1111, 4'b1111, ABSORB};
    //////////////////////**************************************************//////////////////////////
end

assign DL = (CP)? PACKET_IN: DL;
assign PSData = (CP)? PS[PACKET_IN[`PS_PACKIN_DEST]]: PSData;
assign PACKET_OUT = {DL[`PS_PACKIN_CG], PSData, DL[`PS_PACKIN_CZDD]};
assign DEL = (PACKET_OUT[`PS_PACKOUT_OPC] == ABSORB)? 1'b0: 1'b1;   // operation codes (Packet erasing instructions)

    
endmodule