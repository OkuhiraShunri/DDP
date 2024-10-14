(* dont_touch = "true" *)
//`include "macro.vh"
`include "common_macro.vh"
module MMCAM_Stage(
    input MR, Send_in, Ack_in, 
    input [37:0] PACKET_IN,
    output [37:0] PACKET_OUT,
    output WR_E, DEL, Ack_out, Send_out,
    output [5:0] ADDR
);

(* dont_touch = "true" *) wire CP;
(* dont_touch = "true" *) wire [`MMCAM_EFV_SIZE] EN, FIRE, VALID; 

(* dont_touch = "true" *) C c(.Send_in(Send_in), .Ack_in(Ack_in), .MR(MR), .Ack_out(Ack_out), .Send_out(Send_out), .CP(CP));
genvar i;
generate
    for (i = 0; i < `MMCAM_ENTRY_HEIGHT; i = i + 1) begin :entry_fd_loop
        (* dont_touch = "true" *) ENTRY_FD ef(.CP(CP), .MR(MR), .EN(EN[i]), .COLOR_GEN_DEST_LR(PACKET_IN[37:19]), .VALID(VALID[i]), .FIRE(FIRE[i]));
    end
endgenerate

(* dont_touch = "true" *) OR_AM_MA oam(.FIRE(FIRE), .VALID(VALID), .MF(PACKET_IN[18]), .CP(CP), .MR(MR), .EN(EN), .WR_E(WR_E), .DEL(DEL), .ADDR(ADDR));

(* dont_touch = "true" *) reg [37:0] DL;
always @(posedge CP or posedge MR) begin
    if(MR)begin
        DL <= 38'b0; 
    end
    else begin
        DL <= PACKET_IN; 
    end
end

assign PACKET_OUT = DL;

endmodule