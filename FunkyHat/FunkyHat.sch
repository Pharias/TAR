EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "Raspberry Pi HAT - FunkyHat"
Date "2021-01-29"
Rev "A"
Comp "it.schule-stuttgart"
Comment1 "TAR-FKMS-2020/21"
Comment2 "Felix Kuschel & Manuel Starz"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5834BC4A
P 1100 9750
F 0 "H1" H 950 9850 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1100 9600 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1000 9750 60  0001 C CNN
F 3 "" H 1000 9750 60  0001 C CNN
	1    1100 9750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5834BCDF
P 2100 9750
F 0 "H2" H 1950 9850 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2100 9600 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2000 9750 60  0001 C CNN
F 3 "" H 2000 9750 60  0001 C CNN
	1    2100 9750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5834BD62
P 1100 10300
F 0 "H3" H 950 10400 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1100 10150 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1000 10300 60  0001 C CNN
F 3 "" H 1000 10300 60  0001 C CNN
	1    1100 10300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5834BDED
P 2150 10300
F 0 "H4" H 2000 10400 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2150 10150 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2050 10300 60  0001 C CNN
F 3 "" H 2050 10300 60  0001 C CNN
	1    2150 10300
	1    0    0    -1  
$EndComp
Text Label 3600 8600 2    39   ~ 0
P3V3
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J6
U 1 1 58E13683
P 5700 1550
F 0 "J6" H 5700 1700 50  0000 C CNN
F 1 "CONN_02X02" H 5700 1400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 5700 350 50  0001 C CNN
F 3 "" H 5700 350 50  0000 C CNN
	1    5700 1550
	1    0    0    -1  
$EndComp
Text Label 4900 1550 0    60   ~ 0
P3V3
Text Label 4900 1650 0    60   ~ 0
P5V
Wire Wire Line
	4900 1550 5400 1550
Wire Wire Line
	4900 1650 5400 1650
Text Label 6600 1550 2    60   ~ 0
P3V3_HAT
Text Label 6600 1650 2    60   ~ 0
P5V_HAT
Wire Wire Line
	6000 1550 6050 1550
Wire Wire Line
	6000 1650 6050 1650
Text Notes 4700 900  0    79   ~ 16
FLEXIBLE POWER SELECTION
$Comp
L Device:R R6
U 1 1 58E17715
P 2800 8600
F 0 "R6" V 2880 8600 50  0000 C CNN
F 1 "3.9K" V 2800 8600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2730 8600 50  0001 C CNN
F 3 "" H 2800 8600 50  0001 C CNN
	1    2800 8600
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 58E17720
P 2800 8850
F 0 "R8" V 2880 8850 50  0000 C CNN
F 1 "3.9K" V 2800 8850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2730 8850 50  0001 C CNN
F 3 "" H 2800 8850 50  0001 C CNN
	1    2800 8850
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 8600 2600 8600
Wire Wire Line
	1700 8850 2600 8850
Wire Wire Line
	2600 8700 1700 8700
Wire Wire Line
	2600 8950 1700 8950
Wire Wire Line
	2600 8950 2600 8850
Connection ~ 2600 8850
Wire Wire Line
	2600 8700 2600 8600
Connection ~ 2600 8600
Wire Wire Line
	2950 8600 3150 8600
Wire Wire Line
	3150 8850 2950 8850
Connection ~ 3150 8600
Text Label 1700 8600 0    39   ~ 0
ID_SD_EEPROM_pu
Text Label 1700 8700 0    39   ~ 0
ID_SD_EEPROM
Text Label 1700 8850 0    39   ~ 0
ID_SC_EEPROM_pu
Text Label 1700 8950 0    39   ~ 0
ID_SC_EEPROM
$Comp
L Device:R R7
U 1 1 58E22085
P 5750 1250
F 0 "R7" V 5830 1250 50  0000 C CNN
F 1 "DNP" V 5750 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 5680 1250 50  0001 C CNN
F 3 "" H 5750 1250 50  0001 C CNN
	1    5750 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 58E2218F
P 5750 1900
F 0 "R9" V 5830 1900 50  0000 C CNN
F 1 "DNP" V 5750 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 5680 1900 50  0001 C CNN
F 3 "" H 5750 1900 50  0001 C CNN
	1    5750 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 1650 5400 1900
Wire Wire Line
	5400 1900 5600 1900
Connection ~ 5400 1650
Wire Wire Line
	5900 1900 6050 1900
Wire Wire Line
	6050 1900 6050 1650
Connection ~ 6050 1650
Wire Wire Line
	6050 1550 6050 1250
Wire Wire Line
	6050 1250 5900 1250
Connection ~ 6050 1550
Wire Wire Line
	5600 1250 5400 1250
Wire Wire Line
	5400 1250 5400 1550
Connection ~ 5400 1550
Text Notes 500  8400 0    79   ~ 16
Pullup Resistors
Text Notes 500  9500 0    79   ~ 16
Mounting Holes
Wire Wire Line
	3150 8850 3150 8600
Text Notes 8750 2100 0    39   ~ 0
HAT spec indicates to NEVER\npower the 3.3V pins on the Raspberry Pi \nfrom the HAT header. Only connect the 3.3V\npower from the Pi if the HAT does not have\n3.3V on board.\n\nIF you are designing a board that could\neither be powered by the Pi or from the HAT\nthe jumpers here can be used.\n\nIn most cases, either design the HAT \nto provide the 5V to the Pi and use the\nprotection circuit above OR power the\nHAT from the Pi and directly connect\nthe P3V3 and P5V to the P3V3_HAT and P5V_HAT\npins.
Text Notes 500  700  0    59   ~ 0
This is based on the official Raspberry Pi spec to be able to call an extension board a HAT.\nhttps://github.com/raspberrypi/hats/blob/master/designguide.md
Wire Wire Line
	2600 8850 2650 8850
