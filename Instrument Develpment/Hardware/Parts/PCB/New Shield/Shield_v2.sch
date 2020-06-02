EESchema Schematic File Version 2
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
LIBS:sn75441
LIBS:Shield_v2-cache
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
L CONN_01X12 P1
U 1 1 5852CF80
P 1450 2250
F 0 "P1" H 1450 2900 50  0000 C CNN
F 1 "CONN_01X12" V 1550 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 1450 2250 50  0001 C CNN
F 3 "" H 1450 2250 50  0000 C CNN
	1    1450 2250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 5852CFDB
P 1800 1450
F 0 "P2" H 1800 1650 50  0000 C CNN
F 1 "CONN_01X03" V 1900 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1800 1450 50  0001 C CNN
F 3 "" H 1800 1450 50  0000 C CNN
	1    1800 1450
	0    1    1    0   
$EndComp
$Comp
L CONN_01X12 P4
U 1 1 5852D020
P 2450 2250
F 0 "P4" H 2450 2900 50  0000 C CNN
F 1 "CONN_01X12" V 2550 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 2450 2250 50  0001 C CNN
F 3 "" H 2450 2250 50  0000 C CNN
	1    2450 2250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X06 P6
U 1 1 5852D06B
P 3700 2600
F 0 "P6" H 3700 2950 50  0000 C CNN
F 1 "CONN_01X06" V 3800 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0000 C CNN
	1    3700 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P5
U 1 1 5852D0A6
P 3700 1750
F 0 "P5" H 3700 2200 50  0000 C CNN
F 1 "CONN_01X08" V 3800 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 3700 1750 50  0001 C CNN
F 3 "" H 3700 1750 50  0000 C CNN
	1    3700 1750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P8
U 1 1 5852D0DA
P 4250 2500
F 0 "P8" H 4250 2950 50  0000 C CNN
F 1 "CONN_01X08" V 4350 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 4250 2500 50  0001 C CNN
F 3 "" H 4250 2500 50  0000 C CNN
	1    4250 2500
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X07 P7
U 1 1 5852D11B
P 4250 1550
F 0 "P7" H 4250 1950 50  0000 C CNN
F 1 "CONN_01X07" V 4350 1550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07" H 4250 1550 50  0001 C CNN
F 3 "" H 4250 1550 50  0000 C CNN
	1    4250 1550
	-1   0    0    1   
$EndComp
$Comp
L SN75441 U1
U 1 1 5852DB6A
P 5600 1600
F 0 "U1" H 5600 1100 60  0000 C CNN
F 1 "SN75441" H 5600 2100 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 5600 1550 60  0001 C CNN
F 3 "" H 5600 1550 60  0000 C CNN
	1    5600 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P9
U 1 1 5852DC2B
P 6150 2550
F 0 "P9" H 6150 2750 50  0000 C CNN
F 1 "CONN_02X03" H 6150 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x03" H 6150 1350 50  0001 C CNN
F 3 "" H 6150 1350 50  0000 C CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
Text Label 5950 2900 0    60   ~ 0
MOTORES
Text Label 5400 1000 0    60   ~ 0
PUENTEH
Text Label 1600 900  0    60   ~ 0
PRO_MINI
Text Label 3500 1150 0    60   ~ 0
UNO
$Comp
L CONN_02X07 P10
U 1 1 5852E713
P 5900 3900
F 0 "P10" H 5900 4300 50  0000 C CNN
F 1 "CONN_02X07" V 5900 3900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x07" H 5900 2700 50  0001 C CNN
F 3 "" H 5900 2700 50  0000 C CNN
	1    5900 3900
	1    0    0    -1  
$EndComp
Text Label 6800 2100 0    60   ~ 0
SENSOR
Text Label 7750 2100 0    60   ~ 0
RTC
$Comp
L CONN_01X04 P12
U 1 1 5852E8B6
P 7850 1700
F 0 "P12" H 7850 1950 50  0000 C CNN
F 1 "CONN_01X04" V 7950 1700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 7850 1700 50  0001 C CNN
F 3 "" H 7850 1700 50  0000 C CNN
	1    7850 1700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P11
U 1 1 5852E90B
P 7850 1150
F 0 "P11" H 7850 1250 50  0000 C CNN
F 1 "CONN_01X01" V 7950 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 7850 1150 50  0001 C CNN
F 3 "" H 7850 1150 50  0000 C CNN
	1    7850 1150
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P14
U 1 1 5852F031
P 8950 1200
F 0 "P14" H 8950 1350 50  0000 C CNN
F 1 "CONN_01X02" V 9050 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 8950 1200 50  0001 C CNN
F 3 "" H 8950 1200 50  0000 C CNN
	1    8950 1200
	1    0    0    -1  
