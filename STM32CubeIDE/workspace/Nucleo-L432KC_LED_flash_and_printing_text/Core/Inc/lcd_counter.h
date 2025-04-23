/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : lcd_counter.h
 * @brief          : Header for LCD counter display functions
 ******************************************************************************
 */
/* USER CODE END Header */

#ifndef LCD_COUNTER_H_
#define LCD_COUNTER_H_

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include <stdint.h>

/* Function prototypes -------------------------------------------------------*/
/**
 * @brief Displays a counter value on the LCD at the specified position
 * @param counter: The counter value to display
 * @param column: Column position on LCD (0-15)
 * @param row: Row position on LCD (0-1 for 2-line display)
 * @retval None
 */
void LCD_DisplayCounter(uint32_t counter, uint8_t column, uint8_t row);

#ifdef __cplusplus
}
#endif

#endif /* LCD_COUNTER_H_ */
