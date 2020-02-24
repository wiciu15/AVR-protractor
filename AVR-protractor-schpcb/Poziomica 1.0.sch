EESchema Schematic File Version 4
LIBS:Poziomica 1.0-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PROTRACTOR REV2"
Date ""
Rev "2"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega8A-AU U1
U 1 1 5C40F4FD
P 5200 5000
F 0 "U1" H 5150 5050 50  0000 C CNN
F 1 "ATmega8A" H 5150 4950 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5200 5000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Microchip%208bit%20mcu%20AVR%20ATmega8A%20data%20sheet%2040001974A.pdf" H 5200 5000 50  0001 C CNN
	1    5200 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5C40F619
P 5250 3100
F 0 "#PWR07" H 5250 2950 50  0001 C CNN
F 1 "+3.3V" H 5265 3273 50  0000 C CNN
F 2 "" H 5250 3100 50  0001 C CNN
F 3 "" H 5250 3100 50  0001 C CNN
	1    5250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C40F6B6
P 5250 6650
F 0 "#PWR08" H 5250 6400 50  0001 C CNN
F 1 "GND" H 5255 6477 50  0000 C CNN
F 2 "" H 5250 6650 50  0001 C CNN
F 3 "" H 5250 6650 50  0001 C CNN
	1    5250 6650
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:LIS3DHTR AC1
U 1 1 5C40F71F
P 8800 5350
F 0 "AC1" H 9550 5615 50  0000 C CNN
F 1 "LIS3DHTR" H 9550 5524 50  0000 C CNN
F 2 "SSD1306:LIS3DH_BigPad" H 10150 5450 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/LIS3DHTR.pdf" H 10150 5350 50  0001 L CNN
F 4 "Accelerometer 3-Axis 2g/16g 1.8V LGA16 STMicroelectronics LIS3DHTR Accelerometer IC, 3-axis, I2C, SPI 1.71  3.6 V, 16-Pin LGA" H 10150 5250 50  0001 L CNN "Description"
F 5 "1" H 10150 5150 50  0001 L CNN "Height"
F 6 "511-LIS3DHTR" H 10150 5050 50  0001 L CNN "Mouser Part Number"
F 7 "STMicroelectronics" H 10150 4950 50  0001 L CNN "Manufacturer_Name"
F 8 "LIS3DHTR" H 10150 4850 50  0001 L CNN "Manufacturer_Part_Number"
	1    8800 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5C40F861
P 8600 6200
F 0 "#PWR010" H 8600 5950 50  0001 C CNN
F 1 "GND" H 8605 6027 50  0000 C CNN
F 2 "" H 8600 6200 50  0001 C CNN
F 3 "" H 8600 6200 50  0001 C CNN
	1    8600 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5C40F872
P 10600 6250
F 0 "#PWR017" H 10600 6000 50  0001 C CNN
F 1 "GND" H 10605 6077 50  0000 C CNN
F 2 "" H 10600 6250 50  0001 C CNN
F 3 "" H 10600 6250 50  0001 C CNN
	1    10600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5750 8600 5750
Wire Wire Line
	8600 5750 8600 6200
Text GLabel 8300 5650 0    50   Input ~ 0
SCL
Text GLabel 6100 5100 2    50   Input ~ 0
SCL
Text GLabel 8300 5850 0    50   Input ~ 0
SDA
Text GLabel 6100 5000 2    50   Input ~ 0
SDA
Wire Wire Line
	5800 5000 6100 5000
Wire Wire Line
	6100 5100 5800 5100
Wire Wire Line
	8800 5650 8300 5650
Wire Wire Line
	8800 5850 8300 5850
Wire Wire Line
	8700 4900 8700 5350
Wire Wire Line
	8700 5350 8800 5350
Wire Wire Line
	10300 5850 10450 5850
$Comp
L power:+3.3V #PWR011
U 1 1 5C410072
P 8700 4900
F 0 "#PWR011" H 8700 4750 50  0001 C CNN
F 1 "+3.3V" H 8715 5073 50  0000 C CNN
F 2 "" H 8700 4900 50  0001 C CNN
F 3 "" H 8700 4900 50  0001 C CNN
	1    8700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5450 10600 5450
Wire Wire Line
	10600 5450 10600 5650
Connection ~ 10600 5650
$Comp
L Device:R R4
U 1 1 5C4103F7
P 8450 5350
F 0 "R4" H 8380 5304 50  0000 R CNN
F 1 "10k" H 8380 5395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8380 5350 50  0001 C CNN
F 3 "~" H 8450 5350 50  0001 C CNN
	1    8450 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8800 6050 8450 6050
Wire Wire Line
	8450 6050 8450 5500
Wire Wire Line
	8450 5200 8450 4900
Wire Wire Line
	8450 4900 8700 4900
Connection ~ 8700 4900
Wire Wire Line
	10300 5650 10600 5650
Wire Wire Line
	10600 5650 10600 5750
Wire Wire Line
	10300 5750 10600 5750
Connection ~ 10600 5750
Wire Wire Line
	10600 5750 10600 5950
Wire Wire Line
	10300 5950 10600 5950
Connection ~ 10600 5950
Wire Wire Line
	10600 5950 10600 6050
Wire Wire Line
	10300 6050 10600 6050
Connection ~ 10600 6050
Wire Wire Line
	10600 6050 10600 6250
