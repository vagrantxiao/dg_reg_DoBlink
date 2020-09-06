-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity knn_cluster3 is
port (
    Input_1_V_V : IN STD_LOGIC_VECTOR (31 downto 0);
    Output_1_V_V : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    Input_1_V_V_ap_vld : IN STD_LOGIC;
    Input_1_V_V_ap_ack : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    Output_1_V_V_ap_vld : OUT STD_LOGIC;
    Output_1_V_V_ap_ack : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of knn_cluster3 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "knn_cluster3,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.676750,HLS_SYN_LAT=104936,HLS_SYN_TPT=18496,HLS_SYN_MEM=48,HLS_SYN_DSP=5,HLS_SYN_FF=14202,HLS_SYN_LUT=22662,HLS_VERSION=2019_2}";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal update_knn11_U0_ap_start : STD_LOGIC;
    signal update_knn11_U0_ap_done : STD_LOGIC;
    signal update_knn11_U0_ap_continue : STD_LOGIC;
    signal update_knn11_U0_ap_idle : STD_LOGIC;
    signal update_knn11_U0_ap_ready : STD_LOGIC;
    signal update_knn11_U0_start_out : STD_LOGIC;
    signal update_knn11_U0_start_write : STD_LOGIC;
    signal update_knn11_U0_Input_1_V_V_ap_ack : STD_LOGIC;
    signal update_knn11_U0_Output_1_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal update_knn11_U0_Output_1_V_V_write : STD_LOGIC;
    signal update_knn12_U0_ap_start : STD_LOGIC;
    signal update_knn12_U0_ap_done : STD_LOGIC;
    signal update_knn12_U0_ap_continue : STD_LOGIC;
    signal update_knn12_U0_ap_idle : STD_LOGIC;
    signal update_knn12_U0_ap_ready : STD_LOGIC;
    signal update_knn12_U0_start_out : STD_LOGIC;
    signal update_knn12_U0_start_write : STD_LOGIC;
    signal update_knn12_U0_Input_1_V_V_read : STD_LOGIC;
    signal update_knn12_U0_Output_1_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal update_knn12_U0_Output_1_V_V_write : STD_LOGIC;
    signal update_knn13_U0_ap_start : STD_LOGIC;
    signal update_knn13_U0_ap_done : STD_LOGIC;
    signal update_knn13_U0_ap_continue : STD_LOGIC;
    signal update_knn13_U0_ap_idle : STD_LOGIC;
    signal update_knn13_U0_ap_ready : STD_LOGIC;
    signal update_knn13_U0_start_out : STD_LOGIC;
    signal update_knn13_U0_start_write : STD_LOGIC;
    signal update_knn13_U0_Input_1_V_V_read : STD_LOGIC;
    signal update_knn13_U0_Output_1_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal update_knn13_U0_Output_1_V_V_write : STD_LOGIC;
    signal update_knn14_U0_ap_start : STD_LOGIC;
    signal update_knn14_U0_ap_done : STD_LOGIC;
    signal update_knn14_U0_ap_continue : STD_LOGIC;
    signal update_knn14_U0_ap_idle : STD_LOGIC;
    signal update_knn14_U0_ap_ready : STD_LOGIC;
    signal update_knn14_U0_start_out : STD_LOGIC;
    signal update_knn14_U0_start_write : STD_LOGIC;
    signal update_knn14_U0_Input_1_V_V_read : STD_LOGIC;
    signal update_knn14_U0_Output_1_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal update_knn14_U0_Output_1_V_V_write : STD_LOGIC;
    signal update_knn15_U0_ap_start : STD_LOGIC;
    signal update_knn15_U0_ap_done : STD_LOGIC;
    signal update_knn15_U0_ap_continue : STD_LOGIC;
    signal update_knn15_U0_ap_idle : STD_LOGIC;
    signal update_knn15_U0_ap_ready : STD_LOGIC;
    signal update_knn15_U0_Input_1_V_V_read : STD_LOGIC;
    signal update_knn15_U0_Output_1_V_V : STD_LOGIC_VECTOR (31 downto 0);
    signal update_knn15_U0_Output_1_V_V_ap_vld : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal knn_out1_V_V_full_n : STD_LOGIC;
    signal knn_out1_V_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal knn_out1_V_V_empty_n : STD_LOGIC;
    signal knn_out2_V_V_full_n : STD_LOGIC;
    signal knn_out2_V_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal knn_out2_V_V_empty_n : STD_LOGIC;
    signal knn_out3_V_V_full_n : STD_LOGIC;
    signal knn_out3_V_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal knn_out3_V_V_empty_n : STD_LOGIC;
    signal knn_out4_V_V_full_n : STD_LOGIC;
    signal knn_out4_V_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal knn_out4_V_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_update_knn12_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_update_knn12_U0_full_n : STD_LOGIC;
    signal start_for_update_knn12_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_update_knn12_U0_empty_n : STD_LOGIC;
    signal start_for_update_knn13_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_update_knn13_U0_full_n : STD_LOGIC;
    signal start_for_update_knn13_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_update_knn13_U0_empty_n : STD_LOGIC;
    signal start_for_update_knn14_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_update_knn14_U0_full_n : STD_LOGIC;
    signal start_for_update_knn14_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_update_knn14_U0_empty_n : STD_LOGIC;
    signal start_for_update_knn15_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_update_knn15_U0_full_n : STD_LOGIC;
    signal start_for_update_knn15_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_update_knn15_U0_empty_n : STD_LOGIC;
    signal update_knn15_U0_start_full_n : STD_LOGIC;
    signal update_knn15_U0_start_write : STD_LOGIC;

    component update_knn11 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        Input_1_V_V : IN STD_LOGIC_VECTOR (31 downto 0);
        Input_1_V_V_ap_vld : IN STD_LOGIC;
        Input_1_V_V_ap_ack : OUT STD_LOGIC;
        Output_1_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        Output_1_V_V_full_n : IN STD_LOGIC;
        Output_1_V_V_write : OUT STD_LOGIC );
    end component;


    component update_knn12 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        Input_1_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        Input_1_V_V_empty_n : IN STD_LOGIC;
        Input_1_V_V_read : OUT STD_LOGIC;
        Output_1_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        Output_1_V_V_full_n : IN STD_LOGIC;
        Output_1_V_V_write : OUT STD_LOGIC );
    end component;


    component update_knn13 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        Input_1_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        Input_1_V_V_empty_n : IN STD_LOGIC;
        Input_1_V_V_read : OUT STD_LOGIC;
        Output_1_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        Output_1_V_V_full_n : IN STD_LOGIC;
        Output_1_V_V_write : OUT STD_LOGIC );
    end component;


    component update_knn14 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        Input_1_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        Input_1_V_V_empty_n : IN STD_LOGIC;
        Input_1_V_V_read : OUT STD_LOGIC;
        Output_1_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        Output_1_V_V_full_n : IN STD_LOGIC;
        Output_1_V_V_write : OUT STD_LOGIC );
    end component;


    component update_knn15 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        Input_1_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        Input_1_V_V_empty_n : IN STD_LOGIC;
        Input_1_V_V_read : OUT STD_LOGIC;
        Output_1_V_V : OUT STD_LOGIC_VECTOR (31 downto 0);
        Output_1_V_V_ap_vld : OUT STD_LOGIC;
        Output_1_V_V_ap_ack : IN STD_LOGIC );
    end component;


    component fifo_w32_d1024_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_update_ibs IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_update_jbC IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_update_kbM IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_update_lbW IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    update_knn11_U0 : component update_knn11
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => update_knn11_U0_ap_start,
        start_full_n => start_for_update_knn12_U0_full_n,
        ap_done => update_knn11_U0_ap_done,
        ap_continue => update_knn11_U0_ap_continue,
        ap_idle => update_knn11_U0_ap_idle,
        ap_ready => update_knn11_U0_ap_ready,
        start_out => update_knn11_U0_start_out,
        start_write => update_knn11_U0_start_write,
        Input_1_V_V => Input_1_V_V,
        Input_1_V_V_ap_vld => Input_1_V_V_ap_vld,
        Input_1_V_V_ap_ack => update_knn11_U0_Input_1_V_V_ap_ack,
        Output_1_V_V_din => update_knn11_U0_Output_1_V_V_din,
        Output_1_V_V_full_n => knn_out1_V_V_full_n,
        Output_1_V_V_write => update_knn11_U0_Output_1_V_V_write);

    update_knn12_U0 : component update_knn12
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => update_knn12_U0_ap_start,
        start_full_n => start_for_update_knn13_U0_full_n,
        ap_done => update_knn12_U0_ap_done,
        ap_continue => update_knn12_U0_ap_continue,
        ap_idle => update_knn12_U0_ap_idle,
        ap_ready => update_knn12_U0_ap_ready,
        start_out => update_knn12_U0_start_out,
        start_write => update_knn12_U0_start_write,
        Input_1_V_V_dout => knn_out1_V_V_dout,
        Input_1_V_V_empty_n => knn_out1_V_V_empty_n,
        Input_1_V_V_read => update_knn12_U0_Input_1_V_V_read,
        Output_1_V_V_din => update_knn12_U0_Output_1_V_V_din,
        Output_1_V_V_full_n => knn_out2_V_V_full_n,
        Output_1_V_V_write => update_knn12_U0_Output_1_V_V_write);

    update_knn13_U0 : component update_knn13
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => update_knn13_U0_ap_start,
        start_full_n => start_for_update_knn14_U0_full_n,
        ap_done => update_knn13_U0_ap_done,
        ap_continue => update_knn13_U0_ap_continue,
        ap_idle => update_knn13_U0_ap_idle,
        ap_ready => update_knn13_U0_ap_ready,
        start_out => update_knn13_U0_start_out,
        start_write => update_knn13_U0_start_write,
        Input_1_V_V_dout => knn_out2_V_V_dout,
        Input_1_V_V_empty_n => knn_out2_V_V_empty_n,
        Input_1_V_V_read => update_knn13_U0_Input_1_V_V_read,
        Output_1_V_V_din => update_knn13_U0_Output_1_V_V_din,
        Output_1_V_V_full_n => knn_out3_V_V_full_n,
        Output_1_V_V_write => update_knn13_U0_Output_1_V_V_write);

    update_knn14_U0 : component update_knn14
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => update_knn14_U0_ap_start,
        start_full_n => start_for_update_knn15_U0_full_n,
        ap_done => update_knn14_U0_ap_done,
        ap_continue => update_knn14_U0_ap_continue,
        ap_idle => update_knn14_U0_ap_idle,
        ap_ready => update_knn14_U0_ap_ready,
        start_out => update_knn14_U0_start_out,
        start_write => update_knn14_U0_start_write,
        Input_1_V_V_dout => knn_out3_V_V_dout,
        Input_1_V_V_empty_n => knn_out3_V_V_empty_n,
        Input_1_V_V_read => update_knn14_U0_Input_1_V_V_read,
        Output_1_V_V_din => update_knn14_U0_Output_1_V_V_din,
        Output_1_V_V_full_n => knn_out4_V_V_full_n,
        Output_1_V_V_write => update_knn14_U0_Output_1_V_V_write);

    update_knn15_U0 : component update_knn15
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => update_knn15_U0_ap_start,
        ap_done => update_knn15_U0_ap_done,
        ap_continue => update_knn15_U0_ap_continue,
        ap_idle => update_knn15_U0_ap_idle,
        ap_ready => update_knn15_U0_ap_ready,
        Input_1_V_V_dout => knn_out4_V_V_dout,
        Input_1_V_V_empty_n => knn_out4_V_V_empty_n,
        Input_1_V_V_read => update_knn15_U0_Input_1_V_V_read,
        Output_1_V_V => update_knn15_U0_Output_1_V_V,
        Output_1_V_V_ap_vld => update_knn15_U0_Output_1_V_V_ap_vld,
        Output_1_V_V_ap_ack => Output_1_V_V_ap_ack);

    knn_out1_V_V_U : component fifo_w32_d1024_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => update_knn11_U0_Output_1_V_V_din,
        if_full_n => knn_out1_V_V_full_n,
        if_write => update_knn11_U0_Output_1_V_V_write,
        if_dout => knn_out1_V_V_dout,
        if_empty_n => knn_out1_V_V_empty_n,
        if_read => update_knn12_U0_Input_1_V_V_read);

    knn_out2_V_V_U : component fifo_w32_d1024_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => update_knn12_U0_Output_1_V_V_din,
        if_full_n => knn_out2_V_V_full_n,
        if_write => update_knn12_U0_Output_1_V_V_write,
        if_dout => knn_out2_V_V_dout,
        if_empty_n => knn_out2_V_V_empty_n,
        if_read => update_knn13_U0_Input_1_V_V_read);

    knn_out3_V_V_U : component fifo_w32_d1024_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => update_knn13_U0_Output_1_V_V_din,
        if_full_n => knn_out3_V_V_full_n,
        if_write => update_knn13_U0_Output_1_V_V_write,
        if_dout => knn_out3_V_V_dout,
        if_empty_n => knn_out3_V_V_empty_n,
        if_read => update_knn14_U0_Input_1_V_V_read);

    knn_out4_V_V_U : component fifo_w32_d1024_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => update_knn14_U0_Output_1_V_V_din,
        if_full_n => knn_out4_V_V_full_n,
        if_write => update_knn14_U0_Output_1_V_V_write,
        if_dout => knn_out4_V_V_dout,
        if_empty_n => knn_out4_V_V_empty_n,
        if_read => update_knn15_U0_Input_1_V_V_read);

    start_for_update_ibs_U : component start_for_update_ibs
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_update_knn12_U0_din,
        if_full_n => start_for_update_knn12_U0_full_n,
        if_write => update_knn11_U0_start_write,
        if_dout => start_for_update_knn12_U0_dout,
        if_empty_n => start_for_update_knn12_U0_empty_n,
        if_read => update_knn12_U0_ap_ready);

    start_for_update_jbC_U : component start_for_update_jbC
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_update_knn13_U0_din,
        if_full_n => start_for_update_knn13_U0_full_n,
        if_write => update_knn12_U0_start_write,
        if_dout => start_for_update_knn13_U0_dout,
        if_empty_n => start_for_update_knn13_U0_empty_n,
        if_read => update_knn13_U0_ap_ready);

    start_for_update_kbM_U : component start_for_update_kbM
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_update_knn14_U0_din,
        if_full_n => start_for_update_knn14_U0_full_n,
        if_write => update_knn13_U0_start_write,
        if_dout => start_for_update_knn14_U0_dout,
        if_empty_n => start_for_update_knn14_U0_empty_n,
        if_read => update_knn14_U0_ap_ready);

    start_for_update_lbW_U : component start_for_update_lbW
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_update_knn15_U0_din,
        if_full_n => start_for_update_knn15_U0_full_n,
        if_write => update_knn14_U0_start_write,
        if_dout => start_for_update_knn15_U0_dout,
        if_empty_n => start_for_update_knn15_U0_empty_n,
        if_read => update_knn15_U0_ap_ready);




    Input_1_V_V_ap_ack <= update_knn11_U0_Input_1_V_V_ap_ack;
    Output_1_V_V <= update_knn15_U0_Output_1_V_V;
    Output_1_V_V_ap_vld <= update_knn15_U0_Output_1_V_V_ap_vld;
    ap_done <= update_knn15_U0_ap_done;
    ap_idle <= (update_knn15_U0_ap_idle and update_knn14_U0_ap_idle and update_knn13_U0_ap_idle and update_knn12_U0_ap_idle and update_knn11_U0_ap_idle);
    ap_ready <= update_knn11_U0_ap_ready;
    ap_sync_continue <= ap_const_logic_1;
    ap_sync_done <= update_knn15_U0_ap_done;
    ap_sync_ready <= update_knn11_U0_ap_ready;
    start_for_update_knn12_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_update_knn13_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_update_knn14_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_update_knn15_U0_din <= (0=>ap_const_logic_1, others=>'-');
    update_knn11_U0_ap_continue <= ap_const_logic_1;
    update_knn11_U0_ap_start <= ap_start;
    update_knn12_U0_ap_continue <= ap_const_logic_1;
    update_knn12_U0_ap_start <= start_for_update_knn12_U0_empty_n;
    update_knn13_U0_ap_continue <= ap_const_logic_1;
    update_knn13_U0_ap_start <= start_for_update_knn13_U0_empty_n;
    update_knn14_U0_ap_continue <= ap_const_logic_1;
    update_knn14_U0_ap_start <= start_for_update_knn14_U0_empty_n;
    update_knn15_U0_ap_continue <= ap_const_logic_1;
    update_knn15_U0_ap_start <= start_for_update_knn15_U0_empty_n;
    update_knn15_U0_start_full_n <= ap_const_logic_1;
    update_knn15_U0_start_write <= ap_const_logic_0;
end behav;
