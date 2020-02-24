# AVR-protractor
ATMega8 based protractor with SSD1306 OLED and LIS3DH accelerometer.

Schematic and PCB made in KiCAD. Firmware project created in Atmel Studio 7. Makefile available.

Known issue - ISP header is flipped, don't try to connect it to AVRISP with kanda ribbon cable, it's gonna make a short.

Firmware is working, but some extra features are still WIP (@TODO in main.c)

Display driver made by @tibounise (https://github.com/tibounise/SSD1306-AVR) slightly modified by me to save RAM for framebuffer.

![3d front](https://i.imgur.com/3AsYZgu.png?1)

![3d PCB](https://i.imgur.com/TRDBjdy.png)
