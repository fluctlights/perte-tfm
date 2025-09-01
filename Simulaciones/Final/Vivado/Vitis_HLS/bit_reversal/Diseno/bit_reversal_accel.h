#ifndef BIT_REVERSAL_ACCEL_H
#define BIT_REVERSAL_ACCEL_H

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_axi_sdata.h>

// AXI Stream width: 32 bits of data, no side channels
typedef ap_axiu<32, 0, 0, 0> axis_t;

void bit_reverse_accel(hls::stream<axis_t>& s_axis,
                       hls::stream<axis_t>& m_axis);

#endif
