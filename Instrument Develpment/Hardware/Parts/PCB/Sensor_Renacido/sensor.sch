EESchema Schematic File Version 2
LIBS:sensor-rescue
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
LIBS:lmc6484
LIBS:mcp3204
LIBS:sensor-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LMC6484 U2
U 1 1 57D6F8C3
P 3900 2750
F 0 "U2" H 3900 3350 60  0000 C CNN
F 1 "LMC6484" V 3900 2750 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3900 2750 60  0001 C CNN
F 3 "" H 3900 2750 60  0000 C CNN
	1    3900 2750
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-sensor D1
U 1 1 57D6FDDF
P 3000 2150
F 0 "D1" H 3000 2250 50  0000 C CNN
F 1 "LED" H 3000 2050 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 3000 2150 50  0001 C CNN
F 3 "" H 3000 2150 50  0000 C CNN
	1    3000 2150
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 57D6FDE5
P 2550 2050
F 0 "R2" V 2630 2050 50  0000 C CNN
F 1 "R" V 2550 2050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2480 2050 50  0001 C CNN
F 3 "" H 2550 2050 50  0000 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 57D6FDEB
P 2700 2350
F 0 "C1" H 2725 2450 50  0000 L CNN
F 1 "0.1pF" H 2725 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2738 2200 50  0001 C CNN
F 3 "" H 2700 2350 50  0000 C CNN
	1    2700 2350
	0    -1   -1   0   
$EndComp
$Comp
L LED-RESCUE-sensor D3
U 1 1 57D713D9
P 4800 2150
F 0 "D3" H 4800 2250 50  0000 C CNN
F 1 "LED" H 4800 2050 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 4800 2150 50  0001 C CNN
F 3 "" H 4800 2150 50  0000 C CNN
	1    4800 2150
	0    1    -1   0   
$EndComp
$Comp
L R R6
U 1 1 57D713DF
P 5250 2050
F 0 "R6" V 5330 2050 50  0000 C CNN
F 1 "R" V 5250 2050 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5180 2050 50  0001 C CNN
F 3 "" H 5250 2050 50  0000 C CNN
	1    5250 2050
	1    0    0    1   
$EndComp
$Comp
L C C3
U 1 1 57D713E5
P 5100 2350
F 0 "C3" H 5125 2450 50  0000 L CNN
F 1 "0.1pF" H 5125 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5138 2200 50  0001 C CNN
F 3 "" H 5100 2350 50  0000 C CNN
	1    5100 2350
	0    1    -1   0   
$EndComp
$Comp
L LED-RESCUE-sensor D2
U 1 1 57D715A0
P 3000 3350
F 0 "D2" H 3000 3450 50  0000 C CNN
F 1 "LED" H 3000 3250 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 3000 3350 50  0001 C CNN
F 3 "" H 3000 3350 50  0000 C CNN
	1    3000 3350
	0    -1   1    0   
$EndComp
$Comp
L R R3
U 1 1 57D715A6
P 2550 3450
F 0 "R3" V 2630 3450 50  0000 C CNN
F 1 "R" V 2550 3450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2480 3450 50  0001 C CNN
F 3 "" H 2550 3450 50  0000 C CNN
	1    2550 3450
	-1   0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57D715AC
P 2700 3150
F 0 "C2" H 2725 3250 50  0000 L CNN
F 1 "0.1pF" H 2725 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2738 3000 50  0001 C CNN
F 3 "" H 2700 3150 50  0000 C CNN
	1    2700 3150
	0    -1   1    0   
$EndComp
$Comp
L LED-RESCUE-sensor D4
U 1 1 57D716E5
P 4800 3350
F 0 "D4" H 4800 3450 50  0000 C CNN
F 1 "LED" H 4800 3250 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 4800 3350 50  0001 C CNN
F 3 "" H 4800 3350 50  0000 C CNN
	1    4800 3350
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 57D716EB
P 5250 3450
F 0 "R7" V 5330 3450 50  0000 C CNN
F 1 "R" V 5250 3450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5180 3450 50  0001 C CNN
F 3 "" H 5250 3450 50  0000 C CNN
	1    5250 3450
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 57D716F1
P 5100 3150
F 0 "C4" H 5125 3250 50  0000 L CNN
F 1 "0.1pF" H 5125 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5138 3000 50  0001 C CNN
F 3 "" H 5100 3150 50  0000 C CNN
	1    5100 3150
	0    1    1    0   
