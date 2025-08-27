module bitreversal_control_reg (
  input  logic clk_i,
  input  logic rst_ni,

  // Interfaz de registros
  input  bitreversal_reg_pkg::reg_req_t  req_i,
  output bitreversal_reg_pkg::reg_resp_t rsp_o,

  // Señales del hardware
  input  logic        done_i,
  input  logic [31:0] dout_i,

  output logic        start_o,
  output logic        read_o,
  output logic [31:0] din_o
);

  // Señales internas
  bitreversal_control_reg_pkg::bitreversal_control_reg2hw_t reg2hw;
  bitreversal_control_reg_pkg::bitreversal_control_hw2reg_t hw2reg;

  // ------------------------
  // Señales escritas por HW
  // ------------------------

  // DONE (rw1c/hwo): HW sets, SW clears
  assign hw2reg.done.d  = done_i;
  assign hw2reg.done.de = 1'b1;

  // DOUT (ro/hwo): resultado de hardware
  assign hw2reg.dout.d  = dout_i;
  assign hw2reg.dout.de = 1'b1;

  // ---------------------------------------------
  // Instancia del toplevel de registros generado
  // ---------------------------------------------
  bitreversal_control_reg_top #(
    .reg_req_t(bitreversal_reg_pkg::reg_req_t),
    .reg_rsp_t(bitreversal_reg_pkg::reg_resp_t)
  ) i_bitreversal_control_reg_top (
    .clk_i    (clk_i),
    .rst_ni   (rst_ni),
    .reg_req_i(req_i),
    .reg_rsp_o(rsp_o),
    .reg2hw   (reg2hw),
    .hw2reg   (hw2reg),
    .devmode_i(1'b0)
  );

  // ------------------------
  // Señales escritas por SW
  // ------------------------

  // -----------------------------------------------------------
  // START (rw/hro): SW controlled, no HW override
  // --> no assignment to hw2reg.start.* (RTL never clears it!)
  // -----------------------------------------------------------

    // -----------------------------------------------------------
  // READ (rw/hro): SW controlled, no HW override
  // expose as a pulse to RTL
  // --> no assignment to hw2reg.start.* (RTL never clears it!)
  // -----------------------------------------------------------
  assign start_o = reg2hw.start.q;
  assign din_o   = reg2hw.din.q;
  assign read_o  = reg2hw.read.q;

endmodule
