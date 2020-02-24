/*
 * USART.h
 *
 * Created: 21.02.2019 20:01:50
 *  Author: Wiktor Burdecki
 */ 
#pragma once


#include <stdint.h>
#ifndef USART_H_
#define USART_H_




void USART_Transmit( unsigned char data );

void USART_String(char s[]);

void USART_Init(int baud_const);

void USART_WriteDebug(int16_t pitch,int16_t roll, int16_t yaw, uint8_t measurementMode);


#endif /* USART_H_ */