// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 13:56:48 2024
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
