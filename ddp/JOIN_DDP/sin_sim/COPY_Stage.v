`include "common_macro.vh"
module COPY_Stage (
    input Send_in, Ack_in, MR, 
    input [`COPY_PACKIN_SIZE] PACKET_IN,
    output Send_out, Ack_out,
    output [`COPY_PACKOUT_SIZE] PACKET_OUT
);

wire CP, EXB, CPY, FEB;
wire [`DEST_SIZE] PS_address;
reg [`COPY_PACKOUT_SIZE] DL;

CX2 CX27 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(Send_out), 
            .Ack_in(Ack_in), .CP(CP), .exb(EXB), .cpy(CPY), .feb(FEB));


assign EXB = 1'b1;
assign CPY = PACKET_IN[`COPY_PACKIN_CPY];
assign PS_address = (FEB)? DL[`COPY_DL_DEST] + `DEST_WIDTH'b1: DL[`COPY_DL_DEST];
assign PACKET_OUT = {DL[`COPY_DL_CG], PS_address, DL[`COPY_DL_LBMCZD]};

/* DL の更新処理 */
always @(posedge MR or posedge CP) begin
    if (MR) begin
        DL <= `COPY_PACKOUT_WIDTH'b0;
    end else begin
        DL <= {PACKET_IN[`COPY_PACKIN_CGDLBM], PACKET_IN[`COPY_PACKIN_CZD]};
    end
end
    
endmodule