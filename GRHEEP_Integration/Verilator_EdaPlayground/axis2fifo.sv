/* verilator lint_off UNUSED */
/* verilator lint_off EOFNEWLINE */

module axis2fifo #(
  parameter DATA_WIDTH = 32,
  parameter THRESHOLD  = 4,
  parameter DEPTH      = 10
) (
  input  wire clk,
  input  wire rst,

  // AXI Stream master
  input  wire [31:0] s_axis_tdata,
  input  wire        last,

  // To FIFO
  output reg  [31:0] dout,
  output reg         done,
  
  // Changed! To control the output data flow
  input reg		 read
);

  // States
  localparam IDLE        = 3'd0,
             READ_STREAM = 3'd1,
             SEND_OUTSIDE= 3'd2,
             DONE        = 3'd4;

  reg [2:0] state, next_state;

  // Internal buffer
  reg [31:0] buffer [0:3];
  reg [1:0]  buffer_index;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      state        = IDLE;
      buffer_index <= 2'd0;
      done         <= 0;

    end else begin
      state = next_state;

      case (state)
        IDLE: begin
          if (s_axis_tdata !== {32{1'bx}} && s_axis_tdata !== {32{1'b0}}) begin
            buffer[buffer_index] <= s_axis_tdata;
            buffer_index         <= buffer_index + 1;
            next_state           = READ_STREAM;
          end else begin
            next_state <= IDLE;
          end
        end

        READ_STREAM: begin
          if (last == 1'b0) begin
            buffer[buffer_index] <= s_axis_tdata;
            buffer_index         <= buffer_index + 1;
            next_state           = READ_STREAM;

          end else if (last == 1'b1) begin
            buffer[buffer_index] <= s_axis_tdata;
            buffer_index         <= 0;
            next_state           = SEND_OUTSIDE;

          end else begin
            next_state = READ_STREAM;
          end
        end

        SEND_OUTSIDE: begin
          done <= 1;
          
          if (read) begin
            dout <= buffer[buffer_index];

            if (buffer_index == 3) begin
              next_state = DONE;
            end else begin
              buffer_index <= buffer_index + 1;
            end
            
          end else begin
          	next_state = SEND_OUTSIDE;
          end
          
        end

        DONE: begin
          // Set output to X, all data transferred
          dout <= {32{1'bX}};
          done <= 0;
          next_state = IDLE;
        end

        default: next_state = IDLE;
      endcase
    end
  end

endmodule

/* verilator lint_on UNUSED */
/* verilator lint_on EOFNEWLINE */
