// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="knn_cluster4,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=11.378000,HLS_SYN_LAT=25725,HLS_SYN_TPT=9496,HLS_SYN_MEM=48,HLS_SYN_DSP=5,HLS_SYN_FF=14977,HLS_SYN_LUT=23743,HLS_VERSION=2019_2}" *)

module knn_cluster4 (
        Input_1_V_V,
        Output_1_V_V,
        ap_clk,
        ap_rst,
        Input_1_V_V_ap_vld,
        Input_1_V_V_ap_ack,
        ap_start,
        Output_1_V_V_ap_vld,
        Output_1_V_V_ap_ack,
        ap_done,
        ap_ready,
        ap_idle
);


input  [31:0] Input_1_V_V;
output  [31:0] Output_1_V_V;
input   ap_clk;
input   ap_rst;
input   Input_1_V_V_ap_vld;
output   Input_1_V_V_ap_ack;
input   ap_start;
output   Output_1_V_V_ap_vld;
input   Output_1_V_V_ap_ack;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire    update_knn16_U0_ap_start;
wire    update_knn16_U0_ap_done;
wire    update_knn16_U0_ap_continue;
wire    update_knn16_U0_ap_idle;
wire    update_knn16_U0_ap_ready;
wire    update_knn16_U0_start_out;
wire    update_knn16_U0_start_write;
wire    update_knn16_U0_Input_1_V_V_ap_ack;
wire   [31:0] update_knn16_U0_Output_1_V_V_din;
wire    update_knn16_U0_Output_1_V_V_write;
wire    update_knn17_U0_ap_start;
wire    update_knn17_U0_ap_done;
wire    update_knn17_U0_ap_continue;
wire    update_knn17_U0_ap_idle;
wire    update_knn17_U0_ap_ready;
wire    update_knn17_U0_start_out;
wire    update_knn17_U0_start_write;
wire    update_knn17_U0_Input_1_V_V_read;
wire   [31:0] update_knn17_U0_Output_1_V_V_din;
wire    update_knn17_U0_Output_1_V_V_write;
wire    update_knn18_U0_ap_start;
wire    update_knn18_U0_ap_done;
wire    update_knn18_U0_ap_continue;
wire    update_knn18_U0_ap_idle;
wire    update_knn18_U0_ap_ready;
wire    update_knn18_U0_start_out;
wire    update_knn18_U0_start_write;
wire    update_knn18_U0_Input_1_V_V_read;
wire   [31:0] update_knn18_U0_Output_1_V_V_din;
wire    update_knn18_U0_Output_1_V_V_write;
wire    update_knn19_U0_ap_start;
wire    update_knn19_U0_ap_done;
wire    update_knn19_U0_ap_continue;
wire    update_knn19_U0_ap_idle;
wire    update_knn19_U0_ap_ready;
wire    update_knn19_U0_start_out;
wire    update_knn19_U0_start_write;
wire    update_knn19_U0_Input_1_V_V_read;
wire   [31:0] update_knn19_U0_Output_1_V_V_din;
wire    update_knn19_U0_Output_1_V_V_write;
wire    update_knn20_U0_ap_start;
wire    update_knn20_U0_ap_done;
wire    update_knn20_U0_ap_continue;
wire    update_knn20_U0_ap_idle;
wire    update_knn20_U0_ap_ready;
wire    update_knn20_U0_Input_1_V_V_read;
wire   [31:0] update_knn20_U0_Output_1_V_V;
wire    update_knn20_U0_Output_1_V_V_ap_vld;
wire    ap_sync_continue;
wire    knn_out1_V_V_full_n;
wire   [31:0] knn_out1_V_V_dout;
wire    knn_out1_V_V_empty_n;
wire    knn_out2_V_V_full_n;
wire   [31:0] knn_out2_V_V_dout;
wire    knn_out2_V_V_empty_n;
wire    knn_out3_V_V_full_n;
wire   [31:0] knn_out3_V_V_dout;
wire    knn_out3_V_V_empty_n;
wire    knn_out4_V_V_full_n;
wire   [31:0] knn_out4_V_V_dout;
wire    knn_out4_V_V_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_update_knn17_U0_din;
wire    start_for_update_knn17_U0_full_n;
wire   [0:0] start_for_update_knn17_U0_dout;
wire    start_for_update_knn17_U0_empty_n;
wire   [0:0] start_for_update_knn18_U0_din;
wire    start_for_update_knn18_U0_full_n;
wire   [0:0] start_for_update_knn18_U0_dout;
wire    start_for_update_knn18_U0_empty_n;
wire   [0:0] start_for_update_knn19_U0_din;
wire    start_for_update_knn19_U0_full_n;
wire   [0:0] start_for_update_knn19_U0_dout;
wire    start_for_update_knn19_U0_empty_n;
wire   [0:0] start_for_update_knn20_U0_din;
wire    start_for_update_knn20_U0_full_n;
wire   [0:0] start_for_update_knn20_U0_dout;
wire    start_for_update_knn20_U0_empty_n;
wire    update_knn20_U0_start_full_n;
wire    update_knn20_U0_start_write;

