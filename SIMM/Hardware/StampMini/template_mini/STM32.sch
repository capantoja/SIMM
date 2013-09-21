EESchema Schematic File Version 2  date Mon 15 Apr 2013 12:23:16 AM COT
LIBS:con-jack
LIBS:adm3101e
LIBS:microsd
LIBS:transistor-npn
LIBS:ipc-7351-transistor
LIBS:switch-misc
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
LIBS:micron_ddr_512Mb
LIBS:iMX23
LIBS:sdmmc
LIBS:usbconn
LIBS:fsusb20
LIBS:r_pack2
LIBS:pasives-connectors
LIBS:EEPROM
LIBS:PWR
LIBS:m25p32
LIBS:PROpendous-cache
LIBS:w_analog
LIBS:gl850g
LIBS:srf2012
LIBS:rclamp0502b
LIBS:mcp130
LIBS:ABM8G
LIBS:usb_a
LIBS:Reset
LIBS:stm32f100vxx
LIBS:lt1117cst
LIBS:zxmhc3f381n8
LIBS:fsusb43
LIBS:usb-mini
LIBS:i.mx233stamp-cache
EELAYER 25  0
EELAYER END
$Descr User 12000 10000
encoding utf-8
Sheet 4 5
Title ""
Date "15 apr 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6700 1050
Wire Wire Line
	6700 1000 6700 1150
Wire Wire Line
	6700 1550 6700 1650
Wire Wire Line
	8150 1550 8150 1650
Wire Wire Line
	7750 1050 7750 1150
Wire Wire Line
	7000 1150 6900 1150
Wire Wire Line
	6900 1150 6900 1250
Wire Wire Line
	9950 1200 9800 1200
Wire Wire Line
	9800 1200 9800 1500
Wire Wire Line
	9800 1500 9900 1500
Wire Wire Line
	10550 1500 10400 1500
Wire Wire Line
	9900 1000 10500 1000
Wire Wire Line
	10500 1000 10500 1200
Wire Wire Line
	10500 1200 10350 1200
Wire Wire Line
	9050 1200 9200 1200
Wire Wire Line
	9200 1200 9200 1000
Wire Wire Line
	9250 1500 9100 1500
Wire Wire Line
	8600 1500 8500 1500
Wire Wire Line
	8500 1500 8500 1200
Wire Wire Line
	8500 1200 8650 1200
Wire Wire Line
	9200 1000 8750 1000
Wire Wire Line
	7750 1150 7650 1150
Wire Wire Line
	8150 1150 8150 900 
Connection ~ 7750 1150
Connection ~ 7750 1050
Wire Wire Line
	7750 1550 7750 1650
Wire Wire Line
	7650 1050 8150 1050
Connection ~ 8150 1050
Wire Wire Line
	7000 1050 6700 1050
$Comp
L VDD5V #PWR0111
U 1 1 4E7B5061
P 6700 1000
F 0 "#PWR0111" H 6700 1100 30  0001 C CNN
F 1 "VDD5V" H 6700 1100 30  0000 C CNN
	1    6700 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0112
U 1 1 4E7B4E89
P 6700 1650
F 0 "#PWR0112" H 6700 1650 30  0001 C CNN
F 1 "GND" H 6700 1580 30  0001 C CNN
	1    6700 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0113
U 1 1 4E7B4E84
P 8150 1650
F 0 "#PWR0113" H 8150 1650 30  0001 C CNN
F 1 "GND" H 8150 1580 30  0001 C CNN
	1    8150 1650
	1    0    0    -1  
$EndComp
$Comp
L C C76
U 1 1 4E7B4A85
P 8150 1350
F 0 "C76" H 8200 1450 50  0000 L CNN
F 1 "33uF" H 8200 1250 50  0000 L CNN
F 2 "SM1206" H 8150 1350 60  0001 C CNN
	1    8150 1350
	1    0    0    -1  
