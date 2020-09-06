`timescale 1 ns / 1 ps

module test();


reg  clk_bft;
reg  clk_user;
reg reset_n;
reg ap_start;
reg ap_start_1;

wire [31:0]  din;
wire  val_in;
wire ready_upward;

wire [31:0] m_axis_mm2s_tdata;
//wire [15:0]  m_axis_mm2s_tkeep;
//wire         m_axis_mm2s_tlast;
reg          m_axis_mm2s_tready;
wire         m_axis_mm2s_tvalid;



design_1_wrapper i1(
    //.ap_start(ap_start_1),
    .clk(clk_bft),
    .Input_1_V_V(din),
    .Output_1_V_V(m_axis_mm2s_tdata),
    .Output_1_V_V_ap_ack(m_axis_mm2s_tready),
    .Output_1_V_V_ap_vld(m_axis_mm2s_tvalid),
    .Input_1_V_V_ap_ack(ready_upward),
    .reset_n(reset_n),
    .Input_1_V_V_ap_vld(val_in)
);



wire ap_done;
wire ap_idle;
wire ap_ready;

data_gen i2(
    .ap_clk(clk_user),
    .ap_rst(~reset_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .Output_1_V_V(din),
    .Output_1_V_V_ap_vld(val_in),
    .Output_1_V_V_ap_ack(ready_upward)
    //.Output_1_V_V_ap_ack(1'b1)
);



always #5 clk_bft = ~clk_bft;
always #5 clk_user = ~clk_user;

initial begin 
    clk_bft = 0;
    clk_user = 0;
    m_axis_mm2s_tready = 0;
    reset_n = 0;
    ap_start = 0;
    ap_start_1 = 0;
    #1007
    reset_n = 1;
    m_axis_mm2s_tready = 1;
    #100000
    ap_start = 1;
    ap_start_1 = 1;
    #100
    ap_start = 1;
    

    #1_000_000_000
    $stop();

end

endmodule
