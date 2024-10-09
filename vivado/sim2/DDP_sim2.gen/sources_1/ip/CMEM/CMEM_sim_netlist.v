// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 17:39:00 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  CMEM_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19408)
`pragma protect data_block
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
PgpGino+2dR/jxIj10tKJvqNMjDrpK/0W+oBzg==
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
