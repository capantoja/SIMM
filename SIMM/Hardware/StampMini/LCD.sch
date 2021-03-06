EESchema Schematic File Version 2  date lun 13 may 2013 16:04:31 COT
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESD9B33ST5G
LIBS:jack_3p
LIBS:2N7002
LIBS:rclamp0502b
LIBS:con-jack
LIBS:PCBC-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "INTERFACE LCD & TOUCHSCREEN"
Date "13 may 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_12X2 P2
U 1 1 518FBE32
P 2850 1550
F 0 "P2" H 2850 2200 60  0000 C CNN
F 1 "LCD_STAMP" V 2850 1550 50  0000 C CNN
	1    2850 1550
	1    0    0    -1  
$EndComp
Text Label 1600 1000 0    60   ~ 0
VDD5V
Text Label 1600 1100 0    60   ~ 0
LCD_DOTCK
Text Label 1600 1200 0    60   ~ 0
LCD_HSYNC
Text Label 1600 1300 0    60   ~ 0
LCD_WR
Text Label 1600 1400 0    60   ~ 0
LCD_ENABLE
Text Label 1600 1500 0    60   ~ 0
LCD_D7
Text Label 1600 1600 0    60   ~ 0
LCD_D5
Text Label 1600 1700 0    60   ~ 0
LCD_D3
Text Label 1600 1800 0    60   ~ 0
LCD_D1
Text Label 1600 1900 0    60   ~ 0
RESET_PB
Text Label 1600 2000 0    60   ~ 0
RX
Text Label 1600 2100 0    60   ~ 0
USB_DP
Text Label 4100 1000 2    60   ~ 0
GPMI_D07
Text Label 4100 1100 2    60   ~ 0
GPMI_D05
Text Label 4100 1200 2    60   ~ 0
LCD_VSYNC
Text Label 4100 1300 2    60   ~ 0
LCD_RS
Text Label 4100 1400 2    60   ~ 0
LCD_RESET
Text Label 4100 1500 2    60   ~ 0
LCD_CS
Text Label 4100 1600 2    60   ~ 0
LCD_D6
Text Label 4100 1700 2    60   ~ 0
LCD_D4
Text Label 4100 1800 2    60   ~ 0
LCD_D2
Text Label 4100 1900 2    60   ~ 0
LCD_D0
Text Label 4100 2000 2    60   ~ 0
TX
Text Label 4100 2100 2    60   ~ 0
USB_DM
$Comp
L +5V #PWR01
U 1 1 518FBE68
P 1450 850
F 0 "#PWR01" H 1450 940 20  0001 C CNN
F 1 "+5V" H 1450 940 30  0000 C CNN
	1    1450 850 
	1    0    0    -1  
$EndComp
Text GLabel 4100 2100 2    59   Input ~ 0
USB_DM
Text GLabel 1600 2100 0    59   Input ~ 0
USB_DP
$Comp
L CONN_20X2 P5
U 1 1 518FBF40
P 8400 2250
F 0 "P5" H 8400 3300 60  0000 C CNN
F 1 "LCD_MODULE" V 8400 2250 50  0000 C CNN
	1    8400 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 518FBF54
P 7300 1400
F 0 "#PWR02" H 7300 1400 30  0001 C CNN
F 1 "GND" H 7300 1330 30  0001 C CNN
	1    7300 1400
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR03
U 1 1 518FBFA1
P 9150 1000
F 0 "#PWR03" H 9150 1100 40  0001 C CNN
F 1 "3V3" H 9150 1125 40  0000 C CNN
	1    9150 1000
	1    0    0    -1  
