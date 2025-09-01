#include <iostream>
#include "../Diseno/bit_reversal_accel.h"

uint32_t *test_hw()
{
	static uint32_t reversed[4];
	hls::stream<axis_t> in_stream, out_stream;

	// Stimulus: push 4 words
	for (int i = 0; i < 4; i++) {
		axis_t word;
		word.data = i + 1;
		word.last = (i == 3);
		in_stream.write(word);
	}

	// Run accelerator
	bit_reverse_accel(in_stream, out_stream);

	// Read back results
	for (int i = 0; i < 4; i++) {
		axis_t word = out_stream.read();
		reversed[i] = word.data;   // guardar resultado en array
	}
	return reversed;
}

uint32_t *test_sw()
{
	static uint32_t reversed[4];

	for (int i = 0; i < 4; i++) {

		uint32_t reversed_num = 0;
		uint32_t num = i+1;

		for (int j = 0; j < 32; j++) {
			reversed_num <<= 1;        // Shift left
			reversed_num |= (num & 1); // Get the last bit of num and set it in reversed_num
			num >>= 1;                 // Shift num right
		}
		reversed[i] = reversed_num;    // Store the reversed number
	}
	return reversed;
}


int main() {
	uint32_t *reversed_sw;
	uint32_t *reversed_hw;
	int err=0;
	reversed_sw = test_sw();
	reversed_hw = test_hw();

	for (int i = 0; i < 4; i++) {
		if(reversed_hw[i] != reversed_sw[i])
			err++;
	}

	std::cout << "Reversed HW: {"
	          << std::hex << reversed_hw[0] << ", "
	          << reversed_hw[1] << ", "
	          << reversed_hw[2] << ", "
	          << reversed_hw[3] << "}" << std::endl;

	std::cout << "Reversed SW: {"
	          << std::hex << reversed_sw[0] << ", "
	          << reversed_sw[1] << ", "
	          << reversed_sw[2] << ", "
	          << reversed_sw[3] << "}" << std::endl;

	std::cout << "Err:" << err << std::endl;
    return 0;
}
