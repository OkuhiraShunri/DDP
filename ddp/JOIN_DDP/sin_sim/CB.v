`timescale 1ns/1ns
module CB (
    input Send_in, Ack_in_a, Ack_in_b, MR, br,
    output Ack_out, Send_out_a, Send_out_b, CP
);

wire CFS_out, CFA_in;
reg DL;

CF CF0 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(CFS_out), .Ack_in(CFA_in), .CP(CP));

assign Send_out_a = ~(~DL & ~CFS_out);
assign Send_out_b = ~(DL & ~CFS_out);
assign CFA_in = Ack_in_a & Ack_in_b;


/* DL の更新処理 */
always @(posedge MR or posedge CP) begin
    if (MR) begin
        DL <= 1'b0;
    end else begin
        DL <= br;
    end
end

endmodule