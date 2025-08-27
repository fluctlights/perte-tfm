
#ifndef BITREVERSAL_CONTROL_HH_
#define BITREVERSAL_CONTROL_HH_
#endif

#include <stdint.h>
#include "bitreversal_control_reg.h"
#include "core_v_mini_mcu.h"

/*****************************/
/* ---- DRIVER ROUTINES ---- */
/*****************************/

// Access the accelerator configuration registers
// -----------------------------------------------

/**
 * @brief Write input operand (DIN).
 * 
 * @param value The 32-bit input value.
 */
void bitrev_set_input(uint32_t value);

/**
 * @brief Read back the last input operand (DIN).
 * 
 * @return The current input value stored in DIN.
 */
uint32_t bitrev_get_input();

/**
 * @brief Start the accelerator operation (set START=1).
 * 
 */
void bitrev_start();

/**
 * @brief Stop the accelerator operation (set START=0).
 * 
 */
__attribute__((inline)) void bitrev_stop();

/**
 * @brief Starts a READ then clears it to make the result available in DOUT.
 * 
 */
void bitrev_trigger_read();

/**
 * @brief Get the result of the computation.
 *        NOTE: Internally triggers READ up and down before fetching DOUT.
 * 
 * @return The computed result (bit-reversed value).
 */
uint32_t bitrev_get_output();

// Status handling
// ---------------

/**
 * @brief Check if the accelerator operation is done.
 * 
 * @return 1 if DONE=1, 0 otherwise.
 */
uint8_t bitrev_is_done();

/**
 * @brief Clear the DONE flag (write-1-clear).
 * 
 */
__attribute__((inline)) void bitrev_clear_done();

/**
 * @brief Wait until the accelerator signals DONE=1, then clear it.
 * 
 */
__attribute__((inline)) void bitrev_wait_done();
