// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 13:56:48 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.gen/sources_1/ip/CMEM/CMEM_stub.v
// Design      : CMEM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *)
module CMEM(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="addra[4:0],douta[15:0]" */
/* synthesis syn_force_seq_prim="clka" */;
  input clka /* synthesis syn_isclock = 1 */;
  input [4:0]addra;
  output [15:0]douta;
endmodule
