#include <stdio.h>
#include <stdint.h>

#include "core_v_mini_mcu.h"
#include "timer_sdk.h"
#include "soc_ctrl.h"
#include "x-heep.h"

/**
 * @brief Performs bit-reversal on a 32-bit integer using a custom RISC-V instruction.
 *
 * This function utilizes an inline assembly instruction to execute a custom RISC-V 
 * operation (BITREV), which reverses the order of bits in the input value.
 *
 * @param val The 32-bit integer whose bits will be reversed.
 * @return uint32_t The bit-reversed result.
 *
 * The `.insn` directive is used to encode a custom RISC-V instruction with the following format:
 *
 * .insn r opcode, funct3, funct7, rd, rs1, rs2
 *
 * - `r` specifies that this is an R-type (register-based) instruction.
 * - `0x2B` (0101011) is on of the opcodes for custom RISC-V extensions.
 * - `0x7` is the `funct3` field, which helps define the operation.
 * - `0x02` (00000_10) is the `funct7` field, which further specifies the BITREV operation.
 * - `%0` (rd) is the destination register where the output (result) is stored.
 * - `%1` (rs1) is the source register containing the input value (val).
 * - `zero` (rs2) is a hardcoded register operand set to zero, as this instruction only requires one input register.
 */
static inline uint32_t reverseBits(uint32_t num) {
    uint32_t reversed = 0;
    for (int i = 0; i < 32; i++) {
        reversed <<= 1; // Shift left
        reversed |= (num & 1); // Get the last bit of num and set it in reversed
        num >>= 1; // Shift num right
    }
    return reversed;
}

int main() {

    uint32_t i = 0;
    uint32_t timer_cycles;
    uint32_t nop_cycles[4];
    
    volatile uint32_t x = 0b10110000;
    volatile uint32_t reversed;


    // Get current Frequency
    soc_ctrl_t soc_ctrl;
    soc_ctrl.base_addr = mmio_region_from_addr((uintptr_t)SOC_CTRL_START_ADDRESS);
    uint32_t freq_hz = soc_ctrl_get_frequency(&soc_ctrl);
    
    printf("Frequency: %d\n", freq_hz);

    timer_cycles_init();         // Init the timer SDK for clock cycles
    timer_start();              // Start counting the time
    
    reversed = reverseBits(x);
    timer_cycles = timer_stop();

    printf("Input:    0x%08X\n", x);
    printf("Reversed: 0x%08X\n", reversed);
    printf("Cycles: %d\n", timer_cycles);
	
    return 0;
}
