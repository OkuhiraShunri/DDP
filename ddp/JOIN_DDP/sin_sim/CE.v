`timescale 1ns/1ns
module CE (
    input Send_in, Ack_in, MR, exb,
    output Ack_out, Send_out, CP
);

wire CFS_out, CFA_in;
reg DL;

CF CF0 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(CFS_out), .Ack_in(CFA_in), .CP(CP));

assign Send_out = ~DL | CFS_out;
assign CFA_in = (DL | CFS_out) & Ack_in;


/* DL の更新処理 */
always @(posedge MR or posedge CP) begin
    if (MR) begin
        DL <= 1'b1;
    end else begin
        DL <= exb;
    end
end

endmodule