Wire Wire Line
	2600 8600 2650 8600
Wire Wire Line
	3150 8600 3600 8600
Wire Wire Line
	5400 1650 5500 1650
Wire Wire Line
	6050 1650 6600 1650
Wire Wire Line
	6050 1550 6600 1550
Wire Wire Line
	5400 1550 5500 1550
Wire Notes Line
	500  3200 500  950 
Wire Notes Line
	500  5700 500  3350
Wire Notes Line
	500  8250 500  5900
Wire Notes Line
	4600 8250 500  8250
Wire Notes Line
	4600 5900 4600 8250
Wire Notes Line
	500  5900 4600 5900
Text GLabel 3400 6200 2    50   Input ~ 0
5V_HAT
Wire Wire Line
	2800 7550 2800 7750
Wire Wire Line
	2800 7750 1200 7750
Wire Wire Line
	2000 7600 1200 7600
Text GLabel 1200 7750 0    50   Input ~ 0
GND_GPIO_3
Text GLabel 1200 7600 0    50   Input ~ 0
GND_GPIO_2
Wire Wire Line
	1200 6200 2000 6200
Text GLabel 1200 6200 0    50   Input ~ 0
5V_GPIO_1
Text GLabel 3800 4400 2    50   Input ~ 0
ID_SD_EEPROM_PU
Wire Wire Line
	3150 4400 3800 4400
Wire Wire Line
	3800 4300 3150 4300
Text GLabel 3800 4300 2    50   Input ~ 0
ID_SC_EEPROM_PU
Wire Wire Line
	2100 4900 1150 4900
Wire Wire Line
	1600 5200 2650 5200
Connection ~ 1600 5200
Wire Wire Line
	1600 4450 1600 5200
Wire Wire Line
	2650 4600 2650 5200
Wire Wire Line
	1150 5200 1600 5200
Wire Wire Line
	1150 3700 2650 3700
Wire Wire Line
	1600 4000 1600 4450
Text GLabel 1150 5200 0    50   Input ~ 0
GND_GPIO_1
Text GLabel 1150 4900 0    50   Input ~ 0
3.3V_EEPROM
Wire Notes Line
	4600 5700 500  5700
Wire Notes Line
	500  3350 4600 3350
Wire Notes Line
	500  950  4600 950 
Wire Notes Line
	4600 3200 500  3200
Wire Notes Line
	4600 950  4600 3200
Text GLabel 3750 3050 2    50   Input ~ 0
PCM_DOUT
Text GLabel 3750 2950 2    50   Input ~ 0
PCM_DIN
Text GLabel 3750 2850 2    50   Input ~ 0
GPIO_16
Text GLabel 3750 2650 2    50   Input ~ 0
PWM_0
Text GLabel 3750 2350 2    50   Input ~ 0
SPI0_CE1
Text GLabel 3750 2250 2    50   Input ~ 0
SPI0_CE0
Text GLabel 3750 2150 2    50   Input ~ 0
GPIO_25
Text GLabel 3750 1950 2    50   Input ~ 0
GPIO_24
Text GLabel 3750 1850 2    50   Input ~ 0
GPIO_23
Text GLabel 3750 1650 2    50   Input ~ 0
PCM_CLK
Text GLabel 3750 1550 2    50   Input ~ 0
UART_RX
Text GLabel 3750 1450 2    50   Input ~ 0
UART_TX
Text GLabel 3750 2450 2    50   Input ~ 0
ID_SC_EEPROM_GPIO
Text GLabel 3750 2750 2    50   Input ~ 0
GND_GPIO_8
Text GLabel 3750 2550 2    50   Input ~ 0
GND_GPIO_7
Text GLabel 3750 2050 2    50   Input ~ 0
GND_GPIO_6
Text GLabel 3750 1750 2    50   Input ~ 0
GND_GPIO_5
Text GLabel 3750 1350 2    50   Input ~ 0
GND_GPIO_4
Text GLabel 3750 1250 2    50   Input ~ 0
5V_GPIO_2
Wire Wire Line
	3100 3050 3750 3050
Wire Wire Line
	3100 2950 3750 2950
Wire Wire Line
	3100 2850 3750 2850
Wire Wire Line
	3100 2750 3750 2750
Wire Wire Line
	3100 2650 3750 2650
Wire Wire Line
	3100 2550 3750 2550
Wire Wire Line
	3100 2450 3750 2450
Wire Wire Line
	3100 2350 3750 2350
Wire Wire Line
	3100 2250 3750 2250
Wire Wire Line
	3100 2150 3750 2150
Wire Wire Line
	3100 2050 3750 2050
Wire Wire Line
	3100 1950 3750 1950
Wire Wire Line
	3100 1850 3750 1850
Wire Wire Line
	3100 1750 3750 1750
Wire Wire Line
	3100 1650 3750 1650
Wire Wire Line
	3100 1550 3750 1550
Wire Wire Line
	3100 1450 3750 1450
Wire Wire Line
	3750 1350 3100 1350
Wire Wire Line
	3750 1250 3100 1250
