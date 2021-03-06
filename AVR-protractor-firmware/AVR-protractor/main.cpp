/*
 //////////////////////////////////////
 ///       AVR-protractor rev1       //
 //////////////////////////////////////
Created: 21.02.2019 15:53:35
Author : Wiktor Burdecki

Debug data on UART, baud 38400, 8bits/1stop

Screen is divided to 2 areas -  left and right which are drawn separately but share a 512b framebuffer in RAM
Full framebuffer is unachievable because ATMega 8A has 1kB of RAM, and framebuffer needs 128*64 bits =1024B
Left side is dedicated for graphic representation of orientation
Right side is drawing numeric values

Graphics library is a modified https://github.com/tibounise/SSD1306-AVR library by tibounise. Changes were made mainly to sendFramebuffer function. I also added contrast control.

		@TODO
	*implement font drawing
	*enhance UI design
	*expand LIS3DH library functionalities
	*add support for buttons and interrupt from accelerometer
	*standby mode and wake-up with external interrupt
	*UART rx functionality and implementing configuration commands
 */ 

#include <avr/io.h>
#include <stdint.h>
#include <util/delay.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#include "USART.h"
#include "SSD1306.h"
#include "I2C.h"
#include "LIS3DH.h"
#include "Framebuffer.h"

float pitch=0.0; //averaged and calculated angle values
float roll=0.0;
float yaw=0.0;

int32_t sumX=0; //sum of few acc readings
int32_t sumY=0;
int32_t sumZ=0;

int16_t oneX=0; //one acceleration reading from axis
int16_t oneY=0;
int16_t oneZ=0;

float rollOffset=0; //offset to correct angle value static error
float pitchOffset=0;
float yawOffset=0;

uint8_t n=0; //samples counter
uint8_t samplesToAvg=10;  //number of samples to calculate average

uint8_t measurementMode=0; //0 for laying on back, 1 for laying on side

	

int main(void)
{
	SSD1306 disp;
	LIS3DH acc;
	Framebuffer fb;
	
	
	USART_Init(25); //25 for 16MHz crystal and 38400 baud (0,2% error)
	fb.clear();	
	fb.show(0);
	fb.show(1);
	
     
    while (1) 
    { 
		_delay_ms(10);//screen refresh rate is delay*samplesToAvg
		
		//////////////////////////////////////////////////////////////////get reading from acc and add it to a sum
		 oneZ = acc.readAcc(OUT_Z_L,OUT_Z_H);
		 oneY= acc.readAcc(OUT_Y_L,OUT_Y_H);
		 oneX = acc.readAcc(OUT_X_L,OUT_X_H);
		 sumZ+=oneZ; 
		 sumY+=oneY; 
		 sumX+=oneX; 
		 n++;
		 
		 if(n==samplesToAvg-1){
			//////////////////////////////////////////////////////////////////calculate average acc reading
			int16_t Xavg=sumX/samplesToAvg;
			int16_t Yavg=sumY/samplesToAvg;
			int16_t Zavg=sumZ/samplesToAvg;
						 
			//reset values
			n=0; sumZ=0; sumY=0; sumX=0;
			
			//////////////////////////////////////////////////////////////////calculate angles
			//https://www.digikey.com/en/articles/techzone/2011/may/using-an-accelerometer-for-inclination-sensing
			
			pitch= ((atan2(Xavg, sqrt(square(Yavg) + square(Zavg)))*180.0)/M_PI)+pitchOffset;
			roll = ((atan2(Yavg, sqrt(square(Zavg) + square(Xavg)))*180.0)/M_PI)+rollOffset;
			yaw = ((atan2(sqrt(square(Yavg) + square(Xavg)), Zavg)*180.0)/M_PI)+yawOffset;
			//////////////////////////////////////////////////////////////////change angle display mode depending on device orientation
			//between 40 and 70 degrees stays in last set mode (hysteresis to prevent from fast changes of display mode)
			if(abs(roll)>70){
				measurementMode=1; //on side
			}
			if(abs(roll)<40){
				measurementMode=0; //on back
			}
			
			//////////////////////////////////////////////////////////////////WRITE VALUES TO UART
			USART_WriteDebug(pitch,roll,yaw,measurementMode);
			
			//////////////////////////////////////////////////////////////////DRAW LEFT HALF OF SCREEN
			//sine is used to move a dot faster around 0 degrees which is supposed to give extra accuracy of graphic
			fb.clear();
			if(!measurementMode){
			fb.drawRectangle(28,28,36,36);
			fb.drawPixel((int8_t)(sin(pitch*M_PI/180)*32)+32,(sin(roll*M_PI/180)*32)+32);
			}else{
				fb.drawHLine(16,1,63);
				fb.drawPixel((int8_t)(sin(pitch*M_PI/180)*32)+32,30);
			}
			fb.show(0);//draw framebuffer on left side of screen
		 
			//////////////////////////////////////////////////////////////////DRAW RIGHT HALF OF SCREEN	
			fb.clear();
			fb.show(1);//draw framebuffer on right side of screen
			}
		 
    }
}

 

