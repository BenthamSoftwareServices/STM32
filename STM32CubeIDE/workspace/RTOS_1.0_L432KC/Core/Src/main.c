/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h> //https://www.tutorialspoint.com/c_standard_library/string_h.htm
#include <stdio.h> //https://www.tutorialspoint.com/c_standard_library/stdio_h.htm
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define PORTA GPIOA //port for A1
#define PORTB GPIOB //port for on-board green LED
#define LED_Red  GPIO_PIN_1 //pin A1 on board
#define LED_Green  GPIO_PIN_3 //pin for on-board green LED

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart2;

osThreadId defaultTaskHandle;
osThreadId Task1Handle;
osThreadId Task2Handle;
/* USER CODE BEGIN PV */
uint32_t number = 0; // Example numeric data.  This is an unsigned integer type with exactly 32 bits. It can hold values ranging from 0 to 2^32 - 1.
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART2_UART_Init(void);
void StartDefaultTask(void const * argument);
void Task1_init(void const * argument);
void Task2_init(void const * argument);

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void send_Task1(void) {
//this is a user created function to transmit various data via UART2.
//For more info see: https://www.youtube.com/watch?v=muOL9SH0p9g&list=PLHKFc6z2OwJGDfYYkfi9POKa7SXEPs6Yn&index=3

	/*The standard method to transmit a text string via a UART is the following, but a NULL character is always added automatically
	 uint8_t data[] = "Hello from DEFTASK";
	 HAL_UART_Transmit(&huart2, data, sizeof(data), 500);

	 Another method to prevent the string literal from ending with a null character is by using a pointer to uint8_t instead of an array.
	 You can initialize the pointer to point to the string literal directly. Here's how you can do it:

	 In this method:

	 The uint8_t *data pointer is initialised directly to the string literal "Hello from DEFTASK\r\n".
	 strlen((const char *)data) is used to determine the length of the string, excluding the null terminator, and this length is passed to HAL_UART_Transmit.
	 This method avoids the need to explicitly specify the size of an array and ensures that only the characters of the string literal are transmitted without the null terminator.
	 */

	const uint8_t *data = (const uint8_t*) "Hello from Task1\r\n";
	HAL_UART_Transmit(&huart2, data, strlen((const char*) data), 500);

	//The following code transmits the value of the variable number via the UART
	char buffer[20]; // buffer is an array of characters to hold the string representation of the number
	sprintf(buffer, "%lu\r\n", number); // Convert number to string and stores in the array called buffer
	HAL_UART_Transmit(&huart2, (uint8_t*) buffer, strlen(buffer),
	HAL_MAX_DELAY); // Transmit the string via UART
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */
	/* This project is an example of using FreeRTOS and creates two tasks i.e. Default & Task2
	 * Default task flashes a red LED on pin A1, transmits data via UART2 using the function send_deftask() and also increments a variable i.e. number
	 * Task2 flashes the on-board green LED
	 */
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  /* USER CODE BEGIN RTOS_MUTEX */
	/* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
	/* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
	/* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
	/* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of defaultTask */
  osThreadDef(defaultTask, StartDefaultTask, osPriorityNormal, 0, 128);
  defaultTaskHandle = osThreadCreate(osThread(defaultTask), NULL);

  /* definition and creation of Task1 */
  osThreadDef(Task1, Task1_init, osPriorityNormal, 0, 128);
  Task1Handle = osThreadCreate(osThread(Task1), NULL);

  /* definition and creation of Task2 */
  osThreadDef(Task2, Task2_init, osPriorityBelowNormal, 0, 128);
  Task2Handle = osThreadCreate(osThread(Task2), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
	/* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1) {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

	}
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 10;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  /* USER CODE BEGIN MX_GPIO_Init_1 */
  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_1, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LD3_GPIO_Port, LD3_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : PA1 */
  GPIO_InitStruct.Pin = GPIO_PIN_1;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : LD3_Pin */
  GPIO_InitStruct.Pin = LD3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LD3_GPIO_Port, &GPIO_InitStruct);

  /* USER CODE BEGIN MX_GPIO_Init_2 */
  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartDefaultTask */
/**
 * @brief  Function implementing the defaultTask thread.
 * @param  argument: Not used
 * @retval None
 */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void const * argument)
{
  /* USER CODE BEGIN 5 */
	/* Infinite loop */
	for (;;) {
		osDelay(1);
	}

  /* USER CODE END 5 */
}

/* USER CODE BEGIN Header_Task1_init */
/**
 * @brief Function implementing the Task1 thread.
 * @param argument: Not used
 * @retval None
 */
/* USER CODE END Header_Task1_init */
void Task1_init(void const * argument)
{
  /* USER CODE BEGIN Task1_init */
	//Transmit text and number via UART2
	/* Infinite loop */
	for (;;) {
		HAL_GPIO_TogglePin(PORTA, LED_Red); //This needs an external LED and resistor connected to pin A1 on the Nucleo L432KC module
		osDelay(1000); //better than HAL_Delay(1000) when using RTOS
		HAL_GPIO_TogglePin(PORTA, LED_Red); //This needs an external LED and resistor connected to pin A1 on the Nucleo L432KC module
		send_Task1(); //call function to transmit text and numeric data
		number++; //increment the variable i.e. number

	}
	//In case we accidentally exit from the Task2 loop
	osThreadTerminate(NULL); //When you pass NULL as an argument, it indicates the current thread, meaning the thread that calls
  /* USER CODE END Task1_init */
}

/* USER CODE BEGIN Header_Task2_init */
/**
 * @brief Function implementing the Task2 thread.
 * @param argument: Not used
 * @retval None
 */
/* USER CODE END Header_Task2_init */
void Task2_init(void const * argument)
{
  /* USER CODE BEGIN Task2_init */
	//Flash on-board green LED
	/* Infinite loop */
	for (;;) {
		HAL_GPIO_TogglePin(PORTB, LED_Green);
		osDelay(500); //better than HAL_Delay(500)when using RTOS
		HAL_GPIO_TogglePin(PORTB, LED_Green);
		osDelay(1000); //better than HAL_Delay(1000) when using RTOS
	}
	//In case we accidentally exit from the Task2 loop
	osThreadTerminate(NULL); //When you pass NULL as an argument, it indicates the current thread, meaning the thread that calls
  /* USER CODE END Task2_init */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM6 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */
// Timer 6 (TIM6) is one of two basic timers in the L432 MCU, the other is Timer 7 for the HAL TIMEBASE SOURCE rather than SysTick which is very busy being used for HAL_Delay() etc.
  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM6)
  {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1) {
	}
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