Text Label 3750 1250 2    39   ~ 0
P5V_HAT
Wire Wire Line
	3750 1150 3100 1150
Text GLabel 3750 1150 2    50   Input ~ 0
5V_GPIO_1
Wire Wire Line
	1900 2950 1350 2950
Wire Wire Line
	1900 2850 1350 2850
Wire Wire Line
	1900 2750 1350 2750
Text GLabel 1350 2950 0    50   Input ~ 0
GPIO_26
Text GLabel 1350 2850 0    50   Input ~ 0
PCM_FS
Text GLabel 1350 2750 0    50   Input ~ 0
PWM_1
Wire Wire Line
	1900 2250 1350 2250
Wire Wire Line
	1900 2150 1350 2150
Wire Wire Line
	1900 2050 1350 2050
Text GLabel 1350 2250 0    50   Input ~ 0
SPI0_SCLK
Text GLabel 1350 2150 0    50   Input ~ 0
SPI0_MISO
Text GLabel 1350 2050 0    50   Input ~ 0
SPI0_MOSI
Wire Wire Line
	1900 1850 1350 1850
Wire Wire Line
	1900 1750 1350 1750
Wire Wire Line
	1900 1650 1350 1650
Text GLabel 1350 1850 0    50   Input ~ 0
GPIO_22
Text GLabel 1350 1750 0    50   Input ~ 0
GPIO_27
Text GLabel 1350 1650 0    50   Input ~ 0
GPIO_17
Text Label 1350 1350 0    39   ~ 0
I2C1_SCL
Text GLabel 1350 1350 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	1900 1350 1350 1350
Text Label 1350 1250 0    39   ~ 0
I2C1_SDA
Text GLabel 1350 1250 0    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	1900 1250 1350 1250
Text Label 1350 1950 0    39   ~ 0
P3V3_HAT
Wire Wire Line
	1350 1950 1900 1950
Text GLabel 1350 1950 0    50   Input ~ 0
3.3V_GPIO_2
Text Label 1350 2650 0    39   ~ 0
Clock_2
Text Label 1350 2550 0    39   ~ 0
Clock_1
Wire Wire Line
	1900 2650 1350 2650
Wire Wire Line
	1900 2550 1350 2550
Text GLabel 1350 2650 0    50   Input ~ 0
GPIO_CLK2
Text GLabel 1350 2550 0    50   Input ~ 0
GPIO_CLK1
Wire Wire Line
	1900 3050 1350 3050
Text GLabel 1350 2450 0    50   Input ~ 0
ID_SD_EEPROM_GPIO
Wire Wire Line
	1900 2450 1350 2450
Wire Wire Line
	1900 2350 1350 2350
Wire Wire Line
	1900 1450 1350 1450
Text Label 1350 1450 0    39   ~ 0
Clock_0
Text GLabel 1350 1450 0    50   Input ~ 0
GPIO_CLK0
Wire Wire Line
	1900 1550 1350 1550
Wire Wire Line
	1350 1150 1900 1150
Text GLabel 1350 3050 0    50   Input ~ 0
GND_GPIO_3
Text GLabel 1350 2350 0    50   Input ~ 0
GND_GPIO_2
Text GLabel 1350 1550 0    50   Input ~ 0
GND_GPIO_1
$Comp
L raspberrypi_hat:CAT24C32 U2
U 1 1 58E1713F
P 2650 4200
F 0 "U2" H 3000 4550 39  0000 C CNN
F 1 "CAT24C32" H 2400 4550 39  0000 C CNN
F 2 "Package_SOIC:SOIC-8_3.9x4.9mm_P1.27mm" H 2650 4200 50  0001 C CNN
F 3 "" H 2650 4200 50  0000 C CNN
	1    2650 4200
	1    0    0    -1  
$EndComp
Text GLabel 1150 3700 0    50   Input ~ 0
3.3V_GPIO_1
Text GLabel 1350 1150 0    50   Input ~ 0
3.3V_GPIO_1
Wire Wire Line
	1600 4450 1700 4450
Wire Wire Line
	2100 4400 2100 4450
Wire Wire Line
	2100 4400 2150 4400
Wire Wire Line
	1850 4000 2150 4000
Wire Wire Line
	1850 4100 1850 4200
Wire Wire Line
	2800 6200 3400 6200
Wire Wire Line
	2000 6200 2150 6200
Wire Wire Line
	2300 7150 2500 7150
Wire Wire Line
	2000 7150 2000 7250
Wire Wire Line
	2800 7100 2800 7250
Wire Wire Line
	1500 4350 2100 4350
Connection ~ 1600 4450
Wire Wire Line
	1500 4450 1600 4450
Connection ~ 2100 4400
Wire Wire Line
	2000 4400 2000 4450
Connection ~ 1850 4000
Wire Wire Line
	2100 4350 2100 4400
Wire Wire Line
	2000 4400 2100 4400
Wire Wire Line
	2100 4900 2100 4750
