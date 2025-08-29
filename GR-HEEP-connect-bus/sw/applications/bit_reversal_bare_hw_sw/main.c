// System library headers
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <time.h>  
#include "core_v_mini_mcu.h"
#include "fast_intr_ctrl.h"
#include "bitreversal.h"
#include "ext_irq.h"
#include "csr.h"
#include "timer_sdk.h"
#include "x-heep.h"
#include "soc_ctrl.h"

/////////////////////////////////////////////////////////////
// Reverse the bits of all numbers in the array - SOFTWARE //
/////////////////////////////////////////////////////////////

static inline uint32_t reverseBits_SW() {
    uint32_t timer_cycles;

    // Input array of 4 random numbers
    uint32_t nums[4] = {(rand() % 255), (rand() % 255), (rand() % 255), (rand() % 255)};
    uint32_t reversed[4];  // Array to store reversed numbers

    // Get current Frequency
    soc_ctrl_t soc_ctrl;
    soc_ctrl.base_addr = mmio_region_from_addr((uintptr_t)SOC_CTRL_START_ADDRESS);
    uint32_t freq_hz = soc_ctrl_get_frequency(&soc_ctrl);

    timer_cycles_init();         // Init the timer SDK for clock cycles
    timer_start();               // Start counting the time
    
    // SOFTWARE BIT REVERSAL
    for (size_t i = 0; i < 4; i++) {
        uint32_t num = nums[i];
        uint32_t reversed_num = 0;
        
        for (int j = 0; j < 32; j++) {
            reversed_num <<= 1;             // Shift left
            reversed_num |= (num & 1);      // Get the last bit of num and set it in reversed_num
            num >>= 1;                      // Shift num right
        }
        reversed[i] = reversed_num;        // Store the reversed number
    } 

    timer_cycles = timer_stop();

    // Print results for all numbers
    // for (int i = 0; i < 4; i++) {
    //     printf("SOFTWARE Reversed: 0x%08X\n", reversed[i]);
    // }
    return timer_cycles;
}

/////////////////////////////////////////////////////////////
// Reverse the bits of all numbers in the array - SOFTWARE //
/////////////////////////////////////////////////////////////

static inline uint32_t reverseBits_HW() {
	
    uint32_t timer_cycles;

    // Input array of 4 random numbers
    uint32_t nums[4] = {(rand() % 255), (rand() % 255), (rand() % 255), (rand() % 255)};
    uint32_t reversed[4];  // Array to store reversed numbers

    // Get current Frequency
    soc_ctrl_t soc_ctrl;
    soc_ctrl.base_addr = mmio_region_from_addr((uintptr_t)SOC_CTRL_START_ADDRESS);
    uint32_t freq_hz = soc_ctrl_get_frequency(&soc_ctrl);

    timer_cycles_init();         // Init the timer SDK for clock cycles
    timer_start();               // Start counting the time

    // HARDWARE BIT REVERSAL
    bitrev_start();

    for (size_t i = 0; i < 4; i++) {
        //printf("VALOR A METER: 0x%08X\n", nums[i]);
        bitrev_write_val(nums[i]);
        uint32_t number = bitrev_get_input();
        printf("VALOR LEIDO DIN: 0x%08X\n", number);
    }   
    
    // Wait until done flag is 1 (polling)
    while (!bitrev_is_done());

    //printf("HE LLEGADO A DONE=1\n");


    for (size_t i = 0; i < 4; i++) {
        reversed[i] = bitrev_get_output();     // Get result
        printf("HARDWARE Reversed: 0x%08X\n", reversed[i]);
    }

    timer_cycles = timer_stop();

    return timer_cycles;
}

int main() {
    uint32_t sw_cycles, hw_cycles;
    
    sw_cycles = reverseBits_SW();
    hw_cycles = reverseBits_HW();
    printf("Software Cycles: %d\n", sw_cycles);
    printf("Hardware Cycles: %d\n", hw_cycles);
}