$EndComp
NoConn ~ 8000 1400
Text Label 10200 1400 2    59   ~ 0
RS
Text Label 6600 1500 0    59   ~ 0
WR
Text Label 10200 1500 2    59   ~ 0
RD
Text Notes 2750 7100 0    118  ~ 0
NOTE:\nGPMI_D07 is used for LCD_RD\nGPMI_D05 is used for backlight control
Text Label 6600 1600 0    59   ~ 0
DB8
Text Label 10200 1600 2    59   ~ 0
DB9
Text Label 6600 1700 0    59   ~ 0
DB10
Text Label 10200 1700 2    59   ~ 0
DB11
Text Label 6600 1800 0    59   ~ 0
DB12
Text Label 10200 1800 2    59   ~ 0
DB13
Text Label 6600 1900 0    59   ~ 0
DB14
Text Label 10200 1900 2    59   ~ 0
DB15
Text Label 6600 2000 0    59   ~ 0
CS
Text Label 10200 2000 2    59   ~ 0
F_CS
Text Label 6600 2100 0    59   ~ 0
REST
NoConn ~ 8800 2100
Text Label 6600 2200 0    59   ~ 0
LED_A
NoConn ~ 8800 2200
Text Label 6600 2300 0    59   ~ 0
DB0
Text Label 10200 2300 2    59   ~ 0
DB1
Text Label 6600 2400 0    59   ~ 0
DB2
Text Label 10200 2400 2    59   ~ 0
DB3
Text Label 6600 2500 0    59   ~ 0
DB4
Text Label 10200 2500 2    59   ~ 0
DB5
Text Label 6600 2600 0    59   ~ 0
DB6
Text Label 10200 2600 2    59   ~ 0
DB7
Text Label 6600 2700 0    59   ~ 0
D_CLK
Text Label 10200 2700 2    59   ~ 0
D_CS
Text Label 6600 2800 0    59   ~ 0
D_IN
Text Label 10200 2800 2    59   ~ 0
D_BUSY
Text Label 6600 2900 0    59   ~ 0
D_OUT
Text Label 10200 2900 2    59   ~ 0
D_Penirq
Text Label 6600 3000 0    59   ~ 0
SD_OUT (F_SO)
Text Label 10200 3000 2    59   ~ 0
SD_SCK(F_SCK)
Text Label 6600 3100 0    59   ~ 0
SD_DIN(F_SI)
Text Label 10200 3100 2    59   ~ 0
SD_CS
Text Label 6600 3200 0    59   ~ 0
F_WP
Text Label 10200 3200 2    59   ~ 0
F_HOLD
Text Label 3450 2900 2    59   ~ 0
DB1
Text Label 3450 3050 2    59   ~ 0
DB2
Text Label 3450 3200 2    59   ~ 0
DB3
Text Label 3450 3350 2    59   ~ 0
DB4
Text Label 3450 3500 2    59   ~ 0
DB5
Text Label 3450 3650 2    59   ~ 0
DB6
Text Label 3450 3800 2    59   ~ 0
DB7
Text Label 3450 3950 2    59   ~ 0
DB8
Text Label 1300 2900 0    59   ~ 0
LCD_D0
Text Label 1300 3050 0    59   ~ 0
LCD_D1
Text Label 1300 3200 0    59   ~ 0
LCD_D2
Text Label 1300 3350 0    59   ~ 0
LCD_D3
Text Label 1300 3500 0    59   ~ 0
LCD_D4
Text Label 1300 3650 0    59   ~ 0
LCD_D5
Text Label 1300 3800 0    59   ~ 0
LCD_D6
Text Label 1300 3950 0    59   ~ 0
LCD_D7
Text Label 3450 4100 2    59   ~ 0
CS
Text Label 1300 4250 0    59   ~ 0
LCD_RS
Text Label 3450 4250 2    59   ~ 0
RS
Text Label 1300 4400 0    59   ~ 0
LCD_WR
Text Label 3450 4400 2    59   ~ 0
WR
Text Label 1300 4700 0    59   ~ 0
LCD_RESET
Text Label 1300 4100 0    59   ~ 0
LCD_ENABLE
Text Label 3450 4700 2    59   ~ 0
REST
$Comp
L 2N7002 Q1
U 1 1 518FCFB5
P 2800 5600
F 0 "Q1" H 2800 5451 40  0000 R CNN
F 1 "2N7002" H 2800 5750 40  0000 R CNN
	1    2800 5600
	0    1    -1   0   
$EndComp
Text Label 3550 5500 2    59   ~ 0
LED_A
$Comp
L 3V3 #PWR04
U 1 1 518FD12B
P 1950 5350
F 0 "#PWR04" H 1950 5450 40  0001 C CNN
F 1 "3V3" H 1950 5475 40  0000 C CNN
	1    1950 5350
	1    0    0    -1  
$EndComp
Text Label 2150 6250 0    59   ~ 0
GPMI_D05
Text Label 9400 3750 2    59   ~ 0
D_CLK
Text Label 9400 3900 2    59   ~ 0
D_CS
Text Label 9400 4050 2    59   ~ 0
D_DIN
Text Label 9400 4200 2    59   ~ 0
D_BUSY
Text Label 9400 4350 2    59   ~ 0
D_OUT
Text Label 9400 4500 2    59   ~ 0
D_Penirq
Text GLabel 7450 3750 0    59   Input ~ 0
PA0
Text GLabel 7450 3900 0    59   Input ~ 0
PA1
Text GLabel 7450 4050 0    59   Input ~ 0
PA2
Text GLabel 7450 4200 0    59   Input ~ 0
PA5
Text GLabel 7450 4350 0    59   Input ~ 0
PA6
Text GLabel 7450 4500 0    59   Input ~ 0
PA7
Text Label 9400 5350 2    59   ~ 0
SD_CS
Text Label 9400 5500 2    59   ~ 0
SD_DIN(F_SI)
Text Label 9400 5650 2    59   ~ 0
SD_SCK(F_SCK)
Text Label 9400 5800 2    59   ~ 0
SD_OUT (F_SO)
Text Label 9400 6100 2    59   ~ 0
F_HOLD
Text Label 9400 5950 2    59   ~ 0
F_WP
Text Label 9400 6250 2    59   ~ 0
F_CS
Text Label 3450 4550 2    59   ~ 0
RD
Text Label 1300 4550 0    59   ~ 0
GPMI_D07
Wire Wire Line
	4100 2100 3250 2100