Text Label 2100 4900 2    39   ~ 0
P3V3
Text Notes 3300 5450 0    39   ~ 0
The HAT spec requires this EEPROM \nwith system information to be in place \nin order to be called a HAT. It should be \nset up as write protected (WP pin held \nhigh), so it may be desirable to either \nput a jumper as shown to enable writing, \nor to hook up a spare IO pin to do so.
Text Label 3750 1150 2    39   ~ 0
P5V_HAT
Text Label 3750 1350 2    39   ~ 0
GND
Text Label 3750 2750 2    39   ~ 0
GND
Text Label 3750 2450 2    39   ~ 0
ID_SC_EEPROM
Text Label 3750 2550 2    39   ~ 0
GND
Text Label 3750 2050 2    39   ~ 0
GND
Text Label 3750 1750 2    39   ~ 0
GND
Text Label 1350 1150 0    39   ~ 0
P3V3_HAT
Text Label 1350 1550 0    39   ~ 0
GND
Text Label 1350 2350 0    39   ~ 0
GND
Text Label 1350 2450 0    39   ~ 0
ID_SD_EEPROM
Text Label 1350 3050 0    39   ~ 0
GND
Text Notes 500  950  0    79   ~ 16
40-Pin HAT Connector
Text Notes 500  3350 0    79   ~ 16
HAT EEPROM
$Comp
L Device:R R11
U 1 1 58E22900
P 1850 4450
F 0 "R11" V 1930 4450 50  0000 C CNN
F 1 "DNP" V 1850 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 1780 4450 50  0001 C CNN
F 3 "" H 1850 4450 50  0001 C CNN
	1    1850 4450
	0    1    1    0   
$EndComp
Text Notes 3300 5600 0    60   ~ 0
EEPROM WRITE ENABLE
Wire Wire Line
	1850 4200 2150 4200
Connection ~ 1850 4100
Wire Wire Line
	2150 4100 1850 4100
Wire Wire Line
	1600 4000 1850 4000
Wire Wire Line
	1850 4000 1850 4100
Wire Wire Line
	2650 3700 2650 3800
Text Label 2650 3700 2    39   ~ 0
P3V3
$Comp
L Device:R R29
U 1 1 58E19E51
P 2100 4600
F 0 "R29" V 2180 4600 50  0000 C CNN
F 1 "10K" V 2100 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2030 4600 50  0001 C CNN
F 3 "" H 2100 4600 50  0001 C CNN
	1    2100 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 58E18D32
P 1300 4450
F 0 "J9" H 1300 4600 50  0000 C CNN
F 1 "CONN_01X02" V 1400 4450 39  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1300 4450 50  0001 C CNN
F 3 "" H 1300 4450 50  0000 C CNN
	1    1300 4450
	-1   0    0    1   
$EndComp
Text Label 3800 4300 2    39   ~ 0
ID_SC_EEPROM_pu
Text Label 3800 4400 2    39   ~ 0
ID_SD_EEPROM_pu
Connection ~ 2800 6200
Wire Wire Line
	2800 6600 2800 6200
Connection ~ 2000 6200
Wire Wire Line
	2000 6600 2000 6200
Connection ~ 2300 7150
Wire Wire Line
	2500 7150 2500 6800
Connection ~ 2000 7150
Wire Wire Line
	2000 7150 2300 7150
Wire Wire Line
	2300 6800 2300 7150
Wire Wire Line
	2000 7000 2000 7150
Connection ~ 2800 7100
Wire Wire Line
	2400 7100 2800 7100
Wire Wire Line
	2400 6450 2400 7100
Wire Wire Line
	2800 7000 2800 7100
Wire Wire Line
	2000 7600 2000 7550
$Comp
L Device:R R24
U 1 1 58E158A1
P 2800 7400
F 0 "R24" V 2880 7400 50  0000 C CNN
F 1 "47K" V 2800 7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2730 7400 50  0001 C CNN
F 3 "" H 2800 7400 50  0001 C CNN
	1    2800 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 58E15896
P 2000 7400
F 0 "R23" V 2080 7400 50  0000 C CNN
F 1 "10K" V 2000 7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 1930 7400 50  0001 C CNN
F 3 "" H 2000 7400 50  0001 C CNN
	1    2000 7400
	1    0    0    -1  
$EndComp
$Comp
L raspberrypi_hat:DMMT5401 Q2
U 2 1 58E153D6
P 2700 6800
F 0 "Q2" H 2900 6875 39  0000 L CNN
F 1 "DMMT5401" H 2900 6800 39  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2900 6725 39  0000 L CIN
F 3 "" H 2700 6800 50  0000 L CNN
	2    2700 6800
	1    0    0    1   
$EndComp
$Comp
L raspberrypi_hat:DMMT5401 Q2
U 1 1 58E1538B
P 2100 6800
F 0 "Q2" H 2300 6875 50  0000 L CNN
F 1 "DMMT5401" H 2300 6800 39  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2300 6725 39  0000 L CIN
F 3 "" H 2100 6800 50  0000 L CNN
	1    2100 6800
	-1   0    0    1   
$EndComp
$Comp
L raspberrypi_hat:DMG2305UX Q1
U 1 1 58E14EB1
P 2400 6200
F 0 "Q1" V 2550 6350 39  0000 R CNN
F 1 "DMG2305UX" V 2550 6150 39  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2600 6300 50  0001 C CNN
F 3 "" H 2400 6200 50  0000 C CNN
	1    2400 6200
	0    -1   -1   0   
$EndComp
Text Notes 1050 8200 0    39   ~ 0
This is the recommended 5V rail protection \nfor a HAT with power going to the Pi. See \nhttps://github.com/raspberrypi/hats/blob/master/designguide.md#back-powering-the-pi-via-the-j8-gpio-header
Text Notes 500  5850 0    79   ~ 16
5V Powered HAT Protection
Text Label 1550 6200 0    39   ~ 0
P5V
Wire Wire Line
	2650 6200 2800 6200
