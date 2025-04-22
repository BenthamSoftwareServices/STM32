/* USER CODE BEGIN Header */
/**
  * @file    uart_control.c
  * @brief   UART control functions
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "uart_control.h"
#include "main.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
char message[100];

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Initialize UART peripheral
  * @param  huart: Pointer to UART handle
  * @retval None
  */
void UART_Init(UART_HandleTypeDef* huart)
{
  /* This function is a wrapper for UART initialization if needed */
  /* Currently the actual init is done in MX_USART2_UART_Init() */
}

/**
  * @brief  Print a message via UART
  * @param  msg: String to be printed
  * @retval None
  */
void print_message(const char* msg)
{
  HAL_UART_Transmit(&huart2, (uint8_t*)msg, strlen(msg), HAL_MAX_DELAY);
}

/**
  * @brief  Print a welcome message
  * @retval None
  */
void UART_PrintWelcomeMessage(void)
{
  print_message("\r\n\r\n");
  print_message("*********************************\r\n");
  print_message("* Nucleo L432KC UART Test       *\r\n");
  print_message("* System initialised            *\r\n");
  print_message("*********************************\r\n\r\n");

  printf("Printf is working via __io_putchar redirection\r\n");
  printf("Starting main loop now...\r\n\r\n");
}

/**
  * @brief  Print LED status information
  * @param  counter: Toggle counter
  * @param  ledState: Current state of the LED
  * @retval None
  */
void UART_PrintLEDStatus(uint32_t counter, GPIO_PinState ledState)
{
  sprintf(message, "Toggle #%lu - LED is now %s\r\n",
          counter,
          ledState == GPIO_PIN_SET ? "ON" : "OFF");
  print_message(message);
}

/**
  * @brief  Print system information
  * @retval None
  */
void UART_PrintSystemInfo(void)
{
  printf("System uptime: %lu seconds\r\n\r\n", HAL_GetTick() / 1000);
}

/**
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
#ifdef __GNUC__
int __io_putchar(int ch)
#else
int fputc(int ch, FILE *f)
#endif
{
  HAL_UART_Transmit(&huart2, (uint8_t *)&ch, 1, 0xFFFF);
  return ch;
}
