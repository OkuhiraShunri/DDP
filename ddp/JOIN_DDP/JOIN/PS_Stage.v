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
    PS[0] = {7'b0000, 4'b1111, ADDC};
    PS[1] = {7'd3, 4'b0000, ADD};
    PS[2] = {7'd3, 4'b1000, ADD};
    PS[3] = {7'd0, 4'b0010, SUB};
    PS[4] = {7'd5, 4'b0000, BZ};
    PS[5] = {7'd0, 4'b0010, SUB};
    PS[6] = {7'd0, 4'b0010, ADD};
    PS[7] = {7'd8, 4'b0001, ADD};
    PS[8] = {7'd0, 4'b0010, MUL};
    PS[9] = {7'd0, 4'b0010, SUB};
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
assign DEL = (PACKET_OUT[`PS_PACKOUT_OPC] == ABSORB)? 1'b0: 1'b1; //PS_PACKOUT_OPC >> 39:34
//assign DEL = 1;
endmodule
