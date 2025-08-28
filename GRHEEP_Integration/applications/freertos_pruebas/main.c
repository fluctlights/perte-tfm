
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



/* Prototypes for the standard FreeRTOS callback/hook functions implemented
within this file.  See https://www.freertos.org/a00016.html */
void vApplicationMallocFailedHook( void );
void vApplicationIdleHook( void );
void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName );
void vApplicationTickHook( void );

// Data structure for messages (can be the same for both directions or different)
typedef struct {
    int type;
    uint32_t cycles;             // number of cycles
    uint32_t data[4];            // 32bit set of 4 numbers
} ResultPacket_t;

#define QUEUE_LENGTH 5
#define QUEUE_ITEM_SIZE sizeof(int)

__attribute__((section(".heap"), used)) uint8_t ucHeap[configTOTAL_HEAP_SIZE];


/* Declare queues */
static QueueHandle_t xQueueSenderToReceiver = NULL;
static QueueHandle_t xQueueReceiverToSender = NULL;



void vSenderTask(void *pvParameters)
{
    int txValue = 0;
    int rxResponse = 0;

    for (;;)
    {
        /* Send a message to the receiver */
        txValue++;
        if (xQueueSend(xQueueSenderToReceiver, &txValue, portMAX_DELAY) == pdPASS)
        {
            printf("S: snt %d\n", txValue);
        }

        /* Wait for a response */
        if (xQueueReceive(xQueueReceiverToSender, &rxResponse, portMAX_DELAY) == pdPASS)
        {
            printf("S: rsp %d\n", rxResponse);
        }

        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}

void vReceiverTask(void *pvParameters)
{
    int rxValue = 0;
    int responseValue = 0;

    for (;;)
    {
        /* Receive a message from sender */
        if (xQueueReceive(xQueueSenderToReceiver, &rxValue, portMAX_DELAY) == pdPASS)
        {
            printf("R: got %d\n", rxValue);

            /* Create a response */
            responseValue = rxValue * 10;

            /* Send response back */
            if (xQueueSend(xQueueReceiverToSender, &responseValue, portMAX_DELAY) == pdPASS)
            {
                printf("R: snt %d\n", responseValue);
            }
        }
    }
}

/*-----------------------------------------------------------*/

void vApplicationMallocFailedHook( void )
{
	/* vApplicationMallocFailedHook() will only be called if
	configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
	function that will get called if a call to pvPortMalloc() fails.
	pvPortMalloc() is called internally by the kernel whenever a task, queue,
	timer or semaphore is created.  It is also called by various parts of the
	demo application.  If heap_1.c or heap_2.c are used, then the size of the
	heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
	FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
	to query the size of free heap space that remains (although it does not
	provide information on how the remaining heap might be fragmented). */
	taskDISABLE_INTERRUPTS();
	printf( "error: application malloc failed\n\r" );
	__asm volatile( "ebreak" );
	for( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationIdleHook( void )
{
	/* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
	to 1 in FreeRTOSConfig.h.  It will be called on each iteration of the idle
	task.  It is essential that code added to this hook function never attempts
	to block in any way (for example, call xQueueReceive() with a block time
	specified, or call vTaskDelay()).  If the application makes use of the
	vTaskDelete() API function (as this demo application does) then it is also
	important that vApplicationIdleHook() is permitted to return to its calling
	function, because it is the responsibility of the idle task to clean up
	memory allocated by the kernel to any task that has since been deleted. */
	taskENTER_CRITICAL();
	printf("I\r\n");
	taskEXIT_CRITICAL();
	
}
/*-----------------------------------------------------------*/

void freertos_risc_v_application_exception_handler(uint32_t mcause)
{
	printf("App mcause:%d\r\n", mcause);
}

/*-----------------------------------------------------------*/

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* Run time stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
	function is called if a stack overflow is detected. */
	taskDISABLE_INTERRUPTS();
	__asm volatile( "ebreak" );
	for( ;; );
}

/*****************************************************************************
*****************************************************************************/

void vApplicationTickHook( void )
{}

int main(void)
{
    /* Create queues */
    xQueueSenderToReceiver = xQueueCreate(QUEUE_LENGTH, QUEUE_ITEM_SIZE);
    xQueueReceiverToSender = xQueueCreate(QUEUE_LENGTH, QUEUE_ITEM_SIZE);

    if (xQueueSenderToReceiver != NULL && xQueueReceiverToSender != NULL)
    {
        /* Create tasks */
        xTaskCreate(vSenderTask, "Sender", 300, NULL, 3, NULL);
        xTaskCreate(vReceiverTask, "Receiver", 300, NULL, 3, NULL);

        /* Start scheduler */
        vTaskStartScheduler();
    }

    /* Should never reach here */
    for (;;);
}