$Comp
L power:GND #PWR06
U 1 1 5C411B67
P 3450 4450
F 0 "#PWR06" H 3450 4200 50  0001 C CNN
F 1 "GND" H 3455 4277 50  0000 C CNN
F 2 "" H 3450 4450 50  0001 C CNN
F 3 "" H 3450 4450 50  0001 C CNN
	1    3450 4450
	1    0    0    -1  
$EndComp
Text GLabel 6100 5600 2    50   Input ~ 0
INT1
Text GLabel 10800 5550 2    50   Input ~ 0
INT1
Wire Wire Line
	10800 5550 10300 5550
$Comp
L Device:Crystal Y1
U 1 1 5C412693
P 4050 4200
F 0 "Y1" V 4004 4331 50  0000 L CNN
F 1 "Crystal" V 4095 4331 50  0000 L CNN
F 2 "SSD1306:Crystal_HC49-U_Vertical" H 4050 4200 50  0001 C CNN
F 3 "~" H 4050 4200 50  0001 C CNN
	1    4050 4200
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 5C412CAC
P 3700 4050
F 0 "C1" V 3475 4050 50  0000 C CNN
F 1 "12pF" V 3566 4050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3700 4050 50  0001 C CNN
F 3 "~" H 3700 4050 50  0001 C CNN
	1    3700 4050
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 5C412D20
P 3700 4350
F 0 "C2" V 3475 4350 50  0000 C CNN
F 1 "12pF" V 3566 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3700 4350 50  0001 C CNN
F 3 "~" H 3700 4350 50  0001 C CNN
	1    3700 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 4100 4400 4100
Wire Wire Line
	4400 4100 4400 4050
Wire Wire Line
	4400 4050 4050 4050
Connection ~ 4050 4050
Wire Wire Line
	4050 4050 3800 4050
Wire Wire Line
	4600 4300 4400 4300
Wire Wire Line
	4400 4300 4400 4350
Wire Wire Line
	4400 4350 4050 4350
Connection ~ 4050 4350
Wire Wire Line
	4050 4350 3800 4350
Wire Wire Line
	3600 4050 3450 4050
Wire Wire Line
	3450 4050 3450 4350
Wire Wire Line
	3600 4350 3450 4350
Connection ~ 3450 4350
Wire Wire Line
	3450 4350 3450 4450
Wire Wire Line
	4600 3900 4600 3750
Wire Wire Line
	4600 3750 3700 3750
$Comp
L Device:R R3
U 1 1 5C415899
P 3250 3600
F 0 "R3" H 3180 3554 50  0000 R CNN
F 1 "10k" H 3180 3645 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3180 3600 50  0001 C CNN
F 3 "~" H 3250 3600 50  0001 C CNN
	1    3250 3600
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5C41596C
P 3250 3350
F 0 "#PWR05" H 3250 3200 50  0001 C CNN
F 1 "+3.3V" H 3265 3523 50  0000 C CNN
F 2 "" H 3250 3350 50  0001 C CNN
F 3 "" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3350 3250 3450
$Comp
L Connector:TestPoint TP5
U 1 1 5C4162CC
P 3700 3750
F 0 "TP5" H 3758 3870 50  0000 L CNN
F 1 "RESET" H 3758 3779 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 3900 3750 50  0001 C CNN
F 3 "~" H 3900 3750 50  0001 C CNN
	1    3700 3750
	1    0    0    -1  
$EndComp
Connection ~ 3700 3750
Wire Wire Line
	3700 3750 3250 3750
Wire Wire Line
	5300 3600 5300 3300
Wire Wire Line
	5300 3300 5250 3300
Wire Wire Line
	5200 3300 5200 3600
Wire Wire Line
	5250 3300 5250 3150
Connection ~ 5250 3300
Wire Wire Line
	5250 3300 5200 3300
Wire Wire Line
	5300 6400 5300 6650
Wire Wire Line
	5300 6650 5250 6650
Wire Wire Line
	5200 6400 5200 6650
Wire Wire Line
	5200 6650 5250 6650
Connection ~ 5250 6650
NoConn ~ 4600 4500
NoConn ~ 4600 4700
NoConn ~ 4600 4800
NoConn ~ 5800 3900
NoConn ~ 5800 4000
NoConn ~ 5800 4100
NoConn ~ 5800 4600
NoConn ~ 5800 4700
NoConn ~ 5800 4800
NoConn ~ 5800 4900
NoConn ~ 5800 5700
NoConn ~ 5800 5900
NoConn ~ 5800 6000
NoConn ~ 10300 5350
NoConn ~ 8800 5450
NoConn ~ 8800 5550
NoConn ~ 8800 5950
$Comp
L power:GND #PWR013
U 1 1 5C4126F8
P 9350 4000
F 0 "#PWR013" H 9350 3750 50  0001 C CNN
F 1 "GND" H 9355 3827 50  0000 C CNN
F 2 "" H 9350 4000 50  0001 C CNN
F 3 "" H 9350 4000 50  0001 C CNN
	1    9350 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5C412742
P 9500 950
F 0 "#PWR014" H 9500 800 50  0001 C CNN
F 1 "+3.3V" H 9515 1123 50  0000 C CNN
F 2 "" H 9500 950 50  0001 C CNN
F 3 "" H 9500 950 50  0001 C CNN
	1    9500 950 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9350 2550 9350 2500
Connection ~ 9350 1900
Wire Wire Line
	9350 1900 9350 1700
Wire Wire Line
	9500 1800 9500 2000
