// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 14:01:11 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.gen/sources_1/ip/PS/PS_sim_netlist.v
// Design      : PS
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PS,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module PS
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [16:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [16:0]douta;
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
  wire [16:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.751199 mW" *) 
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
  (* C_INIT_FILE = "PS.mem" *) 
  (* C_INIT_FILE_NAME = "PS.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "20" *) 
  (* C_READ_DEPTH_B = "20" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "17" *) 
  (* C_READ_WIDTH_B = "17" *) 
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
  (* C_WRITE_WIDTH_A = "17" *) 
  (* C_WRITE_WIDTH_B = "17" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  PS_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[16:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[16:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19200)
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
