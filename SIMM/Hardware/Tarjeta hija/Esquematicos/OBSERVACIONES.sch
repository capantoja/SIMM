EESchema Schematic File Version 2
LIBS:power
LIBS:conn3
LIBS:ESD9B33ST5G
LIBS:jack_3p
LIBS:lm2940
LIBS:MOCD213
LIBS:opto
LIBS:optocoupler
LIBS:analog_switches
LIBS:74xx
LIBS:adc-dac
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:device
LIBS:digital-audio
LIBS:display
LIBS:dsp
LIBS:gennum
LIBS:graphic
LIBS:intel
LIBS:interface
LIBS:linear
LIBS:memory
LIBS:microchip
LIBS:microchip1
LIBS:microcontrollers
LIBS:motorola
LIBS:philips
LIBS:pspice
LIBS:regul
LIBS:siliconi
LIBS:special
LIBS:SymbolsSimilarEN60617+oldDIN617
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:xilinx
LIBS:usb-mini
LIBS:logo1
LIBS:SIMM-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "SISTEMA DE INFORMACION MULTIMEDIA PARA MOTOCICLETAS"
Date "20 aug 2013"
Rev ""
Comp ""
Comment1 "AUTHOR: CESAR A. PANTOJA"
Comment2 "UNIVERSIDAD NACIONAL DE COLOMBIA"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6550 2100 0    90   ~ 0
Los valores minimos y maximos de voltaje\npara las entradas analogas y digitales son \n11Vdc hasta 15Vdc.\n\n 
Text Notes 6550 1350 0    90   ~ 0
Entrada IN6 se configura para RPM mediante R9\ny R10  dependiendo del modelo de motocicleta
Text Notes 5200 1050 2    90   ~ 0
L1, L2, L3, should be as close as\n possible to the headphone jack. \n\n\nCONEXIONES TOUCH <-----------------> CPU\n\nT_CLK ..............................GPMI_D07\nT_CS................................GPMI_D05\nT_DIN...............................LCD_VSYNC\nT_DO................................LCD_DOTCK\nT_IRQ...............................LCD_HSYNC\n\nCONEXIONES SDCARD <------------------> CPU\n\nSD_OUT..............................SSPI_DATA3\nSD_SCK..............................SSPI_SCK\nSD_DIN..............................SSPI_DATA0\nSD_CS...............................SSPI_CMD\n\nCONEXIONES GPS <---------------------> uC\n\nTXD.................................URxD0 PA9 -PIN 22-	\nRXD.................................UTxD0 PA10 -PIN 21-\n\nCONEXIONES TECLADO <-----------------> uC\n\nUP..................................PA8\nDOWN................................PA11\nENTER...............................PA12\nPAGE................................PA13\nCOMMON..............................PA14\n\nCONEXIONES ENTRADAS DIGITALES <------> uC\n\nIN_DIG1............................PA0\nIN_DIG2............................PA1\nIN_DIG3............................PA2\nIN_DIG4............................PA5\nIN_DIG5............................PA6\nIN_DIG6............................PA7  -RPM-\n\nCONEXIONES ENTRADAS ANALOGICAS <-----> uC\n\nIN_ANA1............................PA17\nIN_ANA2............................PA18\nIN_ANA3............................PA19
$EndSCHEMATC
