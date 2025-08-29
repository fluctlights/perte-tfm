
module fifo2axis #(
  /* verilator lint_off UNUSED */
  /* verilator lint_off BLKSEQ */
  /* verilator lint_off WIDTH */
  /* verilator lint_off EOFNEWLINE */
  parameter DATA_WIDTH = 32,
  parameter THRESHOLD = 4,
  parameter DEPTH = 4
) (
  input wire clk,
  input wire rst,

  // FIFO interface
  input wire [31:0] din,
  input wire        start,
  input wire        write,

  // AXI Stream master
  output reg  [31:0] s_axis_tdata,
  output reg         s_axis_tvalid,
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
  
  // When RESET signal is 0 and module starts, also start the HLS module
  assign start_accel = ~rst;
  
  // FSM Sequential
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state         = IDLE;
      buffer_index  <= 2'd0;
      send_index    <= 2'd0;
      s_axis_tvalid <= 0;
      s_axis_tdata  <= {32{1'bx}};
    end else begin
      state = next_state;

      case (state)
        IDLE: begin
          s_axis_tvalid <= 0;
          if (start) begin
            next_state = WRITE_FIFO;
          end else begin
            buffer_index <= 0;
            next_state   = IDLE;
          end
        end

        WRITE_FIFO: begin
          s_axis_tvalid <= 0;
          if (write) begin
            buffer[buffer_index] <= din;
            
            if (buffer_index == (THRESHOLD-1)) begin
                next_state = WAIT_START;
            end else begin
                buffer_index <= buffer_index + 1;
                next_state   = WRITE_FIFO;
            end
            
          end else begin
             next_state   = WRITE_FIFO;
          end
        end

        WAIT_START: begin
          s_axis_tvalid <= 0;
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
            s_axis_tvalid <= 1;

            if (send_index == 2'd3) begin
              next_state = DONE;
            end else begin
              send_index <= send_index + 1;
              next_state = SEND;
            end

          end else begin
            s_axis_tvalid <= 1; // Keep valid high while waiting for ready
            next_state = SEND;
          end
        end

        DONE: begin
          s_axis_tvalid <= 0;
          if (s_axis_tlast) begin
            s_axis_tdata <= {32{1'bx}};
            next_state = IDLE;
          end else begin
            next_state = DONE;
          end
        end

        default: begin
          s_axis_tvalid <= 0;
          next_state = IDLE;
        end
      endcase
    end
  end

endmodule