$EndComp
Text GLabel 3350 2550 0    60   Input ~ 0
GND
Text GLabel 3350 2950 0    60   Input ~ 0
GND
Text GLabel 4450 2550 2    60   Input ~ 0
GND
Text GLabel 4450 2750 2    60   Input ~ 0
GND
Text GLabel 4450 2950 2    60   Input ~ 0
GND
Text GLabel 4800 3550 0    60   Input ~ 0
GND
Text GLabel 4800 1950 0    60   Input ~ 0
GND
Text GLabel 3000 1950 2    60   Input ~ 0
GND
Text GLabel 3000 3550 2    60   Input ~ 0
GND
Text GLabel 3350 2750 0    60   Input ~ 0
5V
$Comp
L LMC6484 U3
U 1 1 57D723AA
P 7300 2750
F 0 "U3" H 7300 3350 60  0000 C CNN
F 1 "LMC6484" V 7300 2750 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 7300 2750 60  0001 C CNN
F 3 "" H 7300 2750 60  0000 C CNN
	1    7300 2750
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-sensor D5
U 1 1 57D723B0
P 6400 2150
F 0 "D5" H 6400 2250 50  0000 C CNN
F 1 "LED" H 6400 2050 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 6400 2150 50  0001 C CNN
F 3 "" H 6400 2150 50  0000 C CNN
	1    6400 2150
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 57D723B6
P 6100 2350
F 0 "R9" V 6180 2350 50  0000 C CNN
F 1 "R" V 6100 2350 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 6030 2350 50  0001 C CNN
F 3 "" H 6100 2350 50  0000 C CNN
	1    6100 2350
	0    -1   -1   0   
$EndComp
Text GLabel 6750 2550 0    60   Input ~ 0
GND
Text GLabel 6750 2950 0    60   Input ~ 0
GND
Text GLabel 7850 2550 2    60   Input ~ 0
GND
Text GLabel 7850 2750 2    60   Input ~ 0
GND
Text GLabel 7850 2950 2    60   Input ~ 0
GND
Text GLabel 6400 1950 2    60   Input ~ 0
GND
Text GLabel 6750 2750 0    60   Input ~ 0
5V
$Comp
L LED-RESCUE-sensor D6
U 1 1 57D72FD7
P 6400 3350
F 0 "D6" H 6400 3450 50  0000 C CNN
F 1 "LED" H 6400 3250 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 6400 3350 50  0001 C CNN
F 3 "" H 6400 3350 50  0000 C CNN
	1    6400 3350
	0    -1   1    0   
$EndComp
$Comp
L R R10
U 1 1 57D72FDD
P 6100 3150
F 0 "R10" V 6180 3150 50  0000 C CNN
F 1 "R" V 6100 3150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 6030 3150 50  0001 C CNN
F 3 "" H 6100 3150 50  0000 C CNN
	1    6100 3150
	0    -1   1    0   
$EndComp
Text GLabel 6400 3550 2    60   Input ~ 0
GND
$Comp
L LED-RESCUE-sensor D8
U 1 1 57D734C4
P 8200 3350
F 0 "D8" H 8200 3450 50  0000 C CNN
F 1 "LED" H 8200 3250 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 8200 3350 50  0001 C CNN
F 3 "" H 8200 3350 50  0000 C CNN
	1    8200 3350
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 57D734CA
P 8500 3150
F 0 "R12" V 8580 3150 50  0000 C CNN
F 1 "R" V 8500 3150 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 8430 3150 50  0001 C CNN
F 3 "" H 8500 3150 50  0000 C CNN
	1    8500 3150
	0    1    1    0   
