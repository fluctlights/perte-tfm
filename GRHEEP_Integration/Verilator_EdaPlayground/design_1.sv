`include "fifo2axis.sv"
`include "bit_reverse_accel.sv"
`include "axis2fifo.sv"

module design_1
   (clk,
    din_i,
    done_flag_o,
    dout_o,
    reset,
    start_flag_i,
    read);

  input [31:0]din_i;
  output done_flag_o;
  output [31:0]dout_o;
  input start_flag_i;
  input clk;
  input reset;
  input read;

  wire axis2fifo_0_done;
  wire [31:0]axis2fifo_0_dout;
  wire [31:0]bit_reverse_accel_1_m_axis_TDATA;
  wire [0:0]bit_reverse_accel_1_m_axis_TLAST;
  wire bit_reverse_accel_1_s_axis_TREADY;
  wire clk_0_1;
  wire [31:0]fifo2axis_0_s_axis_tdata;
  wire fifo2axis_0_s_axis_tvalid;
  wire fifo2axis_0_start_accel;
  wire [31:0]fifo_data_0_1;
  wire rst_0_1;
  wire start_0_1;
  wire axis2fifo_0_read;

  assign clk_0_1 = clk;
  assign done_flag_o = axis2fifo_0_done;
  assign dout_o[31:0] = axis2fifo_0_dout;
  assign fifo_data_0_1 = din_i[31:0];
  assign rst_0_1 = reset;
  assign start_0_1 = start_flag_i;
  assign axis2fifo_0_read = read;

  axis2fifo axis2fifo_0
     (.clk(clk_0_1),
     .done(axis2fifo_0_done),
     .dout(axis2fifo_0_dout),
     .last(bit_reverse_accel_1_m_axis_TLAST),
     .rst(rst_0_1),
     .s_axis_tdata(bit_reverse_accel_1_m_axis_TDATA),
     .read(axis2fifo_0_read)
  );

/* verilator lint_off PINMISSING */
  bit_reverse_accel bit_reverse_accel_1
     (.ap_clk(clk_0_1),
     .ap_rst_n(fifo2axis_0_start_accel),
     .m_axis_TDATA(bit_reverse_accel_1_m_axis_TDATA),
     .m_axis_TLAST(bit_reverse_accel_1_m_axis_TLAST),
     .m_axis_TREADY(1'b1),
     .s_axis_TDATA(fifo2axis_0_s_axis_tdata),
     .s_axis_TKEEP({1'b1,1'b1,1'b1,1'b1}),
     .s_axis_TLAST(1'b0),
     .s_axis_TREADY(bit_reverse_accel_1_s_axis_TREADY),
     .s_axis_TSTRB({1'b1,1'b1,1'b1,1'b1}),
     .s_axis_TVALID(fifo2axis_0_s_axis_tvalid)
  );
  
  fifo2axis fifo2axis_0
     (.clk(clk_0_1),
     .fifo_data(fifo_data_0_1),
     .rst(rst_0_1),
     .s_axis_tdata(fifo2axis_0_s_axis_tdata),
     .s_axis_tlast(bit_reverse_accel_1_m_axis_TLAST),
     .s_axis_tready(bit_reverse_accel_1_s_axis_TREADY),
     .s_axis_tvalid(fifo2axis_0_s_axis_tvalid),
     .start(start_0_1),
     .start_accel(fifo2axis_0_start_accel)
  );
        
endmodule