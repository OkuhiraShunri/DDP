// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 17:32:34 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PS_sim_netlist.v
// Design      : PS
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PS,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
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
