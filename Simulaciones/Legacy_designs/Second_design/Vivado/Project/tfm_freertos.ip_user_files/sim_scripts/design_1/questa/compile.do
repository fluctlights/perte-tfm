vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../tfm_freertos.gen/sources_1/bd/design_1/ipshared/f352/hdl/verilog" \
"../../../../tfm_freertos.gen/sources_1/bd/design_1/ipshared/f352/hdl/verilog/bit_reverse_accel_hls_deadlock_idx0_monitor.v" \
"../../../../tfm_freertos.gen/sources_1/bd/design_1/ipshared/f352/hdl/verilog/bit_reverse_accel_regslice_both.v" \
"../../../../tfm_freertos.gen/sources_1/bd/design_1/ipshared/f352/hdl/verilog/bit_reverse_accel.v" \
"../../../bd/design_1/ip/design_1_bit_reverse_accel_0_0/sim/design_1_bit_reverse_accel_0_0.v" \
"../../../bd/design_1/ip/design_1_fifo2axis_0_0/sim/design_1_fifo2axis_0_0.v" \
"../../../bd/design_1/ip/design_1_axis2fifo_0_0/sim/design_1_axis2fifo_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