Text Label 3400 6200 2    39   ~ 0
P5V_HAT
$Comp
L raspberrypi_hat:OX40HAT J3
U 1 1 58DFC771
P 2500 1150
F 0 "J3" H 2850 1250 50  0000 C CNN
F 1 "40HAT" H 2200 1250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2500 1350 50  0001 C CNN
F 3 "" H 1800 1150 50  0000 C CNN
	1    2500 1150
	1    0    0    -1  
$EndComp
Text Notes 2650 9300 0    39   ~ 0
These are just pullup resistors for the I2C bus on the EEPROM.\nThe resistor values are per the HAT spec.
Text GLabel 1700 8600 0    50   Input ~ 0
ID_SD_EEPROM_PU
Text GLabel 1700 8850 0    50   Input ~ 0
ID_SC_EEPROM_PU
Text GLabel 1700 8700 0    50   Input ~ 0
ID_SD_EEPROM_GPIO
Text GLabel 1700 8950 0    50   Input ~ 0
ID_SC_EEPROM_GPIO
Text GLabel 3600 8600 2    50   Input ~ 0
3.3V_GPIO_2
Wire Notes Line
	500  8450 4600 8450
Wire Notes Line
	4600 8450 4600 9350
Wire Notes Line
	4600 9350 500  9350
Wire Notes Line
	500  9350 500  8450
Wire Notes Line
	500  9550 4600 9550
Wire Notes Line
	4600 9550 4600 10650
Wire Notes Line
	4600 10650 500  10650
Wire Notes Line
	500  10650 500  9550
Text Notes 4750 1100 0    50   Italic 0
Weiß nicht, ob wir das brauchen, ich lass es mal drin (MS)
Wire Notes Line
	4700 950  4700 2200
Text Notes 4700 2400 0    79   ~ 16
Cooling Fan
$Comp
L Motor:Fan_3pin M?
U 1 1 604B7024
P 5900 3000
F 0 "M?" H 6058 2996 50  0000 L CNN
F 1 "Fan_3pin" H 6058 2905 50  0000 L CNN
F 2 "" H 5900 2910 50  0001 C CNN
F 3 "http://www.hardwarecanucks.com/forum/attachments/new-builds/16287d1330775095-help-chassis-power-fan-connectors-motherboard-asus_p8z68.jpg" H 5900 2910 50  0001 C CNN
	1    5900 3000
	1    0    0    -1  
$EndComp
Text GLabel 5450 2700 0    50   Input ~ 0
5V_HAT
Wire Wire Line
	5900 2800 5900 2700
Wire Wire Line
	5900 2700 5450 2700
Text GLabel 5450 3000 0    50   Input ~ 0
PWM_0
Wire Wire Line
	5600 3000 5450 3000
Wire Wire Line
	5900 3300 5900 3350
Wire Wire Line
	5900 3350 5450 3350
Text GLabel 5450 3350 0    50   Input ~ 0
GND_GPIO_4
Wire Notes Line
	8950 3800 4700 3800
Wire Notes Line
	4700 3800 4700 2450
Text Notes 4750 3700 0    50   Italic 0
Sollte für den Noctua-Lüfter (40x10mm) ausreichen\n\nEventuell ohne PWM, dann läuft der Lüfter durchgehen, so lange der PI eingeschalten bleibt. (MS)\n
Text Notes 3000 10600 0    50   Italic 0
Bleibt drin, weil wer weiß was passiert\nwenn ich das lösche... (MS)
$Comp
L ATMEGA128RFA1-ZU:ATMEGA128RFA1-ZU U?
U 1 1 60165848
P 7350 11300
F 0 "U?" H 7350 13770 50  0000 C CNN
F 1 "ATMEGA128RFA1-ZU" H 7350 13679 50  0000 C CNN
F 2 "QFN50P900X900X90-64N" H 7350 11300 50  0001 L BNN
F 3 "" H 7350 11300 50  0001 L BNN
F 4 "-" H 7350 11300 50  0001 L BNN "OC_NEWARK"
F 5 "1841596" H 7350 11300 50  0001 L BNN "OC_FARNELL"
F 6 "ATMEGA128RFA1-ZU" H 7350 11300 50  0001 L BNN "MPN"
F 7 "QFN-64" H 7350 11300 50  0001 L BNN "PACKAGE"
F 8 "Atmel" H 7350 11300 50  0001 L BNN "SUPPLIER"
F 9 "8-bit Microcontroller" H 7350 11300 50  0001 L BNN "DESCRIPTION"
	1    7350 11300
	1    0    0    -1  
$EndComp
Text Notes 4700 8400 0    79   ~ 16
Microcontroller
Text Notes 18500 1950 0    79   ~ 16
NFC/RFID Chip
$Comp
L RC522:RC522 U?
U 1 1 60194D96
P 19750 3400
F 0 "U?" H 19750 4767 50  0000 C CNN
F 1 "RC522" H 19750 4676 50  0000 C CNN
F 2 "QFN50P500X500X100-33N" H 19750 3400 50  0001 L BNN
F 3 "" H 19750 3400 50  0001 L BNN
F 4 "1mm" H 19750 3400 50  0001 L BNN "MAXIMUM_PACKAGE_HIEGHT"
F 5 "IPC7351B" H 19750 3400 50  0001 L BNN "STANDARD"
F 6 "NXP USA" H 19750 3400 50  0001 L BNN "MANUFACTURER"
F 7 "3.9" H 19750 3400 50  0001 L BNN "PARTREV"
	1    19750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5000 9850 8000