$EndComp
Text GLabel 8200 3550 0    60   Input ~ 0
GND
$Comp
L LED-RESCUE-sensor D7
U 1 1 57D73C3F
P 8200 2150
F 0 "D7" H 8200 2250 50  0000 C CNN
F 1 "LED" H 8200 2050 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 8200 2150 50  0001 C CNN
F 3 "" H 8200 2150 50  0000 C CNN
	1    8200 2150
	0    1    -1   0   
$EndComp
$Comp
L R R11
U 1 1 57D73C45
P 8500 2350
F 0 "R11" V 8580 2350 50  0000 C CNN
F 1 "R" V 8500 2350 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 8430 2350 50  0001 C CNN
F 3 "" H 8500 2350 50  0000 C CNN
	1    8500 2350
	0    1    -1   0   
$EndComp
Text GLabel 8200 1950 0    60   Input ~ 0
GND
Text Label 7150 1900 0    60   ~ 0
Tracker
Text Label 3700 1850 0    60   ~ 0
Sensores
$Comp
L MCP3204-RESCUE-sensor U1
U 1 1 57D74E49
P 3600 5450
F 0 "U1" H 3600 6050 60  0000 C CNN
F 1 "MCP3204" V 3600 5450 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3600 5450 60  0001 C CNN
F 3 "" H 3600 5450 60  0000 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
Text GLabel 3100 4850 0    60   Input ~ 0
CH0
Text GLabel 3100 5050 0    60   Input ~ 0
CH1
Text GLabel 3100 5250 0    60   Input ~ 0
CH2
Text GLabel 3100 5450 0    60   Input ~ 0
CH3
Text GLabel 3100 6050 0    60   Input ~ 0
GND
Text GLabel 4100 5250 2    60   Input ~ 0
GND
Text GLabel 4900 1650 1    60   Input ~ 0
CH0
Text GLabel 2900 1650 1    60   Input ~ 0
CH1
Text GLabel 4900 3850 3    60   Input ~ 0
CH2
Text GLabel 2900 3850 3    60   Input ~ 0
CH3
Text GLabel 4100 4850 2    60   Input ~ 0
5V
Text GLabel 4100 5050 2    60   Input ~ 0
5V
Text GLabel 4100 6050 2    60   Input ~ 0
SS
Text GLabel 4100 5850 2    60   Input ~ 0
MOSI
Text GLabel 4100 5650 2    60   Input ~ 0
MISO
Text GLabel 4100 5450 2    60   Input ~ 0
CLK
Text GLabel 6300 1650 1    60   Input ~ 0
A0
Text GLabel 6450 3850 3    60   Input ~ 0
A1
Text GLabel 8250 3850 3    60   Input ~ 0
A2
Text GLabel 8250 1650 1    60   Input ~ 0
A3
$Comp
L CONN_02X07 P1
U 1 1 57D76EFC
P 7200 5200
F 0 "P1" H 7200 5600 50  0000 C CNN
F 1 "CONN_02X07" V 7200 5200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x07" H 7200 4000 50  0001 C CNN
F 3 "" H 7200 4000 50  0000 C CNN
	1    7200 5200
	1    0    0    -1  
$EndComp
Text GLabel 6950 5400 0    60   Input ~ 0
5V
Text GLabel 6950 5200 0    60   Input ~ 0
GND
Text GLabel 7450 5000 2    60   Input ~ 0
MISO
Text GLabel 7450 4900 2    60   Input ~ 0
MOSI
Text GLabel 7450 5100 2    60   Input ~ 0
CLK
Text GLabel 6950 4900 0    60   Input ~ 0
SS
Text GLabel 7450 5200 2    60   Input ~ 0
GND
Text GLabel 7450 5500 2    60   Input ~ 0
A0
Text GLabel 6950 5500 0    60   Input ~ 0
A1
Text GLabel 7450 5300 2    60   Input Italic 0
A2
Text GLabel 7450 5400 2    60   Input ~ 0
A3
$Comp
L CONN_01X05 P2
U 1 1 57D79102
P 8850 5050
F 0 "P2" H 8850 5350 50  0000 C CNN
F 1 "CONN_01X05" V 8950 5050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 8850 5050 50  0001 C CNN
F 3 "" H 8850 5050 50  0000 C CNN
	1    8850 5050
	1    0    0    -1  
