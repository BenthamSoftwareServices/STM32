/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : lcd_display.c
 * @brief          : LCD display handling functions
 ******************************************************************************
 */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "lcd_display.h"
#include "liquidcrystal_i2c.h"
#include <stdio.h>
#include <string.h>

/* Functions -----------------------------------------------------------------*/

/**
 * @brief  Runs a demonstration sequence on the LCD display
 * @retval None
 */
void LCD_DisplayDemo(void)
{
    // Display Strings to LCD
    HD44780_Init(2);
    HD44780_Clear();
    HD44780_SetCursor(0, 0); // (Column,Row)
    HD44780_PrintStr("HELLO");
    HD44780_SetCursor(10, 1); // (Column,Row)
    HD44780_PrintStr("WORLD");
    HAL_Delay(2000);

    HD44780_Clear();
    HD44780_SetCursor(0, 0); // (Column,Row)
    HD44780_PrintStr("HELLO");
    HAL_Delay(2000);
    HD44780_NoBacklight();
    HAL_Delay(2000);
    HD44780_Backlight();

    HAL_Delay(2000);
    HD44780_Cursor();
    HAL_Delay(2000);
    HD44780_Blink();
    HAL_Delay(5000);
    HD44780_NoBlink();
    HAL_Delay(2000);
    HD44780_NoCursor();
    HAL_Delay(2000);

    HD44780_NoDisplay();
    HAL_Delay(2000);
    HD44780_Display();

    HD44780_Clear();
    HD44780_SetCursor(0, 0); // (Column,Row)
    HD44780_PrintStr("Learning STM32 with LCD is fun :-)");

    for (int x = 0; x < 40; x = x + 1) {
        HD44780_ScrollDisplayLeft();  //HD44780_ScrollDisplayRight();
        HAL_Delay(500);
    }

    char snum[5];
    for (int x = 1; x <= 15; x++) {
        snprintf(snum, sizeof(snum), "%d", x);
        HD44780_Clear();
        HD44780_SetCursor(0, 0); // (Column,Row)
        HD44780_PrintStr(snum);
        HAL_Delay(1000);
    }
}