Wire Wire Line
	9500 1500 9500 1800
Connection ~ 9500 1800
$Comp
L Device:CP_Small C7
U 1 1 5C41BC18
P 9750 3700
F 0 "C7" V 9975 3700 50  0000 C CNN
F 1 "2,2uF" V 9884 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9750 3700 50  0001 C CNN
F 3 "~" H 9750 3700 50  0001 C CNN
	1    9750 3700
	0    -1   1    0   
$EndComp
$Comp
L Device:CP_Small C9
U 1 1 5C41BD47
P 10100 3600
F 0 "C9" V 10325 3600 50  0000 C CNN
F 1 "2,2uF" V 10234 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10100 3600 50  0001 C CNN
F 3 "~" H 10100 3600 50  0001 C CNN
	1    10100 3600
	0    -1   1    0   
$EndComp
$Comp
L Device:CP_Small C6
U 1 1 5C41E424
P 9750 1800
F 0 "C6" V 9975 1800 50  0000 C CNN
F 1 "2,2uF" V 9884 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9750 1800 50  0001 C CNN
F 3 "~" H 9750 1800 50  0001 C CNN
	1    9750 1800
	0    -1   1    0   
$EndComp
$Comp
L Device:CP_Small C5
U 1 1 5C41E4A6
P 9750 1500
F 0 "C5" V 9900 1400 50  0000 C CNN
F 1 "2,2uF" V 9800 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9750 1500 50  0001 C CNN
F 3 "~" H 9750 1500 50  0001 C CNN
	1    9750 1500
	0    -1   1    0   
$EndComp
Wire Wire Line
	9650 1800 9500 1800
Wire Wire Line
	9650 1500 9500 1500
Connection ~ 9500 1500
Wire Wire Line
	9850 1800 10050 1800
Wire Wire Line
	10050 1800 10050 1500
Wire Wire Line
	10050 1500 9850 1500
$Comp
L power:GND #PWR015
U 1 1 5C4223C1
P 10050 1900
F 0 "#PWR015" H 10050 1650 50  0001 C CNN
F 1 "GND" H 10055 1727 50  0000 C CNN
F 2 "" H 10050 1900 50  0001 C CNN
F 3 "" H 10050 1900 50  0001 C CNN
	1    10050 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP_Small C4
U 1 1 5C423AAB
P 9650 1300
F 0 "C4" V 9700 1150 50  0000 C CNN
F 1 "2,2uF" V 9600 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9650 1300 50  0001 C CNN
F 3 "~" H 9650 1300 50  0001 C CNN
	1    9650 1300
	0    -1   1    0   
$EndComp
$Comp
L Device:CP_Small C8
U 1 1 5C423B03
P 9800 1100
F 0 "C8" V 9850 950 50  0000 C CNN
F 1 "2,2uF" V 9750 950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9800 1100 50  0001 C CNN
F 3 "~" H 9800 1100 50  0001 C CNN
	1    9800 1100
	0    -1   1    0   
$EndComp
Wire Wire Line
	9900 1100 9900 1200
Text GLabel 9700 2700 2    50   Input ~ 0
SCL
Text GLabel 9700 2800 2    50   Input ~ 0
SDA
Wire Wire Line
	9700 2800 9650 2800
Wire Wire Line
	9650 2800 9650 2900
Connection ~ 9650 2800
$Comp
L Device:R_Small R5
U 1 1 5C44103C
P 9750 3500
F 0 "R5" H 9900 3450 50  0000 R CNN
F 1 "120k" H 10000 3550 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9750 3500 50  0001 C CNN
F 3 "~" H 9750 3500 50  0001 C CNN
	1    9750 3500
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5C442FF7
P 10200 3900
F 0 "#PWR016" H 10200 3650 50  0001 C CNN
F 1 "GND" H 10205 3727 50  0000 C CNN
F 2 "" H 10200 3900 50  0001 C CNN
F 3 "" H 10200 3900 50  0001 C CNN
	1    10200 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9850 3700 10200 3700
Wire Wire Line
	10200 3700 10200 3600
Text Notes 10300 2100 0    50   ~ 0
DLA I2C\nBS0--0\nBS1--1\nBS2--0
Wire Wire Line
	9200 3700 9650 3700
Wire Wire Line
	9200 3600 10000 3600
Wire Wire Line
	9200 3500 9650 3500
Wire Wire Line
	9200 2900 9650 2900
Wire Wire Line
	9200 2800 9650 2800
Wire Wire Line
	9200 2700 9700 2700
Wire Wire Line
	9200 2000 9500 2000
Wire Wire Line
	9200 1900 9350 1900
Wire Wire Line
	9200 1800 9500 1800
Wire Wire Line
	9200 1700 9350 1700
Wire Wire Line
	9200 1500 9500 1500
Wire Wire Line
	9200 1200 9900 1200
Wire Wire Line
	9200 1100 9700 1100
Wire Wire Line
	9850 3500 10200 3500
Wire Wire Line
	10200 3500 10200 3600
Connection ~ 10200 3600
Wire Wire Line
	10200 3700 10200 3900
Connection ~ 10200 3700
Wire Wire Line
	9200 3800 9350 3800
Wire Wire Line
	9500 1500 9500 950 
Wire Wire Line
	9200 1300 9550 1300
Wire Wire Line
	9750 1400 9750 1300
Wire Wire Line
	9200 1400 9750 1400
