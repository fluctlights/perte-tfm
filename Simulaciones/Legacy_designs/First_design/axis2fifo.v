
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2025 02:08:34 PM
// Design Name: 
// Module Name: axis2fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axis2fifo #
(
    parameter DATA_WIDTH = 32,
    parameter THRESHOLD = 4,
    parameter DEPTH = 10
)(
    input  wire        clk,
    input  wire        rst,

    // AXI Stream master
    input  wire [31:0] s_axis_tdata,
    input  wire        last,

    // To FIFO
    output reg [31:0]  dout,
    output reg         done
);

    // States
    localparam IDLE         = 3'd0,
               READ_STREAM  = 3'd1,
               SEND_OUTSIDE = 3'd2,
               DONE         = 3'd4;

    reg [2:0] state, next_state;
	integer i;
    // Internal buffer
    reg [31:0] buffer [0:3];
    reg [1:0]  buffer_index;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            buffer_index <= 2'd0;
            i <= 0;
            done <= 0;
            
        end else begin
            state = next_state;
            
            case (state)
                IDLE: begin
                    
                    if (s_axis_tdata !== {32{1'bx}} && s_axis_tdata !== {32{1'b0}}) begin
                        buffer[buffer_index] <= s_axis_tdata;
                        buffer_index <= buffer_index + 1;
                        next_state <= READ_STREAM;
                    end else begin
                        next_state <= IDLE;
                    end
                    
                end
        
            	READ_STREAM: begin
                    if(last == 1'b0) begin
                        buffer[buffer_index] <= s_axis_tdata;
                        buffer_index <= buffer_index + 1;
                        next_state <= READ_STREAM;
                        
                    end else if (last == 1'b1) begin
                        buffer[buffer_index] <= s_axis_tdata;
                        buffer_index <= 0;
                        next_state <= SEND_OUTSIDE;
                        done <= 1;
                        
                    end else begin
                        next_state <= READ_STREAM;
                    end
                end
                
                SEND_OUTSIDE: begin
                    dout <= buffer[buffer_index];
                    
                    if (buffer_index == THRESHOLD -1) begin
                        next_state <= DONE;
                        done <= 0;
                    end else begin
				        buffer_index <= buffer_index + 1;
                    end
                end
                
                DONE: begin
                    // Set output to X, all data transfered
                    dout <= {32{1'bX}};
                    
                    // Set all bits to X into the internal memory FIFO
                    for (i = 0; i < THRESHOLD; i = i+1) begin
                        buffer[i] <= {32{1'bX}}; 
                    end
                end

                default: begin
                    next_state <= IDLE;
                end
            endcase
        end
    end

endmodule

