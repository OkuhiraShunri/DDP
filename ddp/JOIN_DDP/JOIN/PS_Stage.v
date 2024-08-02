`include "common_macro.vh"

module PS_Stage(
    input Send_in, Ack_in, MR,
    input [51:0] PACKET_IN,
    output [61:0] PACKET_OUT,
    output DEL, Send_out, Ack_out
);
`include "common_param.vh"
reg [`PS_WIDTH_SIZE] PS[`PS_HEIGHT_SIZE];//PS_WIDTH_SIZE >> 16:0 , PS_HEIGHT_SIZE >> 0:127
reg [51:0] DL;
wire CP;
C c(.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), .Ack_in(Ack_in), .CP(CP));

integer i;
initial begin
    for (i = 0; i < `PS_HEIGHT; i = i + 1) begin
            PS[i] = `PS_WIDTH'd0;
    end
    //$readmemh("Recursion.txt", PS);       // 使用するプログラムファイルを指定

    //**************************** 単体sim用に値を格納しておく*********************////////////////////////
    PS[0] = {7'b0011, 4'b1111, ADDC};
    PS[1] = {7'b1010, 4'b1111, SUBC};
    PS[2] = {7'b1100, 4'b1111, ADDC};
    PS[3] = {7'b1111, 4'b1111, ABSORB};
    //////////////////////**************************************************//////////////////////////
end

//DLの書き込み処理
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 52'b0;
    end
    else begin
        DL <= PACKET_IN;
    end
end

//PSの読み出し処理
reg [16:0] PSData;
wire [6:0] dest;
assign dest = PACKET_IN[`PS_PACKIN_DEST];
//assign PSData = CP ? PS[dest] : PSData;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        PSData <= 17'b0;  
    end
    else begin
        PSData <= PS[dest];
    end
end

//merge処理 & output
assign PACKET_OUT = {DL[`PS_PACKIN_CG], PSData, DL[`PS_PACKIN_CZDD]};//PS_PACKIN_CG >> 51:41, PS_PACKIN_CZDD >> 33:0

//ABSORB & output
assign DEL = (PACKET_OUT[`PS_PACKOUT_OPC] == ABSORB)? 1'b0: 1'b1; 

endmodule
