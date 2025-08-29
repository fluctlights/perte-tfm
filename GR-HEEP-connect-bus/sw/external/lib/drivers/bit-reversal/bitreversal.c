
#include <stdint.h>

#include "bitreversal.h"
#include "bitreversal_control_reg.h"
#include "csr.h"
#include "gr_heep.h"
#include "rv_plic.h"

/************************************************/
/* ---- DRIVER API ----                         */
/************************************************/

/**
 * @brief Write an input operand into DIN
 * 
 * @param value The 32-bit input value.
 */
void bitrev_write_val(uint32_t value) {
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_DIN_REG_OFFSET) = value;
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_WRITE_REG_OFFSET) = 1U; //activate write once DIN is updated
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_WRITE_REG_OFFSET) = 0U; //deactivate write
}

/**
 * @brief Read back the last input operand (DIN).
 */
uint32_t bitrev_get_input() {
    return *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_DIN_REG_OFFSET);
}

/**
 * @brief Start the operation (set START=1).
 */
void bitrev_start() {
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_START_REG_OFFSET) |= 
        (1u << BITREVERSAL_CONTROL_START_START_BIT);
}

/**
 * @brief Stop the operation (set START=0).
 */
void bitrev_stop() {
    *(volatile uint32_t *)(BIT_REVERSAL_START_ADDRESS + BITREVERSAL_CONTROL_START_REG_OFFSET) &= 
        ~(1u << BITREVERSAL_CONTROL_START_START_BIT);
}

/**
 * @brief Starts a READ then clears it to make the result available in DOUT.
 * 
 */
void bitrev_trigger_read() {
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_READ_REG_OFFSET) = 1U;
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_READ_REG_OFFSET) = 0U;
}

/**
 * @brief Starts a WRITE then clears it to make the result available in DOUT.
 * 
 */
void bitrev_trigger_write() {
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_WRITE_REG_OFFSET) = 1U; //activate write once DIN is updated
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_WRITE_REG_OFFSET) = 0U; //deactivate write
}

/**
 * @brief Check if DONE flag is set.
 */
uint8_t bitrev_is_done() {
    return ((*(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_DONE_REG_OFFSET)) >> 
            BITREVERSAL_CONTROL_DONE_DONE_BIT) & 0x1;
}

/**
 * @brief Clear DONE flag (write-1-clear).
 */
inline void bitrev_clear_done() {
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_DONE_REG_OFFSET) = 
        (1u << BITREVERSAL_CONTROL_DONE_DONE_BIT);
}

/**
 * @brief Get the result of the computation.
 *        NOTE: Internally triggers READ up before fetching DOUT.
 * 
 * @return The computed result (bit-reversed value).
 */
uint32_t bitrev_get_output() {
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_READ_REG_OFFSET) = 1U; //activate read
    uint32_t val = *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_DOUT_REG_OFFSET);
    *(volatile uint32_t *)(BIT_REVERSAL_PERIPH_START_ADDRESS + BITREVERSAL_CONTROL_READ_REG_OFFSET) = 0U; //deactivate read
    return val;
}

/**
 * @brief Polling until DONE=1, then clear it.
 */
inline void bitrev_wait_done() {
    while (!bitrev_is_done()) {
        ; // busy-wait
    }
    bitrev_clear_done();
}
