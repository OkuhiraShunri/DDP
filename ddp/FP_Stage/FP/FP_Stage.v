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
assign OPC = DL[39:34];
wire [15:0] DataL, DataR;
assign DataL = DL[31:16];
assign DataR = DL[15:0];

function [`ALU_LENGTH - 1:0] ALU;//ALU_LENGTH >> 58
    input [5:0] OPC;
    input [15:0] DataL;
    input [15:0] DataR;
    case(OPC)
        `ADD:
            begin
                
            end
        `ADDC:
            begin
                
            end
    endcase
    
endfunction

endmodule