Wire Wire Line
	10050 1900 10050 1800
Connection ~ 10050 1800
NoConn ~ 9200 1600
Wire Wire Line
	8700 4900 10450 4900
Wire Wire Line
	10450 4900 10450 5850
$Comp
L Device:CP_Small C10
U 1 1 5C498194
P 10600 5000
F 0 "C10" H 10450 5100 50  0000 C CNN
F 1 "2,2uF" H 10400 5000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10600 5000 50  0001 C CNN
F 3 "~" H 10600 5000 50  0001 C CNN
	1    10600 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10450 4900 10600 4900
Connection ~ 10450 4900
Wire Wire Line
	10600 5100 10600 5450
Connection ~ 10600 5450
$Comp
L Device:CP_Small C3
U 1 1 5C49D9B7
P 5600 3150
F 0 "C3" H 5450 3250 50  0000 C CNN
F 1 "2,2uF" H 5400 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5600 3150 50  0001 C CNN
F 3 "~" H 5600 3150 50  0001 C CNN
	1    5600 3150
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5C49DCE5
P 5750 3300
F 0 "#PWR09" H 5750 3050 50  0001 C CNN
F 1 "GND" H 5755 3127 50  0000 C CNN
F 2 "" H 5750 3300 50  0001 C CNN
F 3 "" H 5750 3300 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3150 5250 3150
Connection ~ 5250 3150
Wire Wire Line
	5250 3150 5250 3100
Text GLabel 1650 5050 2    50   Input ~ 0
SCL
Text GLabel 1650 4850 2    50   Input ~ 0
SDA
$Comp
L Device:R R2
U 1 1 5C4A3BF2
P 1350 4550
F 0 "R2" H 1280 4504 50  0000 R CNN
F 1 "10k" H 1280 4595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1280 4550 50  0001 C CNN
F 3 "~" H 1350 4550 50  0001 C CNN
	1    1350 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5C4A3E39
P 1000 4550
F 0 "R1" H 930 4504 50  0000 R CNN
F 1 "10k" H 930 4595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 930 4550 50  0001 C CNN
F 3 "~" H 1000 4550 50  0001 C CNN
	1    1000 4550
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 5C4A3E7B
P 1350 4300
F 0 "#PWR02" H 1350 4150 50  0001 C CNN
F 1 "+3.3V" H 1365 4473 50  0000 C CNN
F 2 "" H 1350 4300 50  0001 C CNN
F 3 "" H 1350 4300 50  0001 C CNN
	1    1350 4300
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5C4A3EAE
P 1000 4300
F 0 "#PWR01" H 1000 4150 50  0001 C CNN
F 1 "+3.3V" H 1015 4473 50  0000 C CNN
F 2 "" H 1000 4300 50  0001 C CNN
F 3 "" H 1000 4300 50  0001 C CNN
	1    1000 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 4700 1350 4850
Wire Wire Line
	1350 4850 1650 4850
Wire Wire Line
	1350 4300 1350 4400
Wire Wire Line
	1000 4300 1000 4400
Wire Wire Line
	1000 4700 1000 5050
Wire Wire Line
	1000 5050 1650 5050
$Comp
L Connector:TestPoint TP1
U 1 1 5C4B0BA6
P 1100 5900
F 0 "TP1" V 1150 6200 50  0000 C CNN
F 1 "3V3" V 1050 6200 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1300 5900 50  0001 C CNN
F 3 "~" H 1300 5900 50  0001 C CNN
	1    1100 5900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5C4BA41F
P 1100 6150
F 0 "TP2" V 1150 6450 50  0000 C CNN
F 1 "SCL" V 1050 6450 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1300 6150 50  0001 C CNN
F 3 "~" H 1300 6150 50  0001 C CNN
	1    1100 6150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5C4BA467
P 1100 6400
F 0 "TP3" V 1150 6700 50  0000 C CNN
F 1 "SDA" V 1050 6700 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1300 6400 50  0001 C CNN
F 3 "~" H 1300 6400 50  0001 C CNN
	1    1100 6400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5C4BA4AD
P 1100 7150
F 0 "TP4" V 1150 7450 50  0000 C CNN
F 1 "GND" V 1050 7450 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1300 7150 50  0001 C CNN
F 3 "~" H 1300 7150 50  0001 C CNN
	1    1100 7150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5C4BA769
P 1450 5900
F 0 "#PWR03" H 1450 5750 50  0001 C CNN
F 1 "+3.3V" H 1465 6073 50  0000 C CNN
F 2 "" H 1450 5900 50  0001 C CNN
F 3 "" H 1450 5900 50  0001 C CNN
	1    1450 5900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C4BA7BC
P 1350 7300
F 0 "#PWR04" H 1350 7050 50  0001 C CNN
F 1 "GND" H 1355 7127 50  0000 C CNN
F 2 "" H 1350 7300 50  0001 C CNN
F 3 "" H 1350 7300 50  0001 C CNN
	1    1350 7300
	1    0    0    -1  
$EndComp
Text GLabel 1350 6150 2    50   Input ~ 0
SCL
Text GLabel 1350 6400 2    50   Input ~ 0
SDA
Wire Wire Line
	1100 6150 1350 6150
Wire Wire Line
	1100 6400 1350 6400
Wire Wire Line
	1100 7150 1350 7150
Wire Wire Line
	1350 7150 1350 7300
