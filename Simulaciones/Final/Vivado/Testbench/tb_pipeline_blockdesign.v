//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 09:12:26 PM
// Design Name: 
// Module Name: tb_pipeline_blockdesign
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

`timescale 1 ns / 1 ps

module tb_pipeline_blockdesign;

    // Señales de testbench
    reg  clk            = 1;
    reg  reset          = 1;
    reg  start_flag_i   = 0;
    reg  [31:0] din_i   = {32{1'bX}};
    reg  read_i         = 0;       // read result from fifo
    reg  write_i        = 0;       // push data into fifo
    wire [31:0] dout_o;            // output data
    wire done_flag_o;              // checks if results are available
     
    integer i;

  // Instancia del diseño completo
    design_1_wrapper uut (
        .clk(clk),
        .din_i(din_i),
        .done_flag_o(done_flag_o),
        .dout_o(dout_o),
        .read_i(read_i),
        .reset(reset),
        .start_flag_i(start_flag_i),
        .write_i(write_i)
    );

    // Reloj
    always #5 clk = ~clk;

    
    initial begin
        // INITIALIZING DESIGN
        $monitor("Reversed = %h", dout_o); // show one read
        #10 //1 cycles
        start_flag_i = 1;
        reset = 0;
        #10;

        // TESTBENCH

        // WRITING PROCESS
        for (i = 0; i < 4; i = i + 1) begin
            //din_i = {32{1'b0}}; // testing  all zeroes
            @(posedge clk);
            din_i = $random;
            @(posedge clk);
            write_i = 1;
            @(posedge clk);
            write_i = 0;
            
        end

        //din_i = {32{1'bX}};
        
        // WAIT FOR RESULTS
        wait(done_flag_o); 
        
        
        for (i = 0; i < 4; i = i + 1) begin
            @(posedge clk);
            read_i = 1;
            @(posedge clk);
            read_i = 0;
        end
        
        wait(!done_flag_o); //termina la transmision de datos
        
        #100 $finish;
        
     end
    
endmodule
