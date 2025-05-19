#ifndef UART_MESSAGE_H
#define UART_MESSAGE_H

#include "stm32f4xx_hal.h"

void sendDebugMessage(const char * msg, ...);
void sendSpecifiedMessage(uint8_t msg);
extern UART_HandleTypeDef huart2;

#endif // UART_MESSAGE_H