$EndComp
Text GLabel 8650 4850 0    60   Input ~ 0
SDA
Text GLabel 8650 4950 0    60   Input ~ 0
SCL
Text GLabel 8650 5050 0    60   Input ~ 0
GND
Text GLabel 8650 5150 0    60   Input ~ 0
3.3V
Text GLabel 6950 5000 0    60   Input ~ 0
SDA
Text GLabel 6950 5100 0    60   Input ~ 0
SCL
Text GLabel 6950 5300 0    60   Input ~ 0
3.3V
Text Label 3550 4500 0    60   ~ 0
ADC
Text Label 7000 4500 0    60   ~ 0
Cablesalida
Text Label 8550 4500 0    60   ~ 0
BMP180
$Comp
L R R1
U 1 1 57D7C5F7
P 2700 1850
F 0 "R1" V 2780 1850 50  0000 C CNN
F 1 "R" V 2700 1850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2630 1850 50  0001 C CNN
F 3 "" H 2700 1850 50  0000 C CNN
	1    2700 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 57D7CA49
P 2700 3650
F 0 "R4" V 2780 3650 50  0000 C CNN
F 1 "R" V 2700 3650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 2630 3650 50  0001 C CNN
F 3 "" H 2700 3650 50  0000 C CNN
	1    2700 3650
	0    -1   1    0   
$EndComp
$Comp
L R R5
U 1 1 57D7D0CB
P 5100 1850
F 0 "R5" V 5180 1850 50  0000 C CNN
F 1 "R" V 5100 1850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5030 1850 50  0001 C CNN
F 3 "" H 5100 1850 50  0000 C CNN
	1    5100 1850
	0    1    -1   0   
$EndComp
$Comp
L R R8
U 1 1 57D7D7D5
P 5100 3650
F 0 "R8" V 5180 3650 50  0000 C CNN
F 1 "R" V 5100 3650 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 5030 3650 50  0001 C CNN
F 3 "" H 5100 3650 50  0000 C CNN
	1    5100 3650
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 57D7F6C3
P 9800 2600
F 0 "C5" H 9825 2700 50  0000 L CNN
F 1 "10uF" H 9825 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 9838 2450 50  0001 C CNN
F 3 "" H 9800 2600 50  0000 C CNN
	1    9800 2600
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 57D7F77B
P 10250 2600
F 0 "C6" H 10275 2700 50  0000 L CNN
F 1 "0.1uF" H 10275 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 10288 2450 50  0001 C CNN
F 3 "" H 10250 2600 50  0000 C CNN
	1    10250 2600
	1    0    0    -1  
$EndComp
Text GLabel 10050 2300 1    60   Input ~ 0
GND
Text GLabel 9800 2900 3    60   Input ~ 0
5V
Text GLabel 10250 2900 3    60   Input ~ 0
5V
Wire Wire Line
	2850 2350 3350 2350
Connection ~ 3000 2350
Wire Wire Line
	2550 2200 2450 2200
Connection ~ 2550 2200
Wire Wire Line
	3350 2150 3350 1700
Wire Wire Line
	3350 1700 2450 1700
Wire Wire Line
	2450 1700 2450 2200
Wire Wire Line
	4950 1850 4950 2350
Wire Wire Line
	4950 2350 4450 2350
Connection ~ 4800 2350
Wire Wire Line
	5250 2200 5350 2200
Connection ~ 5250 2200
Wire Wire Line
	4450 1700 5350 1700
Wire Wire Line
	5350 1700 5350 2200
Wire Wire Line
	4450 1700 4450 2150
Wire Wire Line
	2850 3150 2850 3650
Wire Wire Line
	2850 3150 3350 3150
Connection ~ 3000 3150
Wire Wire Line
	2550 3300 2450 3300
Connection ~ 2550 3300
Wire Wire Line
	3350 3800 2450 3800
Wire Wire Line
	2450 3800 2450 3300
Wire Wire Line
	3350 3800 3350 3350
Wire Wire Line
	4950 3150 4950 3650
Wire Wire Line
	4950 3150 4450 3150
