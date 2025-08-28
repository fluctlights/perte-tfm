#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#define configUSE_PREEMPTION            1
#define configUSE_IDLE_HOOK             0
#define configUSE_TICK_HOOK             0
#define configCPU_CLOCK_HZ              (100000000)
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


__attribute__((section(".heap"), used)) uint8_t ucHeap[configTOTAL_HEAP_SIZE];
QueueHandle_t xQueue;

// Hooks required by FreeRTOS config (empty implementations)
void vApplicationTickHook(void) {}
void vApplicationIdleHook(void) {}
void vApplicationMallocFailedHook(void) { for(;;); }
void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName) {
    (void)xTask; (void)pcTaskName; for(;;);
}

// Define a handle for the queue from Task A to Task B
QueueHandle_t xQueue_A_to_B;

// Define a handle for the queue from Task B to Task A
QueueHandle_t xQueue_B_to_A;

// Data structure for messages (can be the same for both directions or different)
typedef struct {
    int message_id;
    char payload[20];
} MyMessage_t;

// Task A
void vTaskA(void* pvParameters) {
    MyMessage_t msg_to_B;
    MyMessage_t msg_from_B;

    for (;;) {
        // Step 1: Send a message to Task B
        msg_to_B.message_id = 1;
        strcpy(msg_to_B.payload, "Hello from A");
        xQueueSend(xQueue_A_to_B, &msg_to_B, portMAX_DELAY);

        // Step 2: Wait for a reply from Task B
        xQueueReceive(xQueue_B_to_A, &msg_from_B, portMAX_DELAY);
        
        // Process the received reply
        printf("Task A received from Task B: %s\n", msg_from_B.payload);

        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}

// Task B
void vTaskB(void* pvParameters) {
    MyMessage_t msg_from_A;
    MyMessage_t msg_to_A;

    for (;;) {
        // Step 1: Wait for a message from Task A
        xQueueReceive(xQueue_A_to_B, &msg_from_A, portMAX_DELAY);

        // Process the received message
        printf("Task B received from Task A: %s\n", msg_from_A.payload);

        // Step 2: Send a reply back to Task A
        msg_to_A.message_id = 2;
        strcpy(msg_to_A.payload, "Reply from B");
        xQueueSend(xQueue_B_to_A, &msg_to_A, portMAX_DELAY);

        // Add a delay here to let the other task run
        vTaskDelay(pdMS_TO_TICKS(100)); // or simply vTaskDelay(1);
    }
}

int main(void) {
    // Create the two queues
    xQueue_A_to_B = xQueueCreate(5, sizeof(MyMessage_t));
    xQueue_B_to_A = xQueueCreate(5, sizeof(MyMessage_t));

    // Create the tasks
    if (xQueue_A_to_B != NULL && xQueue_B_to_A != NULL) {
        xTaskCreate(vTaskA, "Task A", 256, NULL, 1, NULL);
        xTaskCreate(vTaskB, "Task B", 256, NULL, 1, NULL);
        vTaskStartScheduler();
    } else {
        printf("Failed to create one or both queues.\n");
    }

    for(;;){}
    return 0;
}