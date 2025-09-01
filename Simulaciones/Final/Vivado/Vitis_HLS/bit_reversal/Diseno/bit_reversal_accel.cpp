#include "bit_reversal_accel.h"

// Top function
void bit_reverse_accel(hls::stream<axis_t>& s_axis,
						hls::stream<axis_t>& m_axis) {

#pragma HLS INTERFACE axis port=s_axis
#pragma HLS INTERFACE axis port=m_axis
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS PIPELINE II=3

    axis_t input_word, output_word;
    ap_uint<32> reversed;
    int i,j = 0;

    // Read 4 words
    for (i = 0; i < 4; i++) {
        input_word = s_axis.read();

        for (j = 0; j < 32; j++) {
#pragma HLS UNROLL
			reversed[31 - j] = input_word.data[j];
		}

        output_word.data = reversed;
        output_word.last = (i == 3);         // signal last word in the stream
        m_axis.write(output_word);
    }
}


