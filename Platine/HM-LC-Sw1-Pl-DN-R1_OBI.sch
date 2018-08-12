EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:relais
LIBS:am1s
LIBS:wago-p-250
LIBS:cc1101-module
LIBS:HM-LC-Sw1-Pl-DN-R1_OBI-cache
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
L ATMEGA328P-AU U1
U 1 1 5AD1D823
P 5225 2550
F 0 "U1" H 4475 3800 50  0000 L BNN
F 1 "ATMEGA328P-AU" H 5625 1150 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 5225 2550 50  0001 C CIN
F 3 "" H 5225 2550 50  0001 C CNN
	1    5225 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5AD1D874
P 4150 4000
F 0 "#PWR01" H 4150 3750 50  0001 C CNN
F 1 "GND" H 4150 3850 50  0000 C CNN
F 2 "" H 4150 4000 50  0001 C CNN
F 3 "" H 4150 4000 50  0001 C CNN
	1    4150 4000
	1    0    0    -1  
$EndComp
Text Label 6375 3050 0    60   ~ 0
RXD
Text Label 6375 3150 0    60   ~ 0
TXD
Text Label 6375 2900 0    60   ~ 0
Reset
$Comp
L R R1
U 1 1 5AD3185F
P 6800 1100
F 0 "R1" V 6880 1100 50  0000 C CNN
F 1 "10k" V 6800 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6730 1100 50  0001 C CNN
F 3 "" H 6800 1100 50  0001 C CNN
	1    6800 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5AD31983
P 6800 775
F 0 "#PWR02" H 6800 625 50  0001 C CNN
F 1 "VCC" H 6800 925 50  0000 C CNN
F 2 "" H 6800 775 50  0001 C CNN
F 3 "" H 6800 775 50  0001 C CNN
	1    6800 775 
	1    0    0    -1  
$EndComp
$Comp
L CC1101 U2
U 1 1 5AD31B90
P 9525 1800
F 0 "U2" H 9525 2300 60  0000 C CNN
F 1 "CC1101" H 9525 1300 60  0000 C CNN
F 2 "CC1101_Module:CC1101_Module" H 9375 2350 60  0001 C CNN
F 3 "" H 9375 2350 60  0001 C CNN
	1    9525 1800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5AD31EC8
P 8575 1100
F 0 "C3" H 8600 1200 50  0000 L CNN
F 1 "100n" H 8600 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8613 950 50  0001 C CNN
F 3 "" H 8575 1100 50  0001 C CNN
	1    8575 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5AD31F67
P 8575 2525
F 0 "#PWR03" H 8575 2275 50  0001 C CNN
F 1 "GND" H 8575 2375 50  0000 C CNN
F 2 "" H 8575 2525 50  0001 C CNN
F 3 "" H 8575 2525 50  0001 C CNN
	1    8575 2525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5AD31FA4
P 10250 2075
F 0 "#PWR04" H 10250 1825 50  0001 C CNN
F 1 "GND" H 10250 1925 50  0000 C CNN
F 2 "" H 10250 2075 50  0001 C CNN
F 3 "" H 10250 2075 50  0001 C CNN
	1    10250 2075
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5AD320F2
P 8575 775
F 0 "#PWR05" H 8575 625 50  0001 C CNN
F 1 "VCC" H 8575 925 50  0000 C CNN
F 2 "" H 8575 775 50  0001 C CNN
F 3 "" H 8575 775 50  0001 C CNN
	1    8575 775 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 5AD3211B
P 8850 775
F 0 "#PWR06" H 8850 625 50  0001 C CNN
F 1 "VCC" H 8850 925 50  0000 C CNN
F 2 "" H 8850 775 50  0001 C CNN
F 3 "" H 8850 775 50  0001 C CNN
	1    8850 775 
	1    0    0    -1  
$EndComp
Text Label 6375 1750 0    60   ~ 0
MOSI
Text Label 6375 1850 0    60   ~ 0
MISO
Text Label 6375 1950 0    60   ~ 0
SCK
Text Label 6375 3650 0    60   ~ 0
D6
$Comp
L C C2
U 1 1 5AD32EA5
P 3500 1750
F 0 "C2" H 3525 1850 50  0000 L CNN
F 1 "100n" H 3525 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3538 1600 50  0001 C CNN
F 3 "" H 3500 1750 50  0001 C CNN
	1    3500 1750
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AD32FF2
P 3225 1750
F 0 "C1" H 3250 1850 50  0000 L CNN
F 1 "100n" H 3250 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3263 1600 50  0001 C CNN
F 3 "" H 3225 1750 50  0001 C CNN
	1    3225 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5AD3310A
