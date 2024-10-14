// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 15:16:03 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ CMEM_sim_netlist.v
// Design      : CMEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CMEM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19392)
`pragma protect data_block
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
9OrjXhmil0VNUAUe
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
