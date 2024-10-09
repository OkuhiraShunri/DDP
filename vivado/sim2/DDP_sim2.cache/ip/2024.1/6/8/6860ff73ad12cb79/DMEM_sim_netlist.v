// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 13:58:43 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DMEM_sim_netlist.v
// Design      : DMEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DMEM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire [0:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
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
  (* C_INIT_FILE = "DMEM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
        .dina(dina),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20048)
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
