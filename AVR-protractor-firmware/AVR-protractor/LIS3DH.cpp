/*
 * CPPFile1.cpp
 *
 * Created: 27.02.2019 12:52:34
 *  Author: wiki1
 */ 

#include "I2C.h"
#include "LIS3DH.h"

#include <avr/io.h>
#include <stdint.h>

 LIS3DH::LIS3DH (){
	i2c_acc_w.init(LIS3_ADRESS_W);
	i2c_acc_r.init(LIS3_ADRESS_R);
	sendCmd(CTRL_REG1,0b00110111);
}

 void LIS3DH::sendCmd(uint8_t reg , uint8_t data){

	i2c_acc_w.start();
	i2c_acc_w.write(reg);
	i2c_acc_w.write(data);
	i2c_acc_w.stop();

}

uint8_t LIS3DH::readReg(uint8_t reg){
	uint8_t data;
	i2c_acc_w.start();
	i2c_acc_w.write(reg);
	i2c_acc_w.stop();
	
	i2c_acc_r.start();
	data=i2c_acc_r.readAck();
	i2c_acc_r.stop();
	return data;
	
}

int16_t LIS3DH::readAcc(uint8_t regLow, uint8_t regHi){
	int8_t dataH;
	int16_t data;
		
	data= readReg(regLow);
	dataH= readReg(regHi);
	data|=dataH<<8;
	return data;
}