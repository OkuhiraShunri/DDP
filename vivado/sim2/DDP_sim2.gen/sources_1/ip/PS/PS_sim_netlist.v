// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 17:32:34 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [16:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "17" *) 
  (* C_WRITE_WIDTH_B = "17" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  PS_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19344)
`pragma protect data_block
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
yxKwOcRJdfEzOMlMZfVr5CZa41JK
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