P 3225 2025
F 0 "#PWR07" H 3225 1775 50  0001 C CNN
F 1 "GND" H 3225 1875 50  0000 C CNN
F 2 "" H 3225 2025 50  0001 C CNN
F 3 "" H 3225 2025 50  0001 C CNN
	1    3225 2025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5AD3313C
P 3500 2025
F 0 "#PWR08" H 3500 1775 50  0001 C CNN
F 1 "GND" H 3500 1875 50  0000 C CNN
F 2 "" H 3500 2025 50  0001 C CNN
F 3 "" H 3500 2025 50  0001 C CNN
	1    3500 2025
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5AD3532A
P 7125 1075
F 0 "C8" H 7150 1175 50  0000 L CNN
F 1 "100n" H 7150 975 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7163 925 50  0001 C CNN
F 3 "" H 7125 1075 50  0001 C CNN
	1    7125 1075
	1    0    0    -1  
$EndComp
Text Label 7125 775  0    60   ~ 0
DTR
$Comp
L Conn_01x06 J2
U 1 1 5AD362B5
P 1225 2650
F 0 "J2" H 1225 2950 50  0000 C CNN
F 1 "FTDI" H 1225 2250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 1225 2650 50  0001 C CNN
F 3 "" H 1225 2650 50  0001 C CNN
	1    1225 2650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5AD366B1
P 1575 3375
F 0 "#PWR09" H 1575 3125 50  0001 C CNN
F 1 "GND" H 1575 3225 50  0000 C CNN
F 2 "" H 1575 3375 50  0001 C CNN
F 3 "" H 1575 3375 50  0001 C CNN
	1    1575 3375
	1    0    0    -1  
$EndComp
Text Label 1725 2450 0    60   ~ 0
DTR
Text Label 1725 2650 0    60   ~ 0
RXD
Text Label 1725 2550 0    60   ~ 0
TXD
$Comp
L Conn_01x04 J3
U 1 1 5AD391AF
P 1225 4075
F 0 "J3" H 1225 4275 50  0000 C CNN
F 1 "Conn_01x04" H 1225 3775 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 1225 4075 50  0001 C CNN
F 3 "" H 1225 4075 50  0001 C CNN
	1    1225 4075
	-1   0    0    -1  
$EndComp
Text Label 1725 3975 0    60   ~ 0
MISO
Text Label 1725 4075 0    60   ~ 0
MOSI
Text Label 1725 4175 0    60   ~ 0
SCK
Text Label 1725 4275 0    60   ~ 0
Reset
$Comp
L Conn_01x01 J7
U 1 1 5AD41019
P 10525 1800
F 0 "J7" H 10675 1800 50  0000 C CNN
F 1 "Ant" H 10825 1800 50  0000 C CNN
F 2 "Connectors:Pin_d0.7mm_L6.5mm_W1.8mm_FlatFork" H 10525 1800 50  0001 C CNN
F 3 "" H 10525 1800 50  0001 C CNN
	1    10525 1800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J8
U 1 1 5ADF8BE1
P 10525 1950
F 0 "J8" H 10675 1950 50  0000 C CNN
F 1 "AntGND" H 10900 1950 50  0000 C CNN
F 2 "Connectors:Pin_d0.7mm_L6.5mm_W1.8mm_FlatFork" H 10525 1950 50  0001 C CNN
F 3 "" H 10525 1950 50  0001 C CNN
	1    10525 1950
	1    0    0    -1  
$EndComp
Text Notes 950  2475 0    60   ~ 0
FTDI
Text Notes 975  4000 0    60   ~ 0
ISP
Wire Wire Line
	4325 3550 4150 3550
Wire Wire Line
	4150 3550 4150 4000
Wire Wire Line
	4325 3650 4150 3650
Connection ~ 4150 3650
Wire Wire Line
	4325 3750 4150 3750
Connection ~ 4150 3750
Wire Wire Line
	6225 3050 6375 3050
Wire Wire Line
	6225 3150 6375 3150