$Comp
L power:GND #PWR012
U 1 1 5C413DE4
P 9350 2550
F 0 "#PWR012" H 9350 2300 50  0001 C CNN
F 1 "GND" H 9200 2450 50  0000 C CNN
F 2 "" H 9350 2550 50  0001 C CNN
F 3 "" H 9350 2550 50  0001 C CNN
	1    9350 2550
	-1   0    0    -1  
$EndComp
Wire Notes Line
	7900 4550 11200 4550
Wire Notes Line
	11200 6500 7900 6500
Wire Notes Line
	11200 4300 7900 4300
Wire Notes Line
	7900 4300 7900 500 
Wire Notes Line
	7900 500  11200 500 
Wire Notes Line
	7900 4350 11200 4350
Wire Notes Line
	11200 4350 11200 6500
Wire Notes Line
	7900 4350 7900 6500
Wire Notes Line
	7900 700  11200 700 
Wire Notes Line
	11200 500  11200 4300
Text Notes 10200 650  2    79   ~ 0
Złącze wyświetlacza
Text Notes 9950 4500 2    79   ~ 0
Akcelerometr
Wire Notes Line
	2050 5400 650  5400
Wire Notes Line
	650  7650 2050 7650
Wire Notes Line
	2050 5350 650  5350
Wire Notes Line
	650  5350 650  3750
Wire Notes Line
	650  3750 2050 3750
Wire Notes Line
	2050 3750 2050 5350
Wire Notes Line
	2050 5600 650  5600
Wire Notes Line
	2050 3950 650  3950
Text Notes 1750 5550 2    79   ~ 0
Punkty testowe
Text Notes 2050 3900 2    79   ~ 0
Pull-up magistrali I2C
Text GLabel 6100 5500 2    50   Input ~ 0
INT0
Wire Wire Line
	5800 5500 6100 5500
Wire Wire Line
	5800 5600 6100 5600
$Comp
L Switch:SW_Push SW1
U 1 1 5C4EE4DC
P 1050 2950
F 0 "SW1" V 1004 3098 50  0000 L CNN
F 1 "PWR" V 1095 3098 50  0000 L CNN
F 2 "SSD1306:7914J1000E" H 1050 3150 50  0001 C CNN
F 3 "" H 1050 3150 50  0001 C CNN
	1    1050 2950
	0    1    1    0   
$EndComp
Text GLabel 1000 2550 0    50   Input ~ 0
INT0
$Comp
L power:GND #PWR0101
U 1 1 5C4F66F7
P 1050 3200
F 0 "#PWR0101" H 1050 2950 50  0001 C CNN
F 1 "GND" H 1055 3027 50  0000 C CNN
F 2 "" H 1050 3200 50  0001 C CNN
F 3 "" H 1050 3200 50  0001 C CNN
	1    1050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2550 1050 2550
Wire Wire Line
	1050 3150 1050 3200
Wire Notes Line
	2050 3700 2050 2200
Wire Notes Line
	2050 2200 650  2200
Wire Notes Line
	650  2200 650  3700
Wire Notes Line
	650  3700 2050 3700
Wire Notes Line
	2050 2400 650  2400
Text Notes 1550 2350 2    79   ~ 0
Przyciski
Wire Wire Line
	9350 3800 9350 3900
Wire Wire Line
	5750 3150 5750 3300
Wire Wire Line
	5750 3150 5700 3150
Text Notes 1700 650  2    79   ~ 0
Programator
Text GLabel 6100 4300 2    50   Input ~ 0
MISO
Text GLabel 6100 4200 2    50   Input ~ 0
MOSI
Text GLabel 6100 4400 2    50   Input ~ 0
SCK
Text GLabel 4600 3900 0    50   Input ~ 0
RESET
$Comp
L Connector_Generic_MountingPin:Conn_02x05_Odd_Even_MountingPin J1
U 1 1 5C551060
P 1350 1500
F 0 "J1" H 1300 1950 50  0000 C CNN
F 1 "PROG" H 1300 1850 50  0000 C CNN
F 2 "SSD1306:PROG" H 1350 1500 50  0001 C CNN
F 3 "~" H 1350 1500 50  0001 C CNN
	1    1350 1500
	1    0    0    -1  
$EndComp
Text GLabel 1150 1300 0    50   Input ~ 0
MOSI
Text GLabel 1150 1500 0    50   Input ~ 0
RESET
Text GLabel 1150 1600 0    50   Input ~ 0
SCK
Text GLabel 1150 1700 0    50   Input ~ 0
MISO
$Comp
L power:GND #PWR0102
U 1 1 5C5515CC
P 1750 1700
F 0 "#PWR0102" H 1750 1450 50  0001 C CNN
F 1 "GND" H 1755 1527 50  0000 C CNN
F 2 "" H 1750 1700 50  0001 C CNN
F 3 "" H 1750 1700 50  0001 C CNN
	1    1750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1400 1750 1400
Wire Wire Line
	1750 1400 1750 1500
Wire Wire Line
	1650 1700 1750 1700
Connection ~ 1750 1700
Wire Wire Line
	1650 1600 1750 1600
Connection ~ 1750 1600
Wire Wire Line
	1750 1600 1750 1700
Wire Wire Line
	1650 1500 1750 1500
Connection ~ 1750 1500
Wire Wire Line
	1750 1500 1750 1600