Wire Wire Line
	3250 2000 4100 2000
Wire Wire Line
	4100 1900 3250 1900
Wire Wire Line
	3250 1800 4100 1800
Wire Wire Line
	4100 1700 3250 1700
Wire Wire Line
	3250 1600 4100 1600
Wire Wire Line
	4100 1500 3250 1500
Wire Wire Line
	3250 1400 4100 1400
Wire Wire Line
	4100 1300 3250 1300
Wire Wire Line
	3250 1200 4100 1200
Wire Wire Line
	4100 1100 3250 1100
Wire Wire Line
	3250 1000 4100 1000
Wire Wire Line
	2450 2100 1600 2100
Wire Wire Line
	1600 2000 2450 2000
Wire Wire Line
	2450 1900 1600 1900
Wire Wire Line
	1600 1800 2450 1800
Wire Wire Line
	2450 1700 1600 1700
Wire Wire Line
	1600 1600 2450 1600
Wire Wire Line
	2450 1500 1600 1500
Wire Wire Line
	1600 1400 2450 1400
Wire Wire Line
	2450 1300 1600 1300
Wire Wire Line
	1600 1200 2450 1200
Wire Wire Line
	2450 1100 1600 1100
Wire Wire Line
	1450 1000 2450 1000
Wire Wire Line
	1450 850  1450 1000
Wire Wire Line
	7300 1300 8000 1300
Wire Wire Line
	8800 1300 9150 1300
Wire Wire Line
	9150 1300 9150 1000
Wire Wire Line
	8800 1400 10200 1400
Wire Wire Line
	6600 1500 8000 1500
Wire Wire Line
	8800 1500 10200 1500
Wire Wire Line
	8800 1600 10200 1600
Wire Wire Line
	8800 1700 10200 1700
Wire Wire Line
	8800 1800 10200 1800
Wire Wire Line
	8800 1900 10200 1900
Wire Wire Line
	8800 2000 10200 2000
Wire Wire Line
	8800 2300 10200 2300
Wire Wire Line
	8800 2400 10200 2400
Wire Wire Line
	8800 2500 10200 2500
Wire Wire Line
	8800 2600 10200 2600
Wire Wire Line
	8800 2700 10200 2700
Wire Wire Line
	8800 2800 10200 2800
Wire Wire Line
	8800 2900 10200 2900
Wire Wire Line
	8800 3000 10200 3000
Wire Wire Line
	8800 3100 10200 3100
Wire Wire Line
	8800 3200 10200 3200
Wire Wire Line
	6600 1600 8000 1600
Wire Wire Line
	6600 1700 8000 1700
Wire Wire Line
	6600 1800 8000 1800
Wire Wire Line
	6600 1900 8000 1900
Wire Wire Line
	6600 2000 8000 2000
Wire Wire Line
	6600 2100 8000 2100
Wire Wire Line
	6600 2200 8000 2200
Wire Wire Line
	6600 2300 8000 2300
Wire Wire Line
	6600 2400 8000 2400
Wire Wire Line
	6600 2500 8000 2500
Wire Wire Line
	6600 2600 8000 2600
Wire Wire Line
	6600 2700 8000 2700
Wire Wire Line
	6600 2800 8000 2800
Wire Wire Line
	6600 2900 8000 2900
Wire Wire Line
	6600 3000 8000 3000
Wire Wire Line
	6600 3100 8000 3100
Wire Wire Line
	6600 3200 8000 3200
Wire Wire Line
	7300 1300 7300 1400
Wire Wire Line
	1300 2900 3450 2900
Wire Wire Line
	1300 3050 3450 3050
Wire Wire Line
	1300 3200 3450 3200
Wire Wire Line
	1300 3350 3450 3350
Wire Wire Line
	1300 3500 3450 3500
Wire Wire Line
	1300 3650 3450 3650
Wire Wire Line
	1300 3800 3450 3800
Wire Wire Line
	1300 3950 3450 3950
Wire Wire Line
	1300 4100 3450 4100
Wire Wire Line
	1300 4250 3450 4250
Wire Wire Line
	1300 4400 3450 4400
Wire Wire Line
	1300 4550 3450 4550
Wire Wire Line
	1300 4700 3450 4700
Wire Wire Line
	3000 5500 3550 5500