$EndComp
$Comp
L C C74
U 1 1 4E7B4A81
P 6700 1350
F 0 "C74" H 6750 1450 50  0000 L CNN
F 1 "33uF" H 6750 1250 50  0000 L CNN
F 2 "SM1206" H 6700 1350 60  0001 C CNN
	1    6700 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0114
U 1 1 4E7B44BE
P 7750 1650
F 0 "#PWR0114" H 7750 1650 30  0001 C CNN
F 1 "GND" H 7750 1580 30  0001 C CNN
	1    7750 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0115
U 1 1 4E7B44A2
P 6900 1250
F 0 "#PWR0115" H 6900 1250 30  0001 C CNN
F 1 "GND" H 6900 1180 30  0001 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR0116
U 1 1 4E7B4482
P 8150 900
F 0 "#PWR0116" H 8150 1000 30  0001 C CNN
F 1 "3V3" H 8150 1010 30  0000 C CNN
	1    8150 900 
	1    0    0    -1  
$EndComp
$Comp
L LT1117CST U11
U 1 1 4E7B41E9
P 7350 1250
F 0 "U11" H 7200 1550 60  0000 C CNN
F 1 "LT1117CST-3.3" H 7350 1250 40  0000 C CNN
F 2 "LT1117" H 7350 1250 60  0001 C CNN
	1    7350 1250
	1    0    0    -1  
$EndComp
$Comp
L C C75
U 1 1 4E7B41E8
P 7750 1350
F 0 "C75" H 7800 1450 50  0000 L CNN
F 1 "100n" H 7800 1250 50  0000 L CNN
F 2 "SM0603" H 7750 1350 60  0001 C CNN
	1    7750 1350
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR0122
U 1 1 4E2A2E03
P 8750 1000
F 0 "#PWR0122" H 8750 1100 30  0001 C CNN
F 1 "3V3" H 8750 1110 30  0000 C CNN
	1    8750 1000
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 4E188E50
P 10150 1500
F 0 "R33" V 10230 1500 50  0000 C CNN
F 1 "1k" V 10150 1500 50  0000 C CNN
F 2 "SM0603" H 10150 1500 60  0001 C CNN
	1    10150 1500
	0    1    1    0   
$EndComp
$Comp
L LED D9
U 1 1 4E188E4F
P 10150 1200
F 0 "D9" H 10150 1300 50  0000 C CNN
F 1 "LED" H 10150 1100 50  0000 C CNN
F 2 "SM0603" H 10150 1200 60  0001 C CNN
	1    10150 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR0124
U 1 1 4E188E4E
P 10550 1500
F 0 "#PWR0124" H 10550 1500 30  0001 C CNN
F 1 "GND" H 10550 1430 30  0001 C CNN
	1    10550 1500
	0    -1   1    0   
$EndComp
Text Label 9900 1000 0    60   ~ 0
FP16
Text Label 8850 1000 0    60   ~ 0
POWER
$Comp
L GND #PWR0125
U 1 1 4E186DEB
P 9250 1500
F 0 "#PWR0125" H 9250 1500 30  0001 C CNN
F 1 "GND" H 9250 1430 30  0001 C CNN
	1    9250 1500
	0    -1   1    0   
$EndComp
$Comp
L LED D8
U 1 1 4DCDB178
P 8850 1200
F 0 "D8" H 8850 1300 50  0000 C CNN
F 1 "LED" H 8850 1100 50  0000 C CNN
F 2 "SM0603" H 8850 1200 60  0001 C CNN
	1    8850 1200
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 4DCDB177
P 8850 1500
F 0 "R5" V 8930 1500 50  0000 C CNN
F 1 "1k" V 8850 1500 50  0000 C CNN
F 2 "SM0603" H 8850 1500 60  0001 C CNN
	1    8850 1500
	0    1    1    0   
$EndComp
Text Notes 9600 750  0    60   ~ 0
LEDS
$EndSCHEMATC