$Comp
L power:+3.3V #PWR0103
U 1 1 5C5624B7
P 1750 1150
F 0 "#PWR0103" H 1750 1000 50  0001 C CNN
F 1 "+3.3V" H 1765 1323 50  0000 C CNN
F 2 "" H 1750 1150 50  0001 C CNN
F 3 "" H 1750 1150 50  0001 C CNN
	1    1750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1300 1750 1300
Wire Wire Line
	1750 1300 1750 1150
NoConn ~ 1150 1400
NoConn ~ 1400 1900
Wire Notes Line
	2050 2100 2050 500 
Wire Notes Line
	2050 500  650  500 
Wire Notes Line
	650  500  650  2100
Wire Notes Line
	650  2100 2050 2100
Wire Notes Line
	650  700  2050 700 
$Comp
L power:GND #PWR0105
U 1 1 5C59916E
P 3200 7300
F 0 "#PWR0105" H 3200 7050 50  0001 C CNN
F 1 "GND" H 3205 7127 50  0000 C CNN
F 2 "" H 3200 7300 50  0001 C CNN
F 3 "" H 3200 7300 50  0001 C CNN
	1    3200 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7200 3200 7300
Wire Notes Line
	2100 6350 3400 6350
Wire Notes Line
	3400 7650 2100 7650
Wire Notes Line
	2100 6550 3400 6550
Text Notes 2400 6500 0    79   ~ 0
Bateria AAA
$Comp
L Switch:SW_Push SW2
U 1 1 5C43523E
P 1700 2950
F 0 "SW2" V 1654 3098 50  0000 L CNN
F 1 "ZERO" V 1745 3098 50  0000 L CNN
F 2 "SSD1306:7914J1000E" H 1700 3150 50  0001 C CNN
F 3 "" H 1700 3150 50  0001 C CNN
	1    1700 2950
	0    1    1    0   
$EndComp
Text GLabel 6100 5800 2    50   Input ~ 0
ZERO
Wire Wire Line
	6100 5800 5800 5800
Text GLabel 1650 2550 0    50   Input ~ 0
ZERO
$Comp
L power:GND #PWR018
U 1 1 5C4415B5
P 1700 3200
F 0 "#PWR018" H 1700 2950 50  0001 C CNN
F 1 "GND" H 1705 3027 50  0000 C CNN
F 2 "" H 1700 3200 50  0001 C CNN
F 3 "" H 1700 3200 50  0001 C CNN
	1    1700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3150 1700 3200
Wire Wire Line
	1700 2550 1650 2550
Wire Wire Line
	1700 2550 1700 2700
Wire Wire Line
	1050 2550 1050 2700
$Comp
L Device:CP_Small C11
U 1 1 5C466A80
P 750 2950
F 0 "C11" H 600 3050 50  0000 C CNN
F 1 ".1uF" H 550 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 750 2950 50  0001 C CNN
F 3 "~" H 750 2950 50  0001 C CNN
	1    750  2950
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP_Small C12
U 1 1 5C46C21F
P 1450 2950
F 0 "C12" H 1300 3050 50  0000 C CNN
F 1 ".1uF" H 1250 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1450 2950 50  0001 C CNN
F 3 "~" H 1450 2950 50  0001 C CNN
	1    1450 2950
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5C46C2CD
P 1450 3200
F 0 "#PWR020" H 1450 2950 50  0001 C CNN
F 1 "GND" H 1455 3027 50  0000 C CNN
F 2 "" H 1450 3200 50  0001 C CNN
F 3 "" H 1450 3200 50  0001 C CNN
	1    1450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5C46C314
P 750 3200
F 0 "#PWR019" H 750 2950 50  0001 C CNN
F 1 "GND" H 755 3027 50  0000 C CNN
F 2 "" H 750 3200 50  0001 C CNN
F 3 "" H 750 3200 50  0001 C CNN
	1    750  3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2850 750  2700
Wire Wire Line
	750  2700 1050 2700
Connection ~ 1050 2700
Wire Wire Line
	1050 2700 1050 2750
Wire Wire Line
	750  3050 750  3200
Wire Wire Line
	1450 3050 1450 3200
Wire Wire Line
	1450 2850 1450 2700
Wire Wire Line
	1450 2700 1700 2700
Connection ~ 1700 2700
Wire Wire Line
	1700 2700 1700 2750
$Comp
L SamacSys_Parts:MCP1623T-I_CHY IC1
U 1 1 5C43F377
P 3950 1450
F 0 "IC1" H 4500 1715 50  0000 C CNN
F 1 "MCP1623T" H 4500 1624 50  0000 C CNN
F 2 "SamacSys_Parts:SOT95P270X145-6N" H 4900 1550 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MCP1623T-I_CHY.pdf" H 4900 1450 50  0001 L CNN
F 4 "Microchip MCP1623T-I/CHY, Boost Regulator 50mA Adjustable, 2  5.5 V, 630 kHz 6-Pin, SOT-23" H 4900 1350 50  0001 L CNN "Description"
F 5 "1.45" H 4900 1250 50  0001 L CNN "Height"
F 6 "579-MCP1623T-I/CHY" H 4900 1150 50  0001 L CNN "Mouser Part Number"
F 7 "Microchip" H 4900 1050 50  0001 L CNN "Manufacturer_Name"
F 8 "MCP1623T-I/CHY" H 4900 950 50  0001 L CNN "Manufacturer_Part_Number"
	1    3950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C43FC60