update_knn16 update_knn16_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(update_knn16_U0_ap_start),
    .start_full_n(start_for_update_knn17_U0_full_n),
    .ap_done(update_knn16_U0_ap_done),
    .ap_continue(update_knn16_U0_ap_continue),
    .ap_idle(update_knn16_U0_ap_idle),
    .ap_ready(update_knn16_U0_ap_ready),
    .start_out(update_knn16_U0_start_out),
    .start_write(update_knn16_U0_start_write),
    .Input_1_V_V(Input_1_V_V),
    .Input_1_V_V_ap_vld(Input_1_V_V_ap_vld),
    .Input_1_V_V_ap_ack(update_knn16_U0_Input_1_V_V_ap_ack),
    .Output_1_V_V_din(update_knn16_U0_Output_1_V_V_din),
    .Output_1_V_V_full_n(knn_out1_V_V_full_n),
    .Output_1_V_V_write(update_knn16_U0_Output_1_V_V_write)
);

update_knn17 update_knn17_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(update_knn17_U0_ap_start),
    .start_full_n(start_for_update_knn18_U0_full_n),
    .ap_done(update_knn17_U0_ap_done),
    .ap_continue(update_knn17_U0_ap_continue),
    .ap_idle(update_knn17_U0_ap_idle),
    .ap_ready(update_knn17_U0_ap_ready),
    .start_out(update_knn17_U0_start_out),
    .start_write(update_knn17_U0_start_write),
    .Input_1_V_V_dout(knn_out1_V_V_dout),
    .Input_1_V_V_empty_n(knn_out1_V_V_empty_n),
    .Input_1_V_V_read(update_knn17_U0_Input_1_V_V_read),
    .Output_1_V_V_din(update_knn17_U0_Output_1_V_V_din),
    .Output_1_V_V_full_n(knn_out2_V_V_full_n),
    .Output_1_V_V_write(update_knn17_U0_Output_1_V_V_write)
);

update_knn18 update_knn18_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(update_knn18_U0_ap_start),
    .start_full_n(start_for_update_knn19_U0_full_n),
    .ap_done(update_knn18_U0_ap_done),
    .ap_continue(update_knn18_U0_ap_continue),
    .ap_idle(update_knn18_U0_ap_idle),
    .ap_ready(update_knn18_U0_ap_ready),
    .start_out(update_knn18_U0_start_out),
    .start_write(update_knn18_U0_start_write),
    .Input_1_V_V_dout(knn_out2_V_V_dout),
    .Input_1_V_V_empty_n(knn_out2_V_V_empty_n),
    .Input_1_V_V_read(update_knn18_U0_Input_1_V_V_read),
    .Output_1_V_V_din(update_knn18_U0_Output_1_V_V_din),
    .Output_1_V_V_full_n(knn_out3_V_V_full_n),
    .Output_1_V_V_write(update_knn18_U0_Output_1_V_V_write)
);

update_knn19 update_knn19_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(update_knn19_U0_ap_start),
    .start_full_n(start_for_update_knn20_U0_full_n),
    .ap_done(update_knn19_U0_ap_done),
    .ap_continue(update_knn19_U0_ap_continue),
    .ap_idle(update_knn19_U0_ap_idle),
    .ap_ready(update_knn19_U0_ap_ready),
    .start_out(update_knn19_U0_start_out),
    .start_write(update_knn19_U0_start_write),
    .Input_1_V_V_dout(knn_out3_V_V_dout),
    .Input_1_V_V_empty_n(knn_out3_V_V_empty_n),
    .Input_1_V_V_read(update_knn19_U0_Input_1_V_V_read),
    .Output_1_V_V_din(update_knn19_U0_Output_1_V_V_din),
    .Output_1_V_V_full_n(knn_out4_V_V_full_n),
    .Output_1_V_V_write(update_knn19_U0_Output_1_V_V_write)
);

update_knn20 update_knn20_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(update_knn20_U0_ap_start),
    .ap_done(update_knn20_U0_ap_done),
    .ap_continue(update_knn20_U0_ap_continue),
    .ap_idle(update_knn20_U0_ap_idle),
    .ap_ready(update_knn20_U0_ap_ready),
    .Input_1_V_V_dout(knn_out4_V_V_dout),
    .Input_1_V_V_empty_n(knn_out4_V_V_empty_n),
    .Input_1_V_V_read(update_knn20_U0_Input_1_V_V_read),
    .Output_1_V_V(update_knn20_U0_Output_1_V_V),
    .Output_1_V_V_ap_vld(update_knn20_U0_Output_1_V_V_ap_vld),
    .Output_1_V_V_ap_ack(Output_1_V_V_ap_ack)
);

