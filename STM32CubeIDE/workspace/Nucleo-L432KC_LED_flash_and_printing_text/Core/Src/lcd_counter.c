/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : lcd_counter.c
 * @brief          : LCD counter display functions
 ******************************************************************************
 */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "lcd_counter.h"
#include "liquidcrystal_i2c.h"
#include <stdio.h>
#include <string.h>

/* Functions -----------------------------------------------------------------*/

/**
 * @brief Displays a counter value on the LCD at the specified position
 * @param counter: The counter value to display
 * @param column: Column position on LCD (0-15)
 * @param row: Row position on LCD (0-1 for 2-line display)
 * @retval None
 */
void LCD_DisplayCounter(uint32_t counter, uint8_t column, uint8_t row)
{
    char numChar[5]; // Create an array that can hold 5 characters

    // Format the counter value as a string
    sprintf(numChar, "%ld", counter); // Convert counter to string using long int format

    // Position cursor and display counter
    HD44780_SetCursor(column, row); // Set cursor position defined in the function call in main.c
    HD44780_PrintStr(numChar);      // Display the counter value
}