Wire Wire Line
	8500 5000 9850 5000
Wire Wire Line
	9650 7800 5950 7800
Wire Wire Line
	9650 5800 9650 7800
Text Notes 10150 5500 1    50   ~ 0
COAX-Antennenanschluss
Wire Wire Line
	5950 8000 9850 8000
Wire Wire Line
	5650 7800 5650 8000
Connection ~ 5650 7800
Wire Wire Line
	5650 7600 5650 7800
$Comp
L Device:D D173
U 1 1 6040C570
P 5800 8000
F 0 "D173" H 5800 8117 39  0000 C CNN
F 1 "D" H 5800 8126 50  0001 C CNN
F 2 "" H 5800 8000 50  0001 C CNN
F 3 "~" H 5800 8000 50  0001 C CNN
	1    5800 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5900 9300 7600
Wire Wire Line
	9300 7600 5950 7600
Wire Wire Line
	8800 7400 5950 7400
Wire Wire Line
	8800 5900 8800 7400
Wire Wire Line
	5950 7200 8500 7200
Wire Wire Line
	8500 5900 8500 7200
Wire Wire Line
	8200 5500 8200 5600
Wire Wire Line
	8050 5500 8200 5500
Wire Wire Line
	8200 5400 8200 5300
Wire Wire Line
	8050 5400 8200 5400
Wire Wire Line
	9300 5600 9450 5600
Connection ~ 9300 5600
Wire Wire Line
	9200 5600 9300 5600
Wire Wire Line
	8800 5600 8900 5600
Wire Wire Line
	8800 5300 8800 5600
$Comp
L Device:L TL2
U 1 1 603798D7
P 9050 5600
F 0 "TL2" V 8968 5600 39  0000 C CNN
F 1 "L" V 8960 5600 50  0001 C CNN
F 2 "" H 9050 5600 50  0001 C CNN
F 3 "~" H 9050 5600 50  0001 C CNN
	1    9050 5600
	0    1    1    0   
$EndComp
Connection ~ 8800 5600
Connection ~ 8500 5600
$Comp
L Device:L TL1
U 1 1 60350B0E
P 8500 5750
F 0 "TL1" H 8457 5750 39  0000 R CNN
F 1 "L" H 8456 5787 50  0001 R CNN
F 2 "" H 8500 5750 50  0001 C CNN
F 3 "~" H 8500 5750 50  0001 C CNN
	1    8500 5750
	-1   0    0    1   
$EndComp
Connection ~ 8500 5300
$Comp
L RF_ZigBee:CC2520 U?
U 1 1 604D79B8
P 7250 5400
F 0 "U?" H 7250 4311 50  0000 C CNN
F 1 "CC2520" H 7250 4220 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_5x5mm_P0.5mm_EP3.35x3.35mm" H 7250 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/cc2520" H 7250 5150 50  0001 C CNN
	1    7250 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:L TL3
U 1 1 602D470C
P 8650 5300
F 0 "TL3" V 8741 5300 39  0000 C CNN
F 1 "L" V 8749 5300 50  0001 C CNN
F 2 "" H 8650 5300 50  0001 C CNN
F 3 "~" H 8650 5300 50  0001 C CNN
	1    8650 5300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 60292EB9
P 9650 5600
F 0 "J1" H 9750 5529 50  0000 L CNN
F 1 "Conn_Coaxial" H 9750 5484 50  0001 L CNN
F 2 "" H 9650 5600 50  0001 C CNN
F 3 " ~" H 9650 5600 50  0001 C CNN
	1    9650 5600
	1    0    0    -1  
$EndComp
Connection ~ 5650 7600
Connection ~ 5650 7400
Wire Wire Line
	5650 7600 5650 7400
Connection ~ 5650 7200
Wire Wire Line
	5650 7400 5650 7200
Connection ~ 5650 7000
Wire Wire Line
	5650 7200 5650 7000
$Comp
L Device:D D191
U 1 1 601C3E96
P 5800 7200
F 0 "D191" H 5800 7317 39  0000 C CNN
F 1 "D" H 5800 7326 50  0001 C CNN
F 2 "" H 5800 7200 50  0001 C CNN
F 3 "~" H 5800 7200 50  0001 C CNN
	1    5800 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:D D173
U 1 1 601BBD49
P 5800 7400
F 0 "D173" H 5800 7517 39  0000 C CNN
F 1 "D" H 5800 7526 50  0001 C CNN
F 2 "" H 5800 7400 50  0001 C CNN
F 3 "~" H 5800 7400 50  0001 C CNN
	1    5800 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D172
U 1 1 601B3CCE
P 5800 7600
F 0 "D172" H 5800 7717 39  0000 C CNN
F 1 "D" H 5800 7726 50  0001 C CNN
F 2 "" H 5800 7600 50  0001 C CNN
F 3 "~" H 5800 7600 50  0001 C CNN
	1    5800 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:D DJ1
U 1 1 601ABE24
P 5800 7800
F 0 "DJ1" H 5800 7917 39  0000 C CNN
F 1 "D" H 5800 7926 50  0001 C CNN
F 2 "" H 5800 7800 50  0001 C CNN
F 3 "~" H 5800 7800 50  0001 C CNN
	1    5800 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C192
U 1 1 6062FCEE
P 8650 5600
F 0 "C192" V 8802 5600 39  0000 C CNN
F 1 "C" H 8765 5555 50  0001 L CNN
F 2 "" H 8688 5450 50  0001 C CNN
F 3 "~" H 8650 5600 50  0001 C CNN
	1    8650 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 6100 5650 6400
