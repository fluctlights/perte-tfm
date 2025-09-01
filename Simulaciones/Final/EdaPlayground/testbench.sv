
`timescale 1 ns / 1 ps

module tb_bitreversal;

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
    bitreversal dut (
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
      	$dumpvars(0, tb_bitreversal); //debug waves on edaplayground
      	$monitor("t=%0t din=%h dout=%h done=%b", $time, din_i, dout_o, done_flag_o);
        #10 //1 cycles
        start_flag_i = 1;
        reset = 0;
        #10;

        // TESTBENCH

        // WRITING PROCESS
        for (i = 0; i < 4; i = i + 1) begin
            @(posedge clk);
            din_i = $random;
            @(posedge clk);
            write_i = 1;
          	#50;
            @(posedge clk);
            write_i = 0;
            
        end

        //din_i = {32{1'bX}};
        
        // WAIT FOR RESULTS
        wait(done_flag_o); 
        
        for (i = 0; i < 4; i = i + 1) begin
          	#10;
            @(posedge clk);
            read_i = 1;
          	#300;
            @(posedge clk);
            read_i = 0;
        end
        
        wait(!done_flag_o); //termina la transmision de datos
        
        #100 $finish;
        
     end
    
endmodule