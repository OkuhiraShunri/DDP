`timescale 1ns/100ps
module PACKET_FETCH_SIM();
reg send_in, rst, update;
wire [37:0] packect_out;
wire [4:0] pc_out;
PACKET_FETCH PACKET_FETCH(.Send_in(send_in), .RST(rst), .PC_UDDATE(update), .PACKET_OUT(packect_out), .PC_OUT(pc_out));


initial begin
        rst = 1;
#100    rst = 0;
//#50    rst = 0;
end
initial begin
        send_in = 0;
#200    send_in = 1; 
#50     send_in = 0;
#50     send_in = 1;
#50     send_in = 0;
#50     send_in = 1;

#500     send_in = 0;
#50     send_in = 1;
#50     send_in = 0;
#50     send_in = 1;
end

initial begin
        update = 0;
#500    update = 1;
#50     update = 0;
end
endmodule