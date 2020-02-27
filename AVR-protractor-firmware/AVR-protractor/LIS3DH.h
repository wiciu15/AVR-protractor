/*
 * LIS3DH.h
 *
 * Created: 27.02.2019 12:52:56
 *  Author: wiki1
 */ 
#pragma once

#ifndef LIS3DH_H_
#define LIS3DH_H_

#include "I2C.h"
#define  LIS3_ADRESS_R 0x33
#define  LIS3_ADRESS_W 0x32

#define  WHO_AM_I      0x0F

#define  TEMP_CFG_REG  0x1F
#define  ADC_EN		   7
#define  TEMP_EN	   6

#define  CTRL_REG1     0x20

#define  CTRL_REG2	   0x21

#define	 CTRL_REG3     0x22
#define  I1_CLICK      7
#define  I1_IA1        6
#define  I1_IA2		   5

#define CTRL_REG4      0x23
#define FS1			   5
#define FS0			   4
#define HR			   3
#define ST1			   2
#define ST0			   1
#define SIM			   0

#define CTRL_REG5	   0x24

#define CTRL_REG6	   0x25
#define I2_CLICK	   7
#define I2_IA1         6
#define I2_IA2		   5
#define INT_POLARITY   1

#define OUT_X_L        0x28
#define OUT_X_H        0x29
#define OUT_Y_L        0x2A
#define OUT_Y_H        0x2B
#define OUT_Z_L        0x2C
#define OUT_Z_H        0x2D

#define FIFO_CTRL_REG  0x2E

#define CLICK_CFG      0x38
#define ZD			   5
#define ZS			   4
#define YD			   3
#define YS			   2
#define XD			   1
#define XS			   0

#define CLICK_SRC	   0x39
#define IA			   6
#define DCLICK		   5
#define SCLICK		   4
#define SIGN		   3
#define Z_CLICK_EVENT  2
#define Y_CLICK_EVENT  1
#define X_CLICK_EVENT  0

#define CLICK_THS	   0x3A
#define LIR_CLICK      7

#define TIME_LIMIT	   0x3B
#define TIME_LATENCY   0x3C
#define TIME_WINDOW	   0x3D

class LIS3DH {
	public:
	LIS3DH();
	void sendCmd(uint8_t reg,uint8_t data);
	uint8_t readReg(uint8_t reg);
	int16_t readAcc(uint8_t regLow, uint8_t regHi);
	
	private:	
	 I2C i2c_acc_w;
	 I2C i2c_acc_r;
	 
	};

#endif /* LIS3DH_H_ */