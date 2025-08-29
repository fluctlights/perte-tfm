`include "fifo2axis.sv"
`include "bit_reverse_accel.sv"
`include "axis2fifo.sv"

module design_1
   (clk,
    din_i,
    done_flag_o,
    dout_o,
    read_i,
    reset,
    start_flag_i,
    write_i);
  
  input clk;
  input [31:0]din_i;
  output done_flag_o;
  output [31:0]dout_o;
  input read_i;
  input reset;
  input start_flag_i;
  input write_i;

  wire Net;
  wire axis2fifo_0_done;
  wire [31:0]axis2fifo_0_dout;
  wire [31:0]bit_reverse_accel_1_m_axis_TDATA;
  wire [0:0]bit_reverse_accel_1_m_axis_TLAST;
  wire bit_reverse_accel_1_m_axis_TVALID;
  wire bit_reverse_accel_1_s_axis_TREADY;
  wire clk_0_1;
  wire [31:0]fifo2axis_0_s_axis_tdata;
  wire fifo2axis_0_s_axis_tvalid;
  wire fifo2axis_0_start_accel;
  wire [31:0]fifo_data_0_1;
  wire read_0_1;
  wire rst_0_1;
  wire start_0_1;
  wire write_0_1;

  assign clk_0_1 = clk;
  assign done_flag_o = axis2fifo_0_done;
  assign dout_o[31:0] = axis2fifo_0_dout;
  assign fifo_data_0_1 = din_i[31:0];
  assign read_0_1 = read_i;
  assign rst_0_1 = reset;
  assign start_0_1 = start_flag_i;
  assign write_0_1 = write_i;
  
  axis2fifo axis2fifo_0
       (.clk(clk_0_1),
        .done(axis2fifo_0_done),
        .dout(axis2fifo_0_dout),
        .last(bit_reverse_accel_1_m_axis_TLAST),
        .read(read_0_1),
        .ready_for_results(Net),
        .result_data(bit_reverse_accel_1_m_axis_TDATA),
        .rst(rst_0_1),
        .valid_result(bit_reverse_accel_1_m_axis_TVALID));
  
  /* verilator lint_off PINMISSING */
  bit_reverse_accel bit_reverse_accel_1
       (.ap_clk(clk_0_1),
        .ap_rst_n(fifo2axis_0_start_accel),
        .m_axis_TDATA(bit_reverse_accel_1_m_axis_TDATA),
        .m_axis_TLAST(bit_reverse_accel_1_m_axis_TLAST),
        .m_axis_TREADY(Net),
        .m_axis_TVALID(bit_reverse_accel_1_m_axis_TVALID),
        .s_axis_TDATA(fifo2axis_0_s_axis_tdata),
        .s_axis_TKEEP({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_TLAST(1'b0),
        .s_axis_TREADY(bit_reverse_accel_1_s_axis_TREADY),
        .s_axis_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_TVALID(fifo2axis_0_s_axis_tvalid));
  
  fifo2axis fifo2axis_0
       (.clk(clk_0_1),
        .din(fifo_data_0_1),
        .rst(rst_0_1),
        .s_axis_tdata(fifo2axis_0_s_axis_tdata),
        .s_axis_tlast(bit_reverse_accel_1_m_axis_TLAST),
        .s_axis_tready(bit_reverse_accel_1_s_axis_TREADY),
        .s_axis_tvalid(fifo2axis_0_s_axis_tvalid),
        .start(start_0_1),
        .start_accel(fifo2axis_0_start_accel),
        .write(write_0_1));
endmodule