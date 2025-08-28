

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

/****************************************************************************/
/**                                                                        **/
/*                        DEFINITIONS AND MACROS                            */
/**                                                                        **/
/****************************************************************************/

/* Priorities used by the tasks. */
#define mainQUEUE_RECEIVE_TASK_PRIORITY		( tskIDLE_PRIORITY + 2 )
#define	mainQUEUE_SEND_TASK_PRIORITY		( tskIDLE_PRIORITY + 1 )
#define mainQUEUE_SEND_FREQUENCY_MS			pdMS_TO_TICKS( 3 )

/* The maximum number items the queue can hold.  The priority of the receiving
task is above the priority of the sending task, so the receiving task will
preempt the sending task and remove the queue items each time the sending task
writes to the queue.  Therefore the queue will never have more than one item in
it at any time, and even with a queue length of 1, the sending task will never
find the queue full. */
#define mainQUEUE_LENGTH					( 3 )

/* Const value to play with TICK counts within the APP */
#define TICK_COUNT                          ( 50 )


#define configCPU_CLOCK_HZ              (100000000)
#define configTICK_RATE_HZ              ((TickType_t)1000)
#define configMAX_PRIORITIES            (5)
#define configMINIMAL_STACK_SIZE        (128)
#define configTOTAL_HEAP_SIZE           ((size_t)(10 * 1024))
#define configUSE_16_BIT_TICKS          0
#define configUSE_MUTEXES               1
#define INCLUDE_vTaskDelay              1
#define INCLUDE_xTaskCreate             1
#define INCLUDE_xQueueCreate            1
#define INCLUDE_xQueueSend              1
#define INCLUDE_xQueueReceive           1
#define configUSE_IDLE_HOOK             0


// Hooks required by FreeRTOS config (empty implementations)
void vApplicationTickHook(void) {}
void vApplicationIdleHook(void) {}
void vApplicationMallocFailedHook(void) { for(;;); }
void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName) {
    (void)xTask; (void)pcTaskName; for(;;);
}

static void prvQueueReceiveTask( void *pvParameters );
static void prvQueueSendTask( void *pvParameters );

/* Allocate heap to special section. Note that we have no references in the
 * whole program to this variable (since its just here to allocate space in the
 * section for our heap), so when using LTO it will be removed. We force it to
 * stay with the "used" attribute
 */
__attribute__((section(".heap"), used)) uint8_t ucHeap[configTOTAL_HEAP_SIZE];

typedef struct {
    int type;             // HW (0) or SW (1)
    uint32_t data[4];    // 32bit set of 4 numbers
} InputPacket_t;

typedef struct {
    int type;
    uint32_t cycles;                 // number of cycles
    uint32_t reversed[4];            // 32bit set of 4 numbers
} ResultPacket_t;

ResultPacket_t reverseBits_SW(InputPacket_t received);
ResultPacket_t reverseBits_HW(InputPacket_t received);

////////////////////
// Queue handlers //
////////////////////

static QueueHandle_t xQueueInputs = NULL;
static QueueHandle_t xQueueResults = NULL;
static int mutex = 0;

/////////////////
// SENDER TASK //
/////////////////

static void prvQueueSendTask(void *pvParameters)
{
    InputPacket_t packet;
    ResultPacket_t result;
    TickType_t xNextWakeTime;
    xNextWakeTime = xTaskGetTickCount();
    ( void ) pvParameters; //compiler warning if not used

    // Initial values
    packet.type = 0;
    packet.data[0] = 0b10110000;
    packet.data[1] = 0b11001100;
    packet.data[2] = 0b11110000;
    packet.data[3] = 0b00001111;

    // Send packet to receivers

    for(;;)
    {
        xQueueSend(xQueueInputs, &packet, pdMS_TO_TICKS(1000));
		printf("S: OK\n");
        if (xQueueReceive(xQueueResults, &result, pdMS_TO_TICKS(1000)) == pdPASS) {
            printf("RCV!: C=%d, data={%08X}\n",result.cycles,result.reversed[0]);
        }
    }
}


static void prvQueueReceiveTask(void *pvParameters)
{
    InputPacket_t received;
    ResultPacket_t modified;
    
    while (1) {
        
        if (xQueueReceive(xQueueInputs, &received, pdMS_TO_TICKS(1000)) == pdPASS) {
            // Invert bits via hardware (0) or software (1)
            if (received.type == 0)
                modified = reverseBits_HW(received);
            else
                modified = reverseBits_SW(received);

            //printf("R:data={%08X}\n", modified.reversed[0]);
        
        
            // Send result back
            BaseType_t ok = xQueueSend(xQueueResults, &modified, pdMS_TO_TICKS(1000));
            if (ok != pdPASS) {
                printf("R: failed!\n");
            } else {
                printf("R: OK\n");
            }
            
            mutex = 1;
        }
    }
}

/////////////////////////////////////////////////////////////
// Reverse the bits of all numbers in the array - SOFTWARE //
/////////////////////////////////////////////////////////////

ResultPacket_t reverseBits_SW(InputPacket_t received) {
    
    ResultPacket_t result;
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
        result.reversed[i] = reversed_num;        // Store the reversed number
    } 

    result.cycles = timer_stop();

    return result;
}

/////////////////////////////////////////////////////////////
// Reverse the bits of all numbers in the array - HARDWARE //
/////////////////////////////////////////////////////////////

ResultPacket_t reverseBits_HW(InputPacket_t received) {
	
    ResultPacket_t result;
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
        result.reversed[i] = bitrev_get_output();     // Get result
    }

    result.cycles = timer_stop();
    return result;
}

int main() {
    

    xQueueInputs = xQueueCreate(3, sizeof(InputPacket_t));
    xQueueResults = xQueueCreate(3, sizeof(ResultPacket_t));
    
    // Create the mutex
    mutex = 0;

    if (xQueueInputs != NULL && xQueueResults != NULL && mutex == 0)
    {
        xTaskCreate(vTaskSender, "Sender",  300, NULL, 1, NULL);
        xTaskCreate(vTaskReceiver,  "Receiver", 300, NULL, 1, NULL);
        vTaskStartScheduler();
    }

    for (;;);
}