fifo_w32_d1024_A knn_out1_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(update_knn16_U0_Output_1_V_V_din),
    .if_full_n(knn_out1_V_V_full_n),
    .if_write(update_knn16_U0_Output_1_V_V_write),
    .if_dout(knn_out1_V_V_dout),
    .if_empty_n(knn_out1_V_V_empty_n),
    .if_read(update_knn17_U0_Input_1_V_V_read)
);

fifo_w32_d1024_A knn_out2_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(update_knn17_U0_Output_1_V_V_din),
    .if_full_n(knn_out2_V_V_full_n),
    .if_write(update_knn17_U0_Output_1_V_V_write),
    .if_dout(knn_out2_V_V_dout),
    .if_empty_n(knn_out2_V_V_empty_n),
    .if_read(update_knn18_U0_Input_1_V_V_read)
);

fifo_w32_d1024_A knn_out3_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(update_knn18_U0_Output_1_V_V_din),
    .if_full_n(knn_out3_V_V_full_n),
    .if_write(update_knn18_U0_Output_1_V_V_write),
    .if_dout(knn_out3_V_V_dout),
    .if_empty_n(knn_out3_V_V_empty_n),
    .if_read(update_knn19_U0_Input_1_V_V_read)
);

fifo_w32_d1024_A knn_out4_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(update_knn19_U0_Output_1_V_V_din),
    .if_full_n(knn_out4_V_V_full_n),
    .if_write(update_knn19_U0_Output_1_V_V_write),
    .if_dout(knn_out4_V_V_dout),
    .if_empty_n(knn_out4_V_V_empty_n),
    .if_read(update_knn20_U0_Input_1_V_V_read)
);

start_for_update_lbW start_for_update_lbW_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_update_knn17_U0_din),
    .if_full_n(start_for_update_knn17_U0_full_n),
    .if_write(update_knn16_U0_start_write),
    .if_dout(start_for_update_knn17_U0_dout),
    .if_empty_n(start_for_update_knn17_U0_empty_n),
    .if_read(update_knn17_U0_ap_ready)
);

start_for_update_mb6 start_for_update_mb6_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_update_knn18_U0_din),
    .if_full_n(start_for_update_knn18_U0_full_n),
    .if_write(update_knn17_U0_start_write),
    .if_dout(start_for_update_knn18_U0_dout),
    .if_empty_n(start_for_update_knn18_U0_empty_n),
    .if_read(update_knn18_U0_ap_ready)
);

start_for_update_ncg start_for_update_ncg_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_update_knn19_U0_din),
    .if_full_n(start_for_update_knn19_U0_full_n),
    .if_write(update_knn18_U0_start_write),
    .if_dout(start_for_update_knn19_U0_dout),
    .if_empty_n(start_for_update_knn19_U0_empty_n),
    .if_read(update_knn19_U0_ap_ready)
);

start_for_update_ocq start_for_update_ocq_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_update_knn20_U0_din),
    .if_full_n(start_for_update_knn20_U0_full_n),
    .if_write(update_knn19_U0_start_write),
    .if_dout(start_for_update_knn20_U0_dout),
    .if_empty_n(start_for_update_knn20_U0_empty_n),
    .if_read(update_knn20_U0_ap_ready)
);

assign Input_1_V_V_ap_ack = update_knn16_U0_Input_1_V_V_ap_ack;

assign Output_1_V_V = update_knn20_U0_Output_1_V_V;

assign Output_1_V_V_ap_vld = update_knn20_U0_Output_1_V_V_ap_vld;

assign ap_done = update_knn20_U0_ap_done;

assign ap_idle = (update_knn20_U0_ap_idle & update_knn19_U0_ap_idle & update_knn18_U0_ap_idle & update_knn17_U0_ap_idle & update_knn16_U0_ap_idle);

assign ap_ready = update_knn16_U0_ap_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = update_knn20_U0_ap_done;

assign ap_sync_ready = update_knn16_U0_ap_ready;

assign start_for_update_knn17_U0_din = 1'b1;

assign start_for_update_knn18_U0_din = 1'b1;

assign start_for_update_knn19_U0_din = 1'b1;

assign start_for_update_knn20_U0_din = 1'b1;

assign update_knn16_U0_ap_continue = 1'b1;

assign update_knn16_U0_ap_start = ap_start;

assign update_knn17_U0_ap_continue = 1'b1;

assign update_knn17_U0_ap_start = start_for_update_knn17_U0_empty_n;

assign update_knn18_U0_ap_continue = 1'b1;

assign update_knn18_U0_ap_start = start_for_update_knn18_U0_empty_n;

assign update_knn19_U0_ap_continue = 1'b1;

assign update_knn19_U0_ap_start = start_for_update_knn19_U0_empty_n;

assign update_knn20_U0_ap_continue = 1'b1;

assign update_knn20_U0_ap_start = start_for_update_knn20_U0_empty_n;

assign update_knn20_U0_start_full_n = 1'b1;

assign update_knn20_U0_start_write = 1'b0;

endmodule //knn_cluster4
