#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_uart.h"
#include "uart_message.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

/*
void sendDebugMessage(char * msg){
	uint8_t *data;
	memcpy(&data, msg, sizeof(uint8_t));
	HAL_UART_Transmit(&huart2, data, 16, 500);
	UART_
}
*/

void sendDebugMessage(const char * msg, ...){
	char buff[256];
	va_list args;
	va_start(args, msg);
	vsnprintf(buff, sizeof(buff), msg, args);
	HAL_UART_Transmit(&huart2, (uint8_t*)buff, strlen(buff), HAL_MAX_DELAY);
	va_end(args);
}

void sendSpecifiedMessage(uint8_t msg){
//	HAL_UART_Transmit(&huart2, msg, 12, 1000);
}
