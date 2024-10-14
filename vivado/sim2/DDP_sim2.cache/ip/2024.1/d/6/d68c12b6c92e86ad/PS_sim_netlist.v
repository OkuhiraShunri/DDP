// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 15:16:03 2024
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19344)
`pragma protect data_block
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
teX8FSS3EPRvNs8du8mmcEPFFbTl
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
