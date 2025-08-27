/* verilator lint_off UNUSED */
/* verilator lint_off BLKSEQ */
/* verilator lint_off MULTIDRIVEN */
/* verilator lint_off EOFNEWLINE */

module fifo2axis #(
  parameter DATA_WIDTH = 32,
  parameter THRESHOLD = 4,
  parameter DEPTH = 4
) (
  input wire clk,
  input wire rst,

  // FIFO interface
  input wire [31:0] fifo_data,
  input wire        start,

  // AXI Stream master
  output reg  [31:0] s_axis_tdata,
  output wire        s_axis_tvalid,
  input  wire        s_axis_tready,
  output wire        start_accel,
  input  wire        s_axis_tlast
);

  // States
  localparam IDLE = 3'd0, WRITE_FIFO = 3'd1, WAIT_START = 3'd2, SEND = 3'd3, DONE = 3'd4;
  reg [2:0] state, next_state;

  // Internal buffer
  reg [31:0] buffer           [0:3];
  reg [ 1:0] buffer_index;
  reg [ 1:0] send_index;
  reg        start_hls_module;
  reg [31:0] prev_val = {32{1'bx}};
  
  // When RESET signal is 0 and module starts, also start the HLS module
  assign start_accel = ~rst;
  
  reg valid_reg;

  always @(posedge clk) begin
    if (s_axis_tready && state == SEND) begin
      valid_reg <= 1;       // set for one cycle
    end else begin
      valid_reg <= 0;       // auto clear next cycle
    end
  end

  assign s_axis_tvalid = valid_reg;
  
  
  // FSM Sequential
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state         = IDLE;
      buffer_index  <= 2'd0;
      send_index    <= 2'd0;
      valid_reg 	<= 0;
      s_axis_tdata  <= 32'd0;  //s_axis_tdata = {32{1'bx}};

    end else begin
      state = next_state;

      case (state)
        IDLE: begin
          if (start) begin
            next_state = WRITE_FIFO;
          end else begin
            buffer_index <= 0;
            next_state   = IDLE;
            prev_val = {32{1'bx}};
          end
        end

        WRITE_FIFO: begin
          if (fifo_data !== {32{1'bx}} && fifo_data !== prev_val) begin
          	prev_val = fifo_data;
            buffer[buffer_index] <= fifo_data;
		
            if (buffer_index == 2'd3) begin
              next_state = WAIT_START;

            end else begin
              buffer_index <= buffer_index + 1;
              next_state   = WRITE_FIFO;
            end
          end else begin
            next_state = WRITE_FIFO;
          end
        end

        WAIT_START: begin
          if (s_axis_tready) begin
            send_index <= 0;
            next_state = SEND;
          end else begin
            next_state = WAIT_START;
          end
        end

        SEND: begin

          if (s_axis_tready) begin
            s_axis_tdata  <= buffer[send_index];
            valid_reg <= 1;

            if (send_index == 2'd3) begin
              next_state = DONE;
            end else begin
              send_index <= send_index + 1;
              next_state = SEND;
            end

          end else begin
            next_state = SEND;
          end

        end


        DONE: begin
          if (s_axis_tlast) begin
            s_axis_tdata <= {32{1'bx}};
            next_state = IDLE;
          end else begin
            next_state = DONE;
          end
        end

        default: begin
          next_state = IDLE;
        end
      endcase
    end
  end

endmodule

/* verilator lint_on UNUSED */
/* verilator lint_on BLKSEQ */
/* verilator lint_on MULTIDRIVEN */
/* verilator lint_on EOFNEWLINE */
