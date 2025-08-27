
module bitreversal_obi (
  input logic clk_i,
  input logic rst_ni,

  // Interfaz OBI (no utilizada directamente, pero puede ampliarse)
  input  bitreversal_obi_pkg::obi_req_t  obi_req_i,
  output bitreversal_obi_pkg::obi_resp_t obi_rsp_o,

  // Interfaz de configuración por registros
  input  bitreversal_reg_pkg::reg_req_t  reg_req_i,
  output bitreversal_reg_pkg::reg_resp_t reg_rsp_o
);

  // Señales internas
  logic        start;
  logic [31:0] din_i;
  logic [31:0] dout_o;
  logic        done;
  logic	       read;

  // Señales temporales (registro de pipeline de lectura)
  logic        obi_rvalid_q;
  logic [31:0] obi_rdata_q;

  // Señal para grant: aceptamos la transacción si es válida
  logic        reg_req_valid;
  assign reg_req_valid = reg_req_i.valid;

  // Instancia del diseño completo
  bitreversal u_bitrev (
    .clk         (clk_i),
    .rst_ni      (rst_ni),
    .din_i       (din_i),
    .dout_o      (dout_o),
    .done_flag_o (done),
    .start_flag_i(start),
    .read	 (read)
  );

  // Señal de grant (acepta la transacción)
  //assign reg_req.valid = obi_req_i.req & obi_req_i.gnt;

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      obi_rvalid_q <= 1'b0;
      obi_rdata_q  <= 32'b0;
    end else if (done) begin
      obi_rvalid_q <= reg_req_valid;  // lectura válida cuando done este listo
      obi_rdata_q  <= reg_rsp_o.rdata;  // respuesta de los registros
    end else begin
      obi_rvalid_q <= 1'b0;  // esperamos como si nada pasara?
      obi_rdata_q  <= 32'b0;
    end
  end


  // Instancia de los registros de control
  bitreversal_control_reg u_bitreversal_control_reg (
    .clk_i  (clk_i),
    .rst_ni (rst_ni),
    .req_i  (reg_req_i),
    .rsp_o  (reg_rsp_o),
    .done_i (done),
    .dout_i (dout_o),
    .din_o  (din_i),
    .start_o(start),
    .read_o (read)
  );

  logic unused;
  assign unused = ^obi_req_i;

  assign obi_rsp_o = '{
          gnt   : reg_req_valid,  // cuando se acepta
          rvalid: obi_rvalid_q,  // cuando la lectura está lista
          rdata : obi_rdata_q  // datos desde el periférico
      };

endmodule

