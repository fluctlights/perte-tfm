module fifo_out (
    input  wire          clk,
    input  wire          rst,        // Synchronous reset
    input  wire   [31:0] din,
    input  wire   data_ready,  // Indicates 4 words available
    output wire         full,
    output wire        empty,
    output reg   [31:0] dout
    
);

    // Parameters
    localparam DEPTH = 4;
    localparam ADDR_WIDTH = $clog2(DEPTH);
    localparam THRESHOLD = 4; // 4 words!
    
    // FSM state encoding
    localparam IDLE = 2'b00;
    localparam READ = 2'b01;
    localparam WAIT = 2'b10;
    reg [1:0] state;

    // Memory
    reg [31:0] mem [0:DEPTH-1];
    reg [ADDR_WIDTH-1:0] rd_ptr = 0;
    reg [ADDR_WIDTH-1:0] wr_ptr = 0;

    // Flags
    reg can_read;
    integer i;
    reg [3:0] fifo_data_count;
    
    assign full        = (fifo_data_count == DEPTH);
    assign empty       = (fifo_data_count == 0);

    always @(posedge clk or posedge rst) begin
        
        if (rst) begin
            state <= IDLE;
            wr_ptr <= 0;
            rd_ptr <= 0;
            fifo_data_count  <= 0;
            can_read <= 0;
            
        end else begin
            case (state)
                IDLE: begin
                    
                    if(data_ready) begin
                        mem[wr_ptr] <= din;
                        wr_ptr <= wr_ptr + 1;
                        fifo_data_count <= fifo_data_count + 1;
                    
                        if (fifo_data_count >= THRESHOLD) begin 
                            fifo_data_count <= 0;
                            can_read <= 1;
                            state <= READ;
                        end
                        
                    end 
                end
                
                READ: begin
                    if (can_read) begin  // REMEMBER: data_ready means the axis2fifo is ready to send everything
                        
                        dout <= mem[rd_ptr];
                        rd_ptr <= rd_ptr + 1;
                        
                        if (rd_ptr == THRESHOLD) begin
                            state <= WAIT;
                        end

                    end else begin
                        dout <= {32{1'bX}};
                    end
                end

                WAIT: begin
                    fifo_data_count <= 0;
                    wr_ptr <= 0;
                    rd_ptr <= 0;
                            
                    // Set all bits to X into the internal memory FIFO
                    for (i = 0; i < THRESHOLD; i = i+1) begin
                        mem[i] <= {32{1'bX}}; 
                    end
                    
                    state <= IDLE;
                end

                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end
endmodule