Wire Wire Line
	5650 6400 5650 6600
Wire Wire Line
	5650 6800 5650 6600
Connection ~ 5650 6800
Connection ~ 5650 6600
Wire Wire Line
	5650 7000 5650 6800
Wire Wire Line
	8350 7000 5950 7000
Wire Wire Line
	8350 6000 8350 7000
Wire Wire Line
	8050 6500 8050 6800
Wire Wire Line
	8050 6800 5950 6800
$Comp
L Device:D D271
U 1 1 607A08F5
P 5800 7000
F 0 "D271" H 5800 7117 39  0000 C CNN
F 1 "D" H 5800 7126 50  0001 C CNN
F 2 "" H 5800 7000 50  0001 C CNN
F 3 "~" H 5800 7000 50  0001 C CNN
	1    5800 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:D D231
U 1 1 60799711
P 5800 6800
F 0 "D231" H 5800 6917 39  0000 C CNN
F 1 "D" H 5800 6926 50  0001 C CNN
F 2 "" H 5800 6800 50  0001 C CNN
F 3 "~" H 5800 6800 50  0001 C CNN
	1    5800 6800
	1    0    0    -1  
$EndComp
Connection ~ 5650 6400
Wire Wire Line
	7250 6600 5950 6600
Wire Wire Line
	7250 6400 7250 6600
$Comp
L Device:D D291
U 1 1 60745B53
P 5800 6600
F 0 "D291" H 5800 6717 39  0000 C CNN
F 1 "D" H 5800 6726 50  0001 C CNN
F 2 "" H 5800 6600 50  0001 C CNN
F 3 "~" H 5800 6600 50  0001 C CNN
	1    5800 6600
	1    0    0    -1  
$EndComp
Connection ~ 5650 6100
Wire Wire Line
	5650 6100 5500 6100
Wire Wire Line
	5500 5000 6450 5000
Connection ~ 6250 6400
Wire Wire Line
	6450 6400 6250 6400
Wire Wire Line
	6450 6200 6450 6400
Connection ~ 6250 6100
Wire Wire Line
	6450 6100 6250 6100
$Comp
L Device:Crystal XTAL
U 1 1 605864C1
P 6250 6250
F 0 "XTAL" V 6250 6119 39  0000 R CNN
F 1 "Crystal" H 6250 6427 50  0001 C CNN
F 2 "" H 6250 6250 50  0001 C CNN
F 3 "~" H 6250 6250 50  0001 C CNN
	1    6250 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D121
U 1 1 606A9747
P 5800 6400
F 0 "D121" H 5800 6517 39  0000 C CNN
F 1 "D" H 5800 6526 50  0001 C CNN
F 2 "" H 5800 6400 50  0001 C CNN
F 3 "~" H 5800 6400 50  0001 C CNN
	1    5800 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D131
U 1 1 6066826D
P 5800 6100
F 0 "D131" H 5800 6217 39  0000 C CNN
F 1 "D" H 5800 6226 50  0001 C CNN
F 2 "" H 5800 6100 50  0001 C CNN
F 3 "~" H 5800 6100 50  0001 C CNN
	1    5800 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C174
U 1 1 6065F875
P 9300 5750
F 0 "C174" H 9415 5750 39  0000 L CNN
F 1 "C" H 9415 5705 50  0001 L CNN
F 2 "" H 9338 5600 50  0001 C CNN
F 3 "~" H 9300 5750 50  0001 C CNN
	1    9300 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C173
U 1 1 6065F86F
P 8800 5750
F 0 "C173" H 8915 5750 39  0000 L CNN
F 1 "C" H 8915 5705 50  0001 L CNN
F 2 "" H 8838 5600 50  0001 C CNN
F 3 "~" H 8800 5750 50  0001 C CNN
	1    8800 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C172
U 1 1 6063889E
P 8500 5150
F 0 "C172" H 8615 5150 39  0000 L CNN
F 1 "C" H 8615 5105 50  0001 L CNN
F 2 "" H 8538 5000 50  0001 C CNN
F 3 "~" H 8500 5150 50  0001 C CNN
	1    8500 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C171
U 1 1 60638898
P 8350 5300
F 0 "C171" V 8502 5300 39  0000 C CNN
F 1 "C" H 8465 5255 50  0001 L CNN
F 2 "" H 8388 5150 50  0001 C CNN
F 3 "~" H 8350 5300 50  0001 C CNN
	1    8350 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C191
U 1 1 60626639
P 8350 5600
F 0 "C191" V 8502 5600 39  0000 C CNN
F 1 "C" H 8465 5555 50  0001 L CNN
F 2 "" H 8388 5450 50  0001 C CNN
F 3 "~" H 8350 5600 50  0001 C CNN
	1    8350 5600
	0    -1   -1   0   
$EndComp
Text Notes 4750 4250 0    39   Italic 0
Anschlüsse am CC2520 nach besten Wissen/Gewissen nach\nhttps://www.ti.com/lit/ds/symlink/cc2520.pdf
$Comp
L Device:C C121
U 1 1 605AF04B
P 6100 6400
F 0 "C121" V 5948 6400 39  0000 C CNN
F 1 "C" V 5939 6400 50  0001 C CNN
F 2 "" H 6138 6250 50  0001 C CNN
F 3 "~" H 6100 6400 50  0001 C CNN
	1    6100 6400
	0    1    1    0   
