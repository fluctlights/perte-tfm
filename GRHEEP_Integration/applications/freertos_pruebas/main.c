#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

// Accelerator base address and registers (adjust base if needed)
#define ACCEL_BASE    0x50000000UL
#define REG_DATA_IN   0x00  // Write data to FIFO input
#define REG_START     0x04  // Write 1 to start processing
#define REG_STATUS    0x08  // Bit 0 = done flag
#define REG_DATA_OUT  0x0C  // Read data from FIFO output

static volatile uint32_t* const accel_data_in  = (uint32_t*)(ACCEL_BASE + REG_DATA_IN);
static volatile uint32_t* const accel_start    = (uint32_t*)(ACCEL_BASE + REG_START);
static volatile uint32_t* const accel_status   = (uint32_t*)(ACCEL_BASE + REG_STATUS);
static volatile uint32_t* const accel_data_out = (uint32_t*)(ACCEL_BASE + REG_DATA_OUT);

#define configUSE_PREEMPTION            1
#define configUSE_IDLE_HOOK             0
#define configUSE_TICK_HOOK             0
#define configCPU_CLOCK_HZ              (50000000UL)
#define configTICK_RATE_HZ              ((TickType_t)1000)
#define configMAX_PRIORITIES            (5)
#define configMINIMAL_STACK_SIZE        (128)
#define configTOTAL_HEAP_SIZE           ((size_t)(10 * 1024))
#define configUSE_16_BIT_TICKS          0
#define configUSE_MUTEXES               1
#define configCHECK_FOR_STACK_OVERFLOW  2
#define configSUPPORT_DYNAMIC_ALLOCATION 1

#define configKERNEL_INTERRUPT_PRIORITY         (1)
#define configMAX_SYSCALL_INTERRUPT_PRIORITY    (1)

#define INCLUDE_vTaskDelay             1
#define INCLUDE_xTaskCreate            1
#define INCLUDE_xQueueCreate           1
#define INCLUDE_xQueueSend             1
#define INCLUDE_xQueueReceive          1

QueueHandle_t xQueue;

// Hooks required by FreeRTOS config (empty implementations)
void vApplicationTickHook(void) {}
void vApplicationIdleHook(void) {}
void vApplicationMallocFailedHook(void) { for(;;); }
void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName) {
    (void)xTask; (void)pcTaskName; for(;;);
}

// Accelerator write function: writes data and starts processing
void accelerator_write(uint32_t value) {
    *accel_data_in = value;  // push data into FIFO
    *accel_start = 1;        // trigger accelerator start
}

// Accelerator read function: polls done and reads output data
uint32_t accelerator_read() {
    while ((*accel_status & 0x1) == 0); // wait for done
    return *accel_data_out;
}

// Sender task: reads from queue, sends data to accelerator
void vSenderTask(void *pvParameters) {
    int valueToSend = 100;
    for (;;) {
        xQueueSend(xQueue, &valueToSend, portMAX_DELAY);
        vTaskDelay(pdMS_TO_TICKS(1000));  // every 1 second
        valueToSend++;
    }
}

// Receiver task: receives from queue, sends to accelerator, reads result, prints it
void vReceiverTask(void *pvParameters) {
    int receivedValue;
    for (;;) {
        if (xQueueReceive(xQueue, &receivedValue, portMAX_DELAY) == pdPASS) {
            accelerator_write((uint32_t)receivedValue);
            uint32_t accelResult = accelerator_read();

            printf("Accelerator processed input %d, got result %u\n", receivedValue, accelResult);
        }
    }
}

int main(void) {
    xQueue = xQueueCreate(5, sizeof(int));

    if (xQueue == NULL) {
        printf("Error creating queue.\n");
        while (1);
    }

    xTaskCreate(vSenderTask, "Sender", configMINIMAL_STACK_SIZE, NULL, 1, NULL);
    xTaskCreate(vReceiverTask, "Receiver", configMINIMAL_STACK_SIZE, NULL, 1, NULL);

    vTaskStartScheduler();

    for (;;);  // Should never reach here
}
