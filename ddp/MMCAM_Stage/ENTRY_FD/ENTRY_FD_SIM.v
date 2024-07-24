`timescale 1ns / 100ps
module ENTRY_FD_SIM();

    reg en, cp, mr;
    reg [18:0] color_gen_dest_LR;
    wire valid, fire;
    ENTRY_FD EF(.EN(en), .CP(cp), .MR(mr), .COLOR_GEN_DEST_LR(color_gen_dest_LR), .VALID(valid), .FIRE(fire));

    initial begin
        en = 1;
        cp = 0;
        mr = 0;
        color_gen_dest_LR = 19'd120;
    #50 cp = 1;
    #50
        color_gen_dest_LR = 19'd110;
    #50 cp = 0;
        color_gen_dest_LR = 19'b0000_0000_0000_0000_1111_001;
    #50
        cp = 1;
    end
endmodule