P 3750 1750
F 0 "#PWR0104" H 3750 1500 50  0001 C CNN
F 1 "GND" H 3755 1577 50  0000 C CNN
F 2 "" H 3750 1750 50  0001 C CNN
F 3 "" H 3750 1750 50  0001 C CNN
	1    3750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1550 3750 1550
Wire Wire Line
	3750 1550 3750 1750
$Comp
L Device:L L1
U 1 1 5C4489ED
P 4450 1000
F 0 "L1" V 4640 1000 50  0000 C CNN
F 1 "EPCOS 4,7uH" V 4549 1000 50  0000 C CNN
F 2 "SSD1306:IND-B82462G4" H 4450 1000 50  0001 C CNN
F 3 "~" H 4450 1000 50  0001 C CNN
	1    4450 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 1000 3950 1000
Wire Wire Line
	3950 1000 3950 1450
Wire Wire Line
	4600 1000 5050 1000
Wire Wire Line
	5050 1000 5050 1450
$Comp
L Device:CP_Small C13
U 1 1 5C469C6A
P 5450 1100
F 0 "C13" H 5300 1200 50  0000 C CNN
F 1 "10uF" H 5250 1100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5450 1100 50  0001 C CNN
F 3 "~" H 5450 1100 50  0001 C CNN
	1    5450 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 1650 3950 2000
Wire Wire Line
	3950 2000 5250 2000
Wire Wire Line
	5250 1450 5050 1450
Connection ~ 5050 1450
Wire Wire Line
	5450 1000 5250 1000
Wire Wire Line
	5250 1450 5250 2000
$Comp
L power:GND #PWR0106
U 1 1 5C485161
P 5450 1200
F 0 "#PWR0106" H 5450 950 50  0001 C CNN
F 1 "GND" H 5455 1027 50  0000 C CNN
F 2 "" H 5450 1200 50  0001 C CNN
F 3 "" H 5450 1200 50  0001 C CNN
	1    5450 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0107
U 1 1 5C485475
P 5250 1000
F 0 "#PWR0107" H 5250 850 50  0001 C CNN
F 1 "+BATT" H 5265 1173 50  0000 C CNN
F 2 "" H 5250 1000 50  0001 C CNN
F 3 "" H 5250 1000 50  0001 C CNN
	1    5250 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1000 5250 1450
Connection ~ 5250 1450
$Comp
L Device:CP_Small C14
U 1 1 5C4BC5C3
P 6400 1650
F 0 "C14" H 6250 1750 50  0000 C CNN
F 1 "10uF" H 6200 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6400 1650 50  0001 C CNN
F 3 "~" H 6400 1650 50  0001 C CNN
	1    6400 1650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5C4C354C
P 6400 1750
F 0 "#PWR0108" H 6400 1500 50  0001 C CNN
F 1 "GND" H 6405 1577 50  0000 C CNN
F 2 "" H 6400 1750 50  0001 C CNN
F 3 "" H 6400 1750 50  0001 C CNN
	1    6400 1750
	1    0    0    -1  
$EndComp
Connection ~ 5250 1000
$Comp
L Device:R R6
U 1 1 5C4E686C
P 5600 1700
F 0 "R6" H 5530 1654 50  0000 R CNN
F 1 "820k" H 5530 1745 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 1700 50  0001 C CNN
F 3 "~" H 5600 1700 50  0001 C CNN
	1    5600 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5C4E6ADC
P 5600 2000
F 0 "R7" H 5530 1954 50  0000 R CNN
F 1 "470k" H 5530 2045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 2000 50  0001 C CNN
F 3 "~" H 5600 2000 50  0001 C CNN
	1    5600 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 1550 5600 1550
Wire Wire Line
	6400 1550 6400 1400
Connection ~ 6400 1550
Connection ~ 5600 1550
Wire Wire Line
	5600 1550 6400 1550
Wire Wire Line
	5600 1850 5350 1850
Wire Wire Line
	5350 1850 5350 1650
Wire Wire Line
	5350 1650 5050 1650
Connection ~ 5600 1850
$Comp
L power:GND #PWR0109
U 1 1 5C518D85
P 5600 2150
F 0 "#PWR0109" H 5600 1900 50  0001 C CNN
F 1 "GND" H 5605 1977 50  0000 C CNN
F 2 "" H 5600 2150 50  0001 C CNN
F 3 "" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5C51903D
P 6400 1400
F 0 "#PWR0110" H 6400 1250 50  0001 C CNN
F 1 "+3.3V" H 6415 1573 50  0000 C CNN
F 2 "" H 6400 1400 50  0001 C CNN
F 3 "" H 6400 1400 50  0001 C CNN
	1    6400 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5C51DC65
P 2750 7200
F 0 "BT1" V 2995 7200 50  0000 C CNN
F 1 "Battery" V 2904 7200 50  0000 C CNN
F 2 "SSD1306:1021BatteryAAA" V 2750 7260 50  0001 C CNN
F 3 "~" V 2750 7260 50  0001 C CNN
	1    2750 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR021
U 1 1 5C51E0CA
P 2450 6850
F 0 "#PWR021" H 2450 6700 50  0001 C CNN
F 1 "+BATT" H 2465 7023 50  0000 C CNN
F 2 "" H 2450 6850 50  0001 C CNN
F 3 "" H 2450 6850 50  0001 C CNN
	1    2450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7200 2550 7200
Wire Wire Line
	3200 7200 2950 7200
Wire Notes Line
	2100 2500 7850 2500
Wire Notes Line
	7850 2500 7850 500 
