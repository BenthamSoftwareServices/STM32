/* USER CODE BEGIN Header */
/**
  * @file    led_control.c
  * @brief   LED control functions
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "led_control.h"
#include "main.h"

/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  Toggle the LED with delay
  * @param  delay_ms: Delay in milliseconds between toggles
  * @retval None
  */
void LED_Toggle(uint32_t delay_ms)
{
  HAL_GPIO_TogglePin(LD3_GPIO_Port, LD3_Pin);
  HAL_Delay(delay_ms);
}

/**
  * @brief  Turn on the LED
  * @retval None
  */
void LED_On(void)
{
  HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_SET);
}

/**
  * @brief  Turn off the LED
  * @retval None
  */
void LED_Off(void)
{
  HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_RESET);
}

/**
  * @brief  Get the current state of the LED
  * @retval GPIO_PinState: Current LED state
  */
GPIO_PinState LED_GetState(void)
{
  return HAL_GPIO_ReadPin(LD3_GPIO_Port, LD3_Pin);
}