Wire Wire Line
	6800 1250 6800 2900
Wire Wire Line
	6800 775  6800 950 
Wire Wire Line
	10075 1650 10250 1650
Wire Wire Line
	10250 1650 10250 2075
Wire Wire Line
	10075 1950 10325 1950
Connection ~ 10250 1950
Wire Wire Line
	8575 775  8575 950 
Wire Wire Line
	8850 775  8850 1450
Wire Wire Line
	8850 1450 9025 1450
Wire Wire Line
	9025 1650 7200 1650
Wire Wire Line
	7200 1650 7200 1750
Wire Wire Line
	7200 1750 6225 1750
Wire Wire Line
	6225 1850 9025 1850
Wire Wire Line
	8575 1250 8575 2525
Wire Wire Line
	8575 1550 9025 1550
Connection ~ 8575 1550
Wire Wire Line
	9025 1750 7325 1750
Wire Wire Line
	7325 1750 7325 1950
Wire Wire Line
	7325 1950 6225 1950
Wire Wire Line
	6225 1650 7075 1650
Wire Wire Line
	7075 1650 7075 2150
Wire Wire Line
	7075 2150 9025 2150
Wire Wire Line
	9025 2050 7325 2050
Wire Wire Line
	7325 2050 7325 3250
Wire Wire Line
	7325 3250 6225 3250
Wire Wire Line
	6225 3650 6375 3650
Wire Wire Line
	4025 2050 4325 2050
Wire Wire Line
	4025 1750 4325 1750
Connection ~ 4025 1750
Wire Wire Line
	4325 1550 4025 1550
Connection ~ 4025 1550
Connection ~ 4025 1450
Wire Wire Line
	3500 1900 3500 2025
Wire Wire Line
	3500 1450 3500 1600
Connection ~ 3500 1450
Wire Wire Line
	2950 1250 2950 1600
Connection ~ 2950 1450
Wire Wire Line
	6800 1325 7225 1325
Wire Wire Line
	7125 1325 7125 1225
Connection ~ 6800 1325
Wire Wire Line
	7125 925  7125 775 
Wire Wire Line
	1425 2950 1575 2950
Wire Wire Line
	1575 2850 1575 3375
Wire Wire Line
	1425 2850 1575 2850
Connection ~ 1575 2950
Wire Wire Line
	1425 2650 1725 2650
Wire Wire Line
	1425 2550 1725 2550
Wire Wire Line
	1425 2450 1725 2450
Wire Wire Line
	1425 3975 1725 3975
Wire Wire Line
	1425 4075 1725 4075
Wire Wire Line
	1425 4175 1725 4175
Wire Wire Line
	1425 4275 1725 4275
Wire Wire Line
	10325 1800 10075 1800
$Comp
L VCC #PWR010
U 1 1 5B2D3BC8
P 1550 2325
F 0 "#PWR010" H 1550 2175 50  0001 C CNN
F 1 "VCC" H 1550 2475 50  0000 C CNN
F 2 "" H 1550 2325 50  0001 C CNN
F 3 "" H 1550 2325 50  0001 C CNN
	1    1550 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 2750 1550 2750
Wire Wire Line
	1550 2750 1550 2325
Wire Wire Line
	3225 1900 3225 2025
Wire Wire Line
	6800 2900 6225 2900
NoConn ~ 4325 2900
NoConn ~ 4325 2800
NoConn ~ 6225 3750
NoConn ~ 6225 2800
NoConn ~ 6225 2700
NoConn ~ 6225 2600
NoConn ~ 6225 2500
NoConn ~ 6225 2150
NoConn ~ 6225 2050
NoConn ~ 6225 1550
NoConn ~ 9025 1950
Text Notes 1400 3925 0    60   Italic 12
DNI
$Comp
L Conn_01x01 J4
U 1 1 5B4BEEED
P 7425 1325
F 0 "J4" H 7575 1325 50  0000 C CNN
F 1 "Reset" H 7725 1325 50  0000 C CNN
F 2 "Connectors:Pin_d0.7mm_L6.5mm_W1.8mm_FlatFork" H 7425 1325 50  0001 C CNN
F 3 "" H 7425 1325 50  0001 C CNN
	1    7425 1325
	1    0    0    -1  