$EndComp
$Comp
L Device:C C131
U 1 1 60597966
P 6100 6100
F 0 "C131" V 5948 6100 39  0000 C CNN
F 1 "C" V 5939 6100 50  0001 C CNN
F 2 "" H 6138 5950 50  0001 C CNN
F 3 "~" H 6100 6100 50  0001 C CNN
	1    6100 6100
	0    1    1    0   
$EndComp
Text GLabel 5500 4400 0    50   Input ~ 0
3.3V_EEPROM
Text GLabel 5500 6100 0    50   Input ~ 0
GND_GPIO_5
$Comp
L Device:C C271
U 1 1 604FA6C1
P 8200 6000
F 0 "C271" V 8352 6000 39  0000 C CNN
F 1 "C" H 8315 5955 50  0001 L CNN
F 2 "" H 8238 5850 50  0001 C CNN
F 3 "~" H 8200 6000 50  0001 C CNN
	1    8200 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R231
U 1 1 604EB3E5
P 8050 6350
F 0 "R231" H 8120 6350 39  0000 L CNN
F 1 "R" V 8166 6350 50  0001 C CNN
F 2 "" V 7980 6350 50  0001 C CNN
F 3 "~" H 8050 6350 50  0001 C CNN
	1    8050 6350
	1    0    0    -1  
$EndComp
Text GLabel 5500 5000 0    50   Input ~ 0
GPIO_CLK0
Text Notes 4700 4000 0    79   ~ 16
Zigbee Chip
Wire Notes Line
	4600 3350 4600 5700
Text GLabel 5500 5400 0    50   Input ~ 0
CC2520_GPIO0
Wire Wire Line
	5500 5400 6450 5400
Text GLabel 5500 5500 0    50   Input ~ 0
CC2520_GPIO1
Text GLabel 5500 5600 0    50   Input ~ 0
CC2520_GPIO2
Text GLabel 5500 5700 0    50   Input ~ 0
CC2520_GPIO3
Text GLabel 5500 5800 0    50   Input ~ 0
CC2520_GPIO4
Text GLabel 5500 5900 0    50   Input ~ 0
CC2520_GPIO5
Wire Wire Line
	5500 5500 6450 5500
Wire Wire Line
	5500 5600 6450 5600
Wire Wire Line
	5500 5700 6450 5700
Wire Wire Line
	5500 5800 6450 5800
Wire Wire Line
	5500 5900 6450 5900
Text GLabel 5500 5100 0    50   Input ~ 0
CC2520_SI
Text GLabel 5500 5200 0    50   Input ~ 0
CC2520_SO
Wire Wire Line
	6450 5100 5500 5100
Wire Wire Line
	6450 5200 5500 5200
Text GLabel 5500 4900 0    50   Input ~ 0
CC2520_CS
Text GLabel 5500 4700 0    50   Input ~ 0
CC2520_VREG_EN
Text GLabel 5500 4600 0    50   Input ~ 0
CC2520_RST
Wire Wire Line
	5500 4600 6450 4600
Wire Wire Line
	6450 4700 5500 4700
Wire Wire Line
	5500 4900 6450 4900
Wire Wire Line
	5500 4400 7050 4400
Connection ~ 7050 4400
Wire Wire Line
	7050 4400 7250 4400
Connection ~ 7250 4400
Wire Wire Line
	7250 4400 7350 4400
Connection ~ 7350 4400
Wire Wire Line
	7350 4400 7450 4400
Connection ~ 7450 4400
Wire Wire Line
	7450 4400 7550 4400
Connection ~ 7550 4400
Wire Wire Line
	7550 4400 7650 4400
Connection ~ 7650 4400
Wire Wire Line
	7650 4400 7750 4400
Wire Notes Line
	4700 8250 4700 4050
Wire Notes Line
	10150 4550 10150 5600
Wire Notes Line
	10150 5600 9700 5600
Wire Notes Line
	4700 8250 10350 8250
Wire Notes Line
	10350 8250 10350 4050
Wire Notes Line
	10350 4050 4700 4050
Wire Notes Line
	9000 3800 10350 3800
Wire Notes Line
	10350 3800 10350 2450
Wire Notes Line
	4700 2450 10350 2450
Wire Notes Line
	10350 2200 10350 950 
Wire Notes Line
	4700 2200 10350 2200
Wire Notes Line
	4700 950  10350 950 
Text GLabel 5300 8650 0    50   Input ~ 0
GND_GPIO_7
Text GLabel 5300 8750 0    50   Input ~ 0
5V_HAT
Wire Notes Line
	4700 8450 4700 15650
Wire Notes Line
	4700 15650 10350 15650
Wire Notes Line
	10350 15650 10350 8450
Wire Notes Line
	10350 8450 4700 8450
Text GLabel 5350 10700 0    50   Input ~ 0
GPIO_CLK0
Wire Wire Line
	5750 10700 5350 10700
Text GLabel 8950 11700 2    50   Input ~ 0
NC
Text GLabel 700  11000 0    50   Input ~ 0
NC
Text Notes 750  11050 0    50   ~ 0
NC: Not Connected
Text Notes 500  10850 0    79   ~ 16
Zusatzsymbole/Legende
Wire Notes Line
	500  10900 4600 10900
Wire Notes Line
	4600 10900 4600 14350
Wire Notes Line
	4600 14350 500  14350
Wire Notes Line
	500  14350 500  10900
$EndSCHEMATC
