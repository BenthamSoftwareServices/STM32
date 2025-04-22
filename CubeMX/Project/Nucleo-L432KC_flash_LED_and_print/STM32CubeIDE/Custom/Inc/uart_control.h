/* USER CODE BEGIN Header */
/**
  * @file    uart_control.h
  * @brief   Header for uart_control.c file
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __UART_CONTROL_H
#define __UART_CONTROL_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l4xx_hal.h"
#include <stdio.h>
#include <string.h>

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* Exported functions prototypes ---------------------------------------------*/

/**
  * @brief  Initialize UART peripheral
  * @param  huart: Pointer to UART handle
  * @retval None
  */
void UART_Init(UART_HandleTypeDef* huart);

/**
  * @brief  Print a message via UART
  * @param  msg: String to be printed
  * @retval None
  */
void print_message(const char* msg);

/**
  * @brief  Print a welcome message
  * @retval None
  */
void UART_PrintWelcomeMessage(void);

/**
  * @brief  Print LED status information
  * @param  counter: Toggle counter
  * @param  ledState: Current state of the LED
  * @retval None
  */
void UART_PrintLEDStatus(uint32_t counter, GPIO_PinState ledState);

/**
  * @brief  Print system information
  * @retval None
  */
void UART_PrintSystemInfo(void);

/* External variables --------------------------------------------------------*/
extern UART_HandleTypeDef huart2;

#ifdef __cplusplus
}
#endif

#endif /* __UART_CONTROL_H */