Wire Notes Line
	7850 500  2100 500 
Wire Notes Line
	2100 500  2100 2500
Wire Notes Line
	2100 700  7850 700 
Text Notes 4150 650  0    79   ~ 0
Przetwornica DC-DC Boost 3,3V
Wire Wire Line
	1100 5900 1450 5900
$Comp
L Connector:TestPoint TP6
U 1 1 5C48A6AF
P 1100 6650
F 0 "TP6" V 1150 6950 50  0000 C CNN
F 1 "RX" V 1050 6950 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1300 6650 50  0001 C CNN
F 3 "~" H 1300 6650 50  0001 C CNN
	1    1100 6650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5C48A70D
P 1100 6900
F 0 "TP7" V 1150 7200 50  0000 C CNN
F 1 "TX" V 1050 7200 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1300 6900 50  0001 C CNN
F 3 "~" H 1300 6900 50  0001 C CNN
	1    1100 6900
	0    -1   -1   0   
$EndComp
Text GLabel 1350 6650 2    50   Input ~ 0
RX
Text GLabel 1350 6900 2    50   Input ~ 0
TX
Wire Wire Line
	1100 6650 1350 6650
Wire Wire Line
	1100 6900 1350 6900
Text GLabel 6100 5300 2    50   Input ~ 0
RX
Text GLabel 6100 5400 2    50   Input ~ 0
TX
Wire Wire Line
	5800 5300 6100 5300
Wire Wire Line
	5800 5400 6100 5400
Wire Notes Line
	2050 7650 2050 5400
Wire Notes Line
	650  5400 650  7650
Wire Wire Line
	9200 2100 9350 2100
Connection ~ 9350 2100
Wire Wire Line
	9350 2100 9350 1900
Wire Wire Line
	9200 2200 9350 2200
Connection ~ 9350 2200
Wire Wire Line
	9350 2200 9350 2100
Wire Wire Line
	9200 2400 9350 2400
Connection ~ 9350 2400
Wire Wire Line
	9350 2400 9350 2200
Wire Wire Line
	9200 2500 9250 2500
Connection ~ 9350 2500
Wire Wire Line
	9350 2500 9350 2400
Wire Wire Line
	9200 2600 9250 2600
Wire Wire Line
	9250 2600 9250 2500
Connection ~ 9250 2500
Wire Wire Line
	9250 2500 9350 2500
Text Notes 10300 2400 0    50   ~ 0
Adres\nDC--1  0x7A\nDC--0  0x78 
$Comp
L power:GND #PWR022
U 1 1 5C4E44D7
P 9350 3350
F 0 "#PWR022" H 9350 3100 50  0001 C CNN
F 1 "GND" H 9200 3300 50  0000 C CNN
F 2 "" H 9350 3350 50  0001 C CNN
F 3 "" H 9350 3350 50  0001 C CNN
	1    9350 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 3000 9350 3000
Wire Wire Line
	9350 3000 9350 3100
Wire Wire Line
	9200 3100 9350 3100
Connection ~ 9350 3100
Wire Wire Line
	9350 3100 9350 3200
Wire Wire Line
	9200 3200 9350 3200
Connection ~ 9350 3200
Wire Wire Line
	9350 3200 9350 3300
Wire Wire Line
	9200 3300 9250 3300
Wire Wire Line
	9350 3300 9350 3350
Connection ~ 9350 3300
Wire Wire Line
	9200 3400 9250 3400
Wire Wire Line
	9250 3400 9250 3300
Connection ~ 9250 3300
Wire Wire Line
	9250 3300 9350 3300
$Comp
L Poziomica-1.0-rescue:OLED-SSD1306 CON1
U 1 1 5C4123E6
P 9200 2400
F 0 "CON1" V 8650 2550 50  0000 R CNN
F 1 "SSD 1306 OLED" V 8750 2750 50  0000 R CNN
F 2 "SSD1306:SSD1306" H 8700 2250 50  0001 C CNN
F 3 "" H 8700 2250 50  0001 C CNN
	1    9200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1000 9350 1000
Wire Wire Line
	9350 1000 9350 1700
Connection ~ 9350 1700
Wire Wire Line
	9200 3900 9350 3900
Connection ~ 9350 3900
Wire Wire Line
	9350 3900 9350 4000
$Comp
L Device:D D1
U 1 1 5C54F410
P 2450 7050
F 0 "D1" V 2300 6850 50  0000 L CNN
F 1 "D" V 2400 6850 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 2450 7050 50  0001 C CNN
F 3 "~" H 2450 7050 50  0001 C CNN
	1    2450 7050
	0    1    1    0   
$EndComp
Wire Notes Line
	3400 6350 3400 7650
Wire Notes Line
	2100 6350 2100 7650
Wire Wire Line
	2450 6850 2450 6900
Wire Wire Line
	5800 4200 6100 4200
Wire Wire Line
	5800 4300 6100 4300
Wire Wire Line
	5800 4400 6100 4400
$Comp
L Device:R R8
U 1 1 5E54DB6B
P 9500 2150
F 0 "R8" H 9430 2104 50  0000 R CNN
F 1 "10k" H 9430 2195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9430 2150 50  0001 C CNN
F 3 "~" H 9500 2150 50  0001 C CNN
	1    9500 2150
	-1   0    0    1   
$EndComp
Connection ~ 9500 2000
Wire Wire Line
	9200 2300 9500 2300
$EndSCHEMATC