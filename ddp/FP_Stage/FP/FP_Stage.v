`include "macro.vh"
module FP_Stage(
    input [61:0] PACKET_IN,
    input DEL, Send_in, Ack_in, MR, 
    output Send_out, Ack_out,
    output [15:0] WRITE_DATA,
    output [39:0] PACKET_OUT,
    output WRITE_EN, LOAD_FLG
);
wire CP;
CE ce(.CE_Send_in(Send_in), .CE_Ack_in(Ack_in), .MR(MR), .Exb(DEL), .CE_Ack_out(Ack_out), .CE_Send_out(Send_out), .CE_CP(CP));
//pipline reg DLの書き込み処理
reg [61:0] DL;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 62'b0;
    end
    else begin
        DL <= PACKET_IN;
    end
end

//ALUのインプット信号生成
wire [5:0] OPC;
wire [15:0] DataL, DataR;
wire [2:0] color;
wire [7:0] gen;
wire [6:0] dest;
wire [1:0] LR2;
wire BR, CPY, C, Z;
assign {color, gen, dest, LR2, BR, CPY, OPC, C, Z, DataL, DataR} = DL;

function [`ALU_LENGTH - 1:0] ALU;//ALU_LENGTH >> 58
    input [2:0] color;
    input [7:0] gen;
    input [6:0] dest;
    input [1:0] LR2;
    input BR;
    input CPY;
    input [5:0] OPC;
    input C;
    input Z;
    input [15:0] DataL;
    input [15:0] DataR;
    case(OPC)
        //Arithmetic and logic operation
        `ADD:
            begin
                {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                {ALU[`ALU_C], ALU[`ALU_PACKET_ResultData]} = DataL + DataR;//演算結果は16ビットまで格納でき、16ビット超えたら桁上がり
                ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
            end
        `ADDC:
            begin
                
            end
        `SUB:
            begin
                
            end
        `SUBC:
            begin
                
            end
        `AND:
            begin
                {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                ALU[`ALU_PACKET_ResultData] = DataL & DataR;
                ALU[`ALU_C] = 1'b0;
                ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
            end
        `OR:
            begin
                {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                ALU[`ALU_PACKET_ResultData] = DataL | DataR;
                ALU[`ALU_C] = 1'b0;
                ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
            end
        `XOR:
            begin
                {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                ALU[`ALU_PACKET_ResultData] = DataL ^ DataR;
                ALU[`ALU_C] = 1'b0;
                ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
            end
        `MUL:       
            begin
                {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                ALU[`ALU_PACKET_ResultData] = DataL * DataR;
                ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
            end

        //Shift instruction
        `SHL:
            begin
                {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                ALU[`ALU_color_to_CPY] = {color, gen, dest, LR2, BR, CPY};
                ALU[`ALU_PACKET_ResultData] = DataL << DataR;
                ALU[`ALU_Z] = ~|ALU[`ALU_PACKET_ResultData];
            end
        `SHR:
            begin
                
            end
        `ROL:
            begin
                
            end
        `ROR:
            begin
                
            end
        
        //condititional branch instruction
        `BZ:
            begin
                {ALU[`ALU_WRITE_EN], ALU[`ALU_WRITE_DATA], ALU[`ALU_LOAD_FLG]} = {1'b0, DataL, 1'b0};
                ALU[`ALU_color_to_CPY] = {color, gen, (Z)? dest+`dest_LENGTH'b1 : dest, (Z)?{LR2[0], LR2[1]} : {LR2[1], LR2[0]}, BR, CPY};
                ALU[`ALU_PACKET_ResultData] = DataL;
                ALU[`ALU_C] = C;
                ALU[`ALU_Z] = Z;
            end
        `BNZ:
            begin
                
            end
        `BC:
            begin
                
            end
        `BNC:
            begin
                
            end
        `BZL:
            begin
                
            end
        `BNZL:
            begin
                
            end
        
        //Load ans Store instruction
        `LDM:
            begin
                
            end
        `STM:
            begin
                
            end
        
        //Packet erasing instruction
        `ABSORB:
            begin
                
            end
        
        //Identifier change instruction
        `CHGCOL:
            begin
                
            end
        `ADDGEN:
            begin
                
            end
        `DECGEN:
            begin
                
            end
    endcase

endfunction

endmodule