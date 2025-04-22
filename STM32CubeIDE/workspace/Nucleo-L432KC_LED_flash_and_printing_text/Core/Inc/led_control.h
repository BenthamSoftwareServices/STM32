/* USER CODE BEGIN Header */
/**
  * @file    led_control.h
  * @brief   Header for led_control.c file
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __LED_CONTROL_H
#define __LED_CONTROL_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l4xx_hal.h"

/* Exported functions prototypes ---------------------------------------------*/
void LED_Toggle(uint32_t delay_ms);
void LED_On(void);
void LED_Off(void);
GPIO_PinState LED_GetState(void);

#ifdef __cplusplus
}
#endif

#endif /* __LED_CONTROL_H */