$EndComp
Text Label 8750 1550 0    60   ~ 0
ENERGIA
Text GLabel 5650 4200 0    60   Input ~ 0
SS
Text GLabel 5650 4100 0    60   Input ~ 0
SDAU
Text GLabel 5650 4000 0    60   Input ~ 0
SCLU
Text GLabel 5650 3900 0    60   Input ~ 0
GND
Text GLabel 5650 3800 0    60   Input ~ 0
3.3VU
Text GLabel 5650 3700 0    60   Input ~ 0
5VU
Text GLabel 6150 3600 2    60   Input ~ 0
A1PM
Text GLabel 5650 3600 0    60   Input ~ 0
A0PM
Text GLabel 6150 3800 2    60   Input ~ 0
A3PM
Text GLabel 6150 3700 2    60   Input ~ 0
A2PM
Text GLabel 6150 3900 2    60   Input ~ 0
GND
Text GLabel 6150 4000 2    60   Input ~ 0
CLKU
Text GLabel 6150 4100 2    60   Input ~ 0
MISOU
Text GLabel 6150 4200 2    60   Input ~ 0
MOSIU
Text GLabel 1250 2800 0    60   Input ~ 0
VIN
Text GLabel 8750 1150 0    60   Input ~ 0
VIN
Text GLabel 1250 2700 0    60   Input ~ 0
GND
Text GLabel 1250 2500 0    60   Input ~ 0
VCCPM
Text GLabel 1250 2400 0    60   Input ~ 0
A3PM
Text GLabel 1250 2300 0    60   Input ~ 0
A2PM
Text GLabel 1250 2200 0    60   Input ~ 0
A1PM
Text GLabel 1250 2100 0    60   Input ~ 0
A0PM
$Comp
L CONN_01X02 P3
U 1 1 58530390
P 2100 2200
F 0 "P3" H 2100 2350 50  0000 C CNN
F 1 "CONN_01X02" V 2200 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 2100 2200 50  0001 C CNN
F 3 "" H 2100 2200 50  0000 C CNN
	1    2100 2200
	1    0    0    -1  
$EndComp
Text GLabel 1250 1900 0    60   Input ~ 0
A1U
Text GLabel 1250 1800 0    60   Input ~ 0
A0U
Text GLabel 1250 1700 0    60   Input ~ 0
10PM
Text GLabel 1900 2250 0    60   Input ~ 0
A5PM
Text GLabel 1900 2150 0    60   Input ~ 0
A4PM
Text GLabel 1900 1250 1    60   Input ~ 0
GND
Text GLabel 6050 1250 2    60   Input ~ 0
VCCPM
Text GLabel 5100 1950 0    60   Input ~ 0
VIN
$Comp
L C C1
U 1 1 5853348A
P 5100 2100
F 0 "C1" H 5125 2200 50  0000 L CNN
F 1 "1uF" H 5125 2000 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 5138 1950 50  0001 C CNN
F 3 "" H 5100 2100 50  0000 C CNN
	1    5100 2100
	1    0    0    -1  
