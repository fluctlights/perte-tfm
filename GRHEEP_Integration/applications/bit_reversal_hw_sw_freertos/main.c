

/****************************************************************************/
/**                                                                        **/
/*                             MODULES USED                                 */
/**                                                                        **/
/****************************************************************************/

/* FreeRTOS kernel includes */
#include <FreeRTOS.h>
#include <task.h>
#include <queue.h>
#include "semphr.h"

/* c stdlib */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>   
#include <unistd.h>
#include <assert.h>

/* X-HEEP related includes */
#include "csr.h"
#include "hart.h"
#include "handler.h"
#include "core_v_mini_mcu.h"
#include "rv_timer.h"
#include "soc_ctrl.h"
#include "gpio.h"
#include "x-heep.h"
#include "fast_intr_ctrl.h"
#include "ext_irq.h"
#include "timer_sdk.h"

/* HW Design includes */
#include "bitreversal.h"

// Hooks required by FreeRTOS config (empty implementations)
void vApplicationTickHook(void) {}
void vApplicationIdleHook(void) {}
void vApplicationMallocFailedHook(void) { for(;;); }
void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName) {
    (void)xTask; (void)pcTaskName; for(;;);
}

/* Allocate heap to special section. Note that we have no references in the
 * whole program to this variable (since its just here to allocate space in the
 * section for our heap), so when using LTO it will be removed. We force it to
 * stay with the "used" attribute
 */
__attribute__((section(".heap"), used)) uint8_t ucHeap[configTOTAL_HEAP_SIZE];

// Data structure for messages (can be the same for both directions or different)
typedef struct {
    int type;
    uint32_t cycles;             // number of cycles
    uint32_t data[4];            // 32bit set of 4 numbers
} Packet_t;

// Queue handler
static QueueHandle_t xQueue = NULL;

/////////////////////////////////////////////////////////////
// Reverse the bits of all numbers in the array - SOFTWARE //
/////////////////////////////////////////////////////////////
Packet_t reverseBits_SW(Packet_t received);
Packet_t reverseBits_HW(Packet_t received);
unsigned long seed = 123456789;

// Generador lineal congruencial
unsigned long myrand() {
    seed = (1103515245 * seed + 12345) % (1UL << 31);  
    return seed;
}

// Para obtener un número en rango [0, max)
unsigned long myrand_range(unsigned long max) {
    return myrand() % max;
}

Packet_t reverseBits_SW(Packet_t received) {
    
    Packet_t result;
    result.cycles = 0;
    result.type = received.type;
    
    // Input array of 4 numbers
    uint32_t nums[4];

    for (int i = 0; i < 4; i++) {
        nums[i] = received.data[i];
    }

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
        result.data[i] = reversed_num;        // Store the reversed number
    } 

    result.cycles = timer_stop();

    return result;
}

/////////////////////////////////////////////////////////////
// Reverse the bits of all numbers in the array - HARDWARE //
/////////////////////////////////////////////////////////////

Packet_t reverseBits_HW(Packet_t received) {
	
    Packet_t result;
    result.cycles = 0;
    result.type = received.type;
    
    // Input array of 4 numbers
    uint32_t nums[4];

    for (int i = 0; i < 4; i++) {
        nums[i] = received.data[i];
    }

    // Get current Frequency
    soc_ctrl_t soc_ctrl;
    soc_ctrl.base_addr = mmio_region_from_addr((uintptr_t)SOC_CTRL_START_ADDRESS);
    uint32_t freq_hz = soc_ctrl_get_frequency(&soc_ctrl);

    timer_cycles_init();         // Init the timer SDK for clock cycles
    timer_start();               // Start counting the time

    // HARDWARE BIT REVERSAL
    bitrev_start();

    for (size_t i = 0; i < 4; i++) {
        bitrev_set_input(nums[i]);
    }   
    
    // Wait until done flag is 1 (polling)
    while (!bitrev_is_done());

    for (size_t i = 0; i < 4; i++) {
        result.data[i] = bitrev_get_output();     // Get result
    }

    result.cycles = timer_stop();
    return result;
}

void vSenderTask(void *pvParameters)
{
    Packet_t input;

    // Send a message to the receiver
    for (int i = 0; i < 3; i++)
    {
        // Initial values
        input.type = rand() % 2;
        input.cycles = 0; //init cycle number
        input.data[0] = (rand() % 255) + 1;
        input.data[1] = (rand() % 255) + 1;
        input.data[2] = (rand() % 255) + 1;
        input.data[3] = (rand() % 255) + 1;
        printf("Input: {%08X, %08X, %08X, %08X}\n", input.data[0],input.data[1],input.data[2],input.data[3]);
        if (xQueueSend(xQueue, &input, portMAX_DELAY) == pdPASS);
    }
}
void vReceiverTask(void *pvParameters)
{
    Packet_t received;
    Packet_t result;

    for (int i = 0; i < 3; i++)
    {
        // Receive a message from sender
        if (xQueueReceive(xQueue, &received, portMAX_DELAY) == pdPASS)
        {
            if (received.type == 0)
                result = reverseBits_HW(received);
            else
                result = reverseBits_SW(received);
            
            printf("Result, type %d, input %d: {%08X, %08X, %08X, %08X}, cycles:%d\n", result.type, i, result.data[0],result.data[1],result.data[2],result.data[3], result.cycles);
        }
    }
}

int main() {
    
    //srand(time(NULL));
    xQueue = xQueueCreate(3, sizeof(Packet_t));

    if (xQueue != NULL)
    {
        xTaskCreate(vSenderTask, "Sender",  300, NULL, 3, NULL);
        xTaskCreate(vReceiverTask,  "Receiver", 300, NULL, 3, NULL);
        vTaskStartScheduler();
    }

    for (;;);
}

