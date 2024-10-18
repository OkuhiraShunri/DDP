(* dont_touch = "true" *)
module Delay_2ns (din, dout);
    /*** port ***/
    input din;
    output dout;
    (* dont_touch = "true" *)wire t00, t01, t02, t03, t04, t05;
   
    (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_00 (.O(t00), .I0(din));
    (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_01 (.O(t01), .I0(t00));
    (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_02 (.O(t02), .I0(t01));
    (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_03 (.O(t03), .I0(t02));
    (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_04 (.O(dout), .I0(t03));

    // (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_00 (.O(t00), .I0(din));
    // (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_01 (.O(t01), .I0(t00));
    // (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_02 (.O(t02), .I0(t01));
    // (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_03 (.O(t03), .I0(t02));
    // (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_04 (.O(t04), .I0(t03));
    // (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_05 (.O(t05), .I0(t04));
    // (* dont_touch = "true" *) LUT1 #(.INIT(2'b10)) buf_inst_06 (.O(dout), .I0(t05));
endmodule