Connection ~ 4800 3150
Wire Wire Line
	5250 3300 5350 3300
Connection ~ 5250 3300
Wire Wire Line
	4450 3800 5350 3800
Wire Wire Line
	5350 3800 5350 3300
Wire Wire Line
	4450 3350 4450 3800
Wire Wire Line
	6250 2350 6750 2350
Connection ~ 6400 2350
Wire Wire Line
	6750 2150 6750 1700
Wire Wire Line
	6750 1700 5850 1700
Wire Wire Line
	5850 1700 5850 2350
Wire Wire Line
	5850 2350 5950 2350
Wire Wire Line
	6250 3150 6750 3150
Connection ~ 6400 3150
Wire Wire Line
	6750 3800 5850 3800
Wire Wire Line
	5850 3800 5850 3150
Wire Wire Line
	5850 3150 5950 3150
Wire Wire Line
	6750 3350 6750 3800
Wire Wire Line
	8350 3150 7850 3150
Connection ~ 8200 3150
Wire Wire Line
	7850 3800 8750 3800
Wire Wire Line
	8750 3800 8750 3150
Wire Wire Line
	8750 3150 8650 3150
Wire Wire Line
	7850 3350 7850 3800
Wire Wire Line
	8350 2350 7850 2350
Connection ~ 8200 2350
Wire Wire Line
	7850 1700 8750 1700
Wire Wire Line
	8750 1700 8750 2350
Wire Wire Line
	8750 2350 8650 2350
Wire Wire Line
	7850 1700 7850 2150
Wire Wire Line
	2900 1700 2900 1650
Connection ~ 2900 1700
Wire Wire Line
	2900 3800 2900 3850
Connection ~ 2900 3800
Wire Wire Line
	4900 3800 4900 3850
Connection ~ 4900 3800
Wire Wire Line
	4900 1700 4900 1650
Connection ~ 4900 1700
Wire Wire Line
	6300 1700 6300 1650
Connection ~ 6300 1700
Wire Wire Line
	8250 1700 8250 1650
Connection ~ 8250 1700
Wire Wire Line
	8250 3800 8250 3850
Connection ~ 8250 3800
Wire Wire Line
	6450 3800 6450 3850
Connection ~ 6450 3800
Wire Notes Line
	8050 4300 8050 5700
Wire Notes Line
	5150 5700 9750 5700
Wire Notes Line
	9750 5700 9750 4300
Wire Notes Line
	2300 4300 10800 4300
Wire Notes Line
	6550 4300 6550 5700
Wire Notes Line
	5150 4300 5150 6350
Wire Notes Line
	2700 4300 2700 6350
Wire Notes Line
	2700 6350 5150 6350
Wire Notes Line
	5600 4300 5600 1350
Wire Notes Line
	2300 1350 10800 1350
Wire Notes Line
	2300 4300 2300 1350
Wire Notes Line
	9000 1350 9000 4300
Connection ~ 2850 3450
Wire Wire Line
	9800 2450 10250 2450
Wire Wire Line
	10050 2450 10050 2300
Connection ~ 10050 2450
Wire Wire Line
	9800 2750 9800 2900
Wire Wire Line
	10250 2750 10250 2900
Wire Notes Line
	10800 1350 10800 4300
Wire Wire Line
	2550 1850 2550 1900
Wire Wire Line
	2550 2200 2550 2350
Wire Wire Line
	2550 3600 2550 3650
Wire Wire Line
	2550 3150 2550 3300
Wire Wire Line
	2850 1850 2850 2350
Wire Wire Line
	5250 2200 5250 2350
Wire Wire Line
	5250 1900 5250 1850
Wire Wire Line
	5250 3650 5250 3600
Wire Wire Line
	5250 3300 5250 3150
Text Notes 7450 7250 0    60   ~ 0
Sensor Fotometro V3\n
Text Notes 7350 7500 0    60   ~ 0
Fotómetro V3 - Sensor
Text Notes 8150 7650 0    60   ~ 0
Enero 2017\n
Text Notes 10600 7650 0    60   ~ 0
0\n
$EndSCHEMATC
