/*
 * USART.cpp
 *
 * Created: 21.02.2019 20:08:18
 *  Author: Wiktor Burdecki
 */ 

#include "USART.h"
#include <avr/io.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>


	
void USART_Transmit( unsigned char data )
{
	/* Wait for empty transmit buffer */
	while ( !( UCSRA & (1<<UDRE)));
	/* Copy 9th bit to TXB8 */
	UCSRB &= ~(1<<TXB8);
	if ( data & 0x0100 )
	UCSRB |= (1<<TXB8);
	/* Put data into buffer, sends the data */
	UDR= data;
}

void USART_Init(int baud_const){
	//int UART_CONST=F_CPU/(16ul*baud)-1;
	int UART_CONST=baud_const; 
	UBRRH = (unsigned char)(UART_CONST>>8);
	UBRRL = (unsigned char)UART_CONST;
	/* Enable receiver and transmitter */
	UCSRB = (1<<RXCIE)|(1<<RXEN)|(1<<TXEN);
	
	UCSRC = 1<<URSEL | 1<<UCSZ1 | 1<<UCSZ0;         //ramka 8bit, 1 bit stopu
	
}

void USART_String(char s[]){
	int i =0;

	while (s[i] != 0x00)
	{
		USART_Transmit(s[i]);
		i++;
	}
}

void USART_WriteDebug(int16_t pitch,int16_t roll, int16_t yaw, uint8_t measurementMode){
	char UartString[40]={"pitch "};
	char pitchString [6];
	char* pPitchString= pitchString;
	dtostrf(pitch,3,1,pPitchString);
	strcat(UartString,pPitchString);
	
	strcat(UartString," roll ");
	char rollString [6];
	char* pRollString= rollString;
	dtostrf(roll,3,1,pRollString);
	strcat(UartString,pRollString);
	
	strcat(UartString," yaw ");
	char yawString [6];
	char* pYawString= yawString;
	dtostrf(yaw,3,1,pYawString);
	strcat(UartString,pYawString);
	
	if(!measurementMode){strcat(UartString," H ");}else{strcat(UartString," V ");} //device orientation
	
	strcat(UartString,"\r\n");
	USART_String(UartString);
}