$EndComp
Text GLabel 5100 2250 3    60   Input ~ 0
GND
Text GLabel 5100 1550 0    60   Input ~ 0
GND
Text GLabel 5100 1650 0    60   Input ~ 0
GND
Text GLabel 6050 1550 2    60   Input ~ 0
GND
Text GLabel 6050 1650 2    60   Input ~ 0
GND
Text GLabel 2650 2800 2    60   Input ~ 0
RX0U
Text GLabel 2650 2700 2    60   Input ~ 0
TX1U
Text GLabel 2650 2500 2    60   Input ~ 0
GND
Text GLabel 2650 2400 2    60   Input ~ 0
2PM
Text GLabel 2650 2300 2    60   Input ~ 0
3PM
Text GLabel 2650 2200 2    60   Input ~ 0
4PM
Text GLabel 2650 2100 2    60   Input ~ 0
5PM
Text GLabel 2650 2000 2    60   Input ~ 0
6PM
Text GLabel 2650 1900 2    60   Input ~ 0
7PM
Text GLabel 2650 1800 2    60   Input ~ 0
8PM
Text GLabel 2650 1700 2    60   Input ~ 0
9PM
Text GLabel 5900 2650 0    60   Input ~ 0
GND
Text GLabel 6400 2450 2    60   Input ~ 0
9PM
Text GLabel 6400 2650 2    60   Input ~ 0
GND
Text GLabel 5900 2450 0    60   Input ~ 0
10PM
Text GLabel 5100 1750 0    60   Input ~ 0
VM1
Text GLabel 5100 1450 0    60   Input ~ 0
VM2
Text GLabel 5900 2550 0    60   Input ~ 0
VM1
Text GLabel 6400 2550 2    60   Input ~ 0
VM2
Text GLabel 8750 1250 0    60   Input ~ 0
GND
Text GLabel 8050 1850 2    60   Input ~ 0
GND
Text GLabel 8050 1750 2    60   Input ~ 0
VCCPM
Text GLabel 8050 1650 2    60   Input ~ 0
A4PM
Text GLabel 8050 1550 2    60   Input ~ 0
A5PM
Text GLabel 8050 1150 2    60   Input ~ 0
3PM
Text GLabel 5100 1250 0    60   Input ~ 0
4PM
Text GLabel 5100 1350 0    60   Input ~ 0
5PM
Text GLabel 5100 1850 0    60   Input ~ 0
6PM
Text GLabel 6050 1950 2    60   Input ~ 0
7PM
Text GLabel 6050 1850 2    60   Input ~ 0
8PM
Text GLabel 6050 1750 2    60   Input ~ 0
5VU
Text GLabel 3500 2550 0    60   Input ~ 0
2PM
Text GLabel 3500 2100 0    60   Input ~ 0
VINU
Text GLabel 3500 1800 0    60   Input ~ 0
5VU
Text GLabel 3500 1700 0    60   Input ~ 0
3.3VU
Text GLabel 3500 2000 0    60   Input ~ 0
GND
Text GLabel 3500 1900 0    60   Input ~ 0
GND
NoConn ~ 3500 1500
NoConn ~ 3500 1400
Text GLabel 4450 2850 2    60   Input ~ 0
RX0U
Text GLabel 4450 2750 2    60   Input ~ 0
TX1U
Text GLabel 4450 2450 2    60   Input ~ 0
SS
Text GLabel 4450 1550 2    60   Input ~ 0
MOSIU
Text GLabel 4450 1450 2    60   Input ~ 0
MISOU
Text GLabel 4450 1350 2    60   Input ~ 0
CLKU
Text GLabel 4450 1250 2    60   Input ~ 0
GND
NoConn ~ 4450 2650
NoConn ~ 4450 2550
NoConn ~ 4450 2350
NoConn ~ 4450 2250
NoConn ~ 4450 2150
NoConn ~ 4450 1850
NoConn ~ 4450 1750
NoConn ~ 3500 1600
NoConn ~ 4450 1650
NoConn ~ 3500 2650
NoConn ~ 1800 1250
NoConn ~ 1700 1250
$Comp
L CONN_01X02 P16
U 1 1 58584A26
P 8200 3200
F 0 "P16" H 8200 3350 50  0000 C CNN
F 1 "CONN_01X02" V 8300 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8200 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0000 C CNN
	1    8200 3200
	1    0    0    -1  
$EndComp
Text GLabel 8000 3150 0    60   Input ~ 0
SDAU
Text GLabel 8000 3250 0    60   Input ~ 0
SCLU
NoConn ~ 2650 2600
NoConn ~ 1250 2600
NoConn ~ 3500 2750
NoConn ~ 3500 2850
NoConn ~ 3500 2450
NoConn ~ 3500 2350
Text GLabel 2350 3450 2    60   Input ~ 0
A0U
Text GLabel 1850 3450 0    60   Input ~ 0
A1U
$Comp
L CONN_02X03 P17
U 1 1 587142E5
P 2100 3350
F 0 "P17" H 2100 3550 50  0000 C CNN
F 1 "CONN_02X03" H 2100 3150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_2x03" H 2100 2150 50  0001 C CNN
F 3 "" H 2100 2150 50  0000 C CNN
	1    2100 3350
	1    0    0    -1  
$EndComp
Text GLabel 1850 3350 0    60   Input ~ 0
VCCPM
Text GLabel 2350 3350 2    60   Input ~ 0
VCCPM
Text GLabel 1850 3250 0    60   Input ~ 0
GND
Text GLabel 2350 3250 2    60   Input ~ 0
GND
Text GLabel 1250 2000 0    60   Input ~ 0
13PM
Text GLabel 6050 1350 2    60   Input ~ 0
13PM
Text GLabel 6050 1450 2    60   Input ~ 0
VINU
$EndSCHEMATC