Wire Wire Line
	1950 5500 2600 5500
Wire Wire Line
	2750 5800 2750 6250
Wire Wire Line
	2750 6250 2150 6250
Wire Wire Line
	1950 5350 1950 5500
Wire Wire Line
	7450 3750 9400 3750
Wire Wire Line
	7450 3900 9400 3900
Wire Wire Line
	7450 4050 9400 4050
Wire Wire Line
	7450 4200 9400 4200
Wire Wire Line
	7450 4350 9400 4350
Wire Wire Line
	7450 4500 9400 4500
Wire Wire Line
	7450 5350 9400 5350
Wire Wire Line
	7450 5500 9400 5500
Wire Wire Line
	7450 5650 9400 5650
Wire Wire Line
	7450 5800 9400 5800
Wire Wire Line
	7450 5950 9400 5950
Wire Wire Line
	7450 6100 9400 6100
Wire Wire Line
	7450 6250 9400 6250
$Comp
L SW_PUSH_SMALL SW1
U 1 1 518FE8FD
P 1200 7400
F 0 "SW1" H 1350 7510 30  0000 C CNN
F 1 "RESET" H 1200 7321 30  0000 C CNN
	1    1200 7400
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR05
U 1 1 518FE90C
P 1100 7100
F 0 "#PWR05" H 1100 7200 40  0001 C CNN
F 1 "3V3" H 1100 7225 40  0000 C CNN
	1    1100 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7500 1650 7500
Wire Wire Line
	1100 7100 1100 7300
Text Label 1650 7500 0    59   ~ 0
RESET_PB
Text GLabel 7450 5350 0    59   Input ~ 0
PA8
Text GLabel 7450 5500 0    59   Input ~ 0
PA9
Text GLabel 7450 5650 0    59   Input ~ 0
PA10
Text GLabel 7450 5800 0    59   Input ~ 0
PA11
Text GLabel 7450 5950 0    59   Input ~ 0
PA12
Text GLabel 7450 6100 0    59   Input ~ 0
PA13
Text GLabel 7450 6250 0    59   Input ~ 0
PA14
Text Notes 9550 5800 0    118  ~ 0
SD/FLASH
Text Notes 9550 4150 0    118  ~ 0
TOUCHSCREEN\n
Wire Notes Line
	750  5050 3750 5050
Wire Notes Line
	3750 5050 3750 6500
Wire Notes Line
	3750 6500 750  6500
Wire Notes Line
	750  6500 750  5050
Wire Notes Line
	750  6800 2300 6800
Wire Notes Line
	2300 6800 2300 7650
Wire Notes Line
	2300 7650 750  7650
Wire Notes Line
	750  7650 750  6800
Text Notes 1600 7050 0    59   ~ 0
RESET\n
Text Notes 1050 5500 0    59   ~ 0
BACKLIGHT\n
Wire Notes Line
	6800 3500 10900 3500
Wire Notes Line
	10900 3500 10900 4750
Wire Notes Line
	10900 4750 6800 4750
Wire Notes Line
	6800 4750 6800 3500
Wire Notes Line
	6800 5200 10900 5200
Wire Notes Line
	10900 5200 10900 6400
Wire Notes Line
	10900 6400 6800 6400
Wire Notes Line
	6800 6400 6800 5200
Text Notes 1950 2750 0    59   ~ 0
LCD DATA & CONTROL
Wire Notes Line
	1050 2600 3750 2600
Wire Notes Line
	3750 2600 3750 4850
Wire Notes Line
	3750 4850 1050 4850
Wire Notes Line
	1050 4850 1050 2600
Wire Wire Line
	4500 3250 5950 3250
Wire Wire Line
	4500 3400 5950 3400
$Comp
L JUMPER JP4
U 1 1 51913B40
P 5250 2950
F 0 "JP4" H 5250 3100 60  0000 C CNN
F 1 "JUMPER" H 5250 2870 40  0000 C CNN
	1    5250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5950 2950
Wire Wire Line
	4950 2950 4500 2950
Text Label 5900 2950 2    59   ~ 0
I2C_SCL
Text Label 4500 2950 0    59   ~ 0
I2C_SDA
Text Label 4500 3400 0    59   ~ 0
I2C_SCL
Text Label 4500 3250 0    59   ~ 0
I2C_SDA
Text Label 5950 3250 2    59   ~ 0
LCD_HSYNC
Text Label 5950 3400 2    59   ~ 0
LCD_ENABLE
Text Notes 4800 3650 0    59   ~ 0
I2C PORT OPTIONAL
Wire Notes Line
	4100 2600 6350 2600
Wire Notes Line
	6350 2600 6350 3700
Wire Notes Line
	6350 3700 4100 3700
Wire Notes Line
	4100 3700 4100 2600
$EndSCHEMATC
