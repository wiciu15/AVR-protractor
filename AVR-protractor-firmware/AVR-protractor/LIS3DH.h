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
#define  CTRL_REG1     0x20
#define  WHO_AM_I      0x0F

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