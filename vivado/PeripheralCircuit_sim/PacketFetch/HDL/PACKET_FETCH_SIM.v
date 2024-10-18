`timescale 1ns/100ps
module PACKET_FETCH_SIM();
reg send_in, rst;
wire [37:0] packect_out;
PACKET_FETCH PACKET_FETCH(.Send_in(send_in), .RST(rst), .PACKET_OUT(packect_out));


initial begin
        rst = 0;
#50    rst = 1;
#50    rst = 0;
end
initial begin
        send_in = 0;
#200    send_in = 1; 
#50     send_in = 0;
#50     send_in = 1;
#50     send_in = 0;
#50     send_in = 1;
end
endmodule