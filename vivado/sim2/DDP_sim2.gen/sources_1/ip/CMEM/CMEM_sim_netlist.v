// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 15:16:04 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.gen/sources_1/ip/CMEM/CMEM_sim_netlist.v
// Design      : CMEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CMEM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module CMEM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "CMEM.mem" *) 
  (* C_INIT_FILE_NAME = "CMEM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "20" *) 
  (* C_READ_DEPTH_B = "20" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "20" *) 
  (* C_WRITE_DEPTH_B = "20" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  CMEM_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19264)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
