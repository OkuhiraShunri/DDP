`timescale 1ns / 100ps
module C_TEST();
reg send_in, mr;
wire cp1, cp2, cp3, cp4, cp5, cp6, cp7, cp8;

C_JOIN c(.Send_in(send_in), .MR(mr), .CP1(cp1), .CP2(cp2), .CP3(cp3), .CP4(cp4), .CP5(cp5), .CP6(cp6), .CP7(cp7), .CP8(cp8));
// initial begin
//     send_in = 1;
// #11
//     send_in = 0;
// 
initial begin
    send_in = 1;
     mr = 1;
#100 mr = 0;
#11  send_in = 0;
#11  send_in = 1;

#11 send_in = 0;
#11 send_in = 1;

//#50 mr = 1;
// #30  send_in = 0;
// #30  send_in = 1;

// #5  send_in = 0;
// #5  send_in = 1;


end
// always begin
//         send_in = 1;
//   #11   send_in = 0;
//   #11;
// end

endmodule