$EndComp
Connection ~ 7125 1325
Text Notes 10575 7650 0    60   ~ 0
0.2
$Comp
L VCC #PWR011
U 1 1 5B688ABB
P 2950 1250
F 0 "#PWR011" H 2950 1100 50  0001 C CNN
F 1 "VCC" H 2950 1400 50  0000 C CNN
F 2 "" H 2950 1250 50  0001 C CNN
F 3 "" H 2950 1250 50  0001 C CNN
	1    2950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 1450 4025 2050
NoConn ~ 6225 3350
NoConn ~ 6225 2300
NoConn ~ 6225 2400
Wire Wire Line
	6225 3550 6375 3550
Text Label 6375 3550 0    60   ~ 0
D5
$Comp
L Conn_01x06 J1
U 1 1 5B6890A3
P 9525 4250
F 0 "J1" H 9525 4550 50  0000 C CNN
F 1 "Conn_OBI" H 9525 3850 50  0000 C CNN
F 2 "OBI_Wifi:OBI_Wifi_Connector" H 9525 4250 50  0001 C CNN
F 3 "" H 9525 4250 50  0001 C CNN
	1    9525 4250
	1    0    0    -1  
$EndComp
Text Notes 9625 4100 0    60   ~ 0
Relay Off
Text Notes 9625 4200 0    60   ~ 0
Network LED
Text Notes 9625 4300 0    60   ~ 0
Relay On
Text Notes 9625 4400 0    60   ~ 0
Button
Text Notes 9625 4500 0    60   ~ 0
VCC
Text Notes 9625 4600 0    60   ~ 0
GND
Wire Wire Line
	6225 3450 6375 3450
Text Label 6375 3450 0    60   ~ 0
D4
Wire Wire Line
	6225 1450 6375 1450
Text Label 6375 1450 0    60   ~ 0
B0
$Comp
L GND #PWR012
U 1 1 5B689B52
P 9225 4625
F 0 "#PWR012" H 9225 4375 50  0001 C CNN
F 1 "GND" H 9225 4475 50  0000 C CNN
F 2 "" H 9225 4625 50  0001 C CNN
F 3 "" H 9225 4625 50  0001 C CNN
	1    9225 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	9225 4625 9225 4550
Wire Wire Line
	9225 4550 9325 4550
$Comp
L VCC #PWR013
U 1 1 5B689C9D
P 9225 3975
F 0 "#PWR013" H 9225 3825 50  0001 C CNN
F 1 "VCC" H 9225 4125 50  0000 C CNN
F 2 "" H 9225 3975 50  0001 C CNN
F 3 "" H 9225 3975 50  0001 C CNN
	1    9225 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	9225 3975 9225 4450
Wire Wire Line
	9225 4450 9325 4450
Wire Wire Line
	9325 4050 9025 4050
Wire Wire Line
	9325 4150 9025 4150
Wire Wire Line
	9325 4250 9025 4250
Wire Wire Line
	9325 4350 9025 4350
Text Label 9025 4050 2    60   ~ 0
D6
Text Label 9025 4150 2    60   ~ 0
D4
Text Label 9025 4250 2    60   ~ 0
D5
Text Label 9025 4350 2    60   ~ 0
B0
Wire Wire Line
	2950 1450 4325 1450
$Comp
L C C6
U 1 1 5B6E837A
P 2950 1750
F 0 "C6" H 2975 1850 50  0000 L CNN
F 1 "10u" H 2975 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2988 1600 50  0001 C CNN
F 3 "" H 2950 1750 50  0001 C CNN
	1    2950 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5B6E8404
P 2950 2025
F 0 "#PWR014" H 2950 1775 50  0001 C CNN
F 1 "GND" H 2950 1875 50  0000 C CNN
F 2 "" H 2950 2025 50  0001 C CNN
F 3 "" H 2950 2025 50  0001 C CNN
	1    2950 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2025 2950 1900
Wire Wire Line
	3225 1600 3225 1450
Connection ~ 3225 1450
$Comp
L CC1101 U2_alt1
U 1 1 5B6EDE60
P 9525 1800
F 0 "U2_alt1" H 9525 2300 60  0000 C CNN
F 1 "CC1101" H 9525 1300 60  0000 C CNN
F 2 "CC1101_Module:CC1101_SMD" H 9375 2350 60  0001 C CNN
F 3 "" H 9375 2350 60  0001 C CNN
	1    9525 1800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
