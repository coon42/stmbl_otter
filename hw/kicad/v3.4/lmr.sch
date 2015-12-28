EESchema Schematic File Version 2
LIBS:conn
LIBS:power
LIBS:stmbl_3.4-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 15
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
L lmr1420X IC?
U 1 1 565A1FC6
P 4050 3600
F 0 "IC?" H 3850 3850 60  0000 C CNN
F 1 "lmr1420X" H 4000 3350 60  0000 C CNN
F 2 "" H 3950 3600 60  0000 C CNN
F 3 "" H 3950 3600 60  0000 C CNN
	1    4050 3600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 56606890
P 3350 3850
F 0 "C?" H 3375 3950 50  0000 L CNN
F 1 "2.2µ" H 3375 3750 50  0000 L CNN
F 2 "" H 3388 3700 30  0000 C CNN
F 3 "" H 3350 3850 60  0000 C CNN
F 4 "30V" H 3350 3850 60  0001 C CNN "Voltage"
	1    3350 3850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 566068C0
P 5800 3850
F 0 "C?" H 5825 3950 50  0000 L CNN
F 1 "47µ" H 5825 3750 50  0000 L CNN
F 2 "" H 5838 3700 30  0000 C CNN
F 3 "" H 5800 3850 60  0000 C CNN
F 4 "6.3V" H 5800 3850 60  0001 C CNN "Voltage"
	1    5800 3850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5660690B
P 4850 3700
F 0 "R?" V 4930 3700 50  0000 C CNN
F 1 "5.6k" V 4850 3700 50  0000 C CNN
F 2 "" V 4780 3700 30  0000 C CNN
F 3 "" H 4850 3700 30  0000 C CNN
	1    4850 3700
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 56606967
P 4600 3950
F 0 "R?" V 4680 3950 50  0000 C CNN
F 1 "1k" V 4600 3950 50  0000 C CNN
F 2 "" V 4530 3950 30  0000 C CNN
F 3 "" H 4600 3950 30  0000 C CNN
	1    4600 3950
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 566069A3
P 5200 3950
F 0 "D?" H 5200 4050 50  0000 C CNN
F 1 "60V 1A" H 5200 3850 50  0000 C CNN
F 2 "" H 5200 3950 60  0000 C CNN
F 3 "" H 5200 3950 60  0000 C CNN
	1    5200 3950
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 56606BAA
P 4750 3500
F 0 "C?" H 4775 3600 50  0000 L CNN
F 1 "0.22µ 16V" H 4775 3400 50  0000 L CNN
F 2 "" H 4788 3350 30  0000 C CNN
F 3 "" H 4750 3500 60  0000 C CNN
	1    4750 3500
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L?
U 1 1 56606C2D
P 5500 3500
F 0 "L?" V 5450 3500 50  0000 C CNN
F 1 "15µH 1.5A" V 5600 3500 50  0000 C CNN
F 2 "" H 5500 3500 60  0000 C CNN
F 3 "" H 5500 3500 60  0000 C CNN
	1    5500 3500
	0    -1   -1   0   
$EndComp
$Comp
L LM7812 U?
U 1 1 56607378
P 2450 3550
F 0 "U?" H 2600 3354 60  0000 C CNN
F 1 "LM7812" H 2450 3750 60  0000 C CNN
F 2 "" H 2450 3550 60  0000 C CNN
F 3 "" H 2450 3550 60  0000 C CNN
	1    2450 3550
	-1   0    0    -1  
$EndComp
$Comp
L LM7812 U?
U 1 1 566074A9
P 7050 3550
F 0 "U?" H 7200 3354 60  0000 C CNN
F 1 "zldo1117" H 7050 3750 60  0000 C CNN
F 2 "" H 7050 3550 60  0000 C CNN
F 3 "" H 7050 3550 60  0000 C CNN
	1    7050 3550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 566075DC
P 7550 3850
F 0 "C?" H 7575 3950 50  0000 L CNN
F 1 "4.7µ" H 7575 3750 50  0000 L CNN
F 2 "" H 7588 3700 30  0000 C CNN
F 3 "" H 7550 3850 60  0000 C CNN
F 4 "16V" H 7550 3850 60  0001 C CNN "Voltage"
	1    7550 3850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 566076FA
P 6550 3850
F 0 "C?" H 6575 3950 50  0000 L CNN
F 1 "4.7µ" H 6575 3750 50  0000 L CNN
F 2 "" H 6588 3700 30  0000 C CNN
F 3 "" H 6550 3850 60  0000 C CNN
F 4 "16V" H 6550 3850 60  0001 C CNN "Voltage"
	1    6550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3500 4600 3500
Wire Wire Line
	4900 3500 5200 3500
Wire Wire Line
	5200 3500 5200 3800
Wire Wire Line
	5800 3500 5800 3700
Wire Wire Line
	1950 4100 7550 4100
Wire Wire Line
	5800 3700 5000 3700
Wire Wire Line
	5800 4100 5800 4000
Connection ~ 5800 3700
Wire Wire Line
	4700 3700 4500 3700
Wire Wire Line
	4600 3800 4600 3700
Connection ~ 4600 3700
Wire Wire Line
	3350 4000 3350 4200
Connection ~ 4600 4100
Wire Wire Line
	3600 3700 3600 4100
Connection ~ 3600 4100
Wire Wire Line
	3350 3400 3350 3700
Wire Wire Line
	2850 3500 3600 3500
Wire Wire Line
	3600 3600 3500 3600
Wire Wire Line
	3500 3600 3500 3500
Connection ~ 3500 3500
Wire Wire Line
	4500 3600 5000 3600
Wire Wire Line
	5000 3600 5000 3500
Connection ~ 5000 3500
Wire Wire Line
	7550 4100 7550 4000
Connection ~ 5800 4100
Wire Wire Line
	6550 4000 6550 4100
Connection ~ 6550 4100
Wire Wire Line
	7050 3800 7050 4100
Connection ~ 7050 4100
Wire Wire Line
	6550 3700 6550 3500
Wire Wire Line
	5800 3500 6650 3500
Connection ~ 6550 3500
Wire Wire Line
	7450 3500 7550 3500
Wire Wire Line
	7550 3400 7550 3700
$Comp
L +5V #PWR?
U 1 1 5660786F
P 6050 3400
F 0 "#PWR?" H 6050 3250 50  0001 C CNN
F 1 "+5V" H 6050 3540 50  0000 C CNN
F 2 "" H 6050 3400 60  0000 C CNN
F 3 "" H 6050 3400 60  0000 C CNN
	1    6050 3400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 566078DE
P 7550 3400
F 0 "#PWR?" H 7550 3250 50  0001 C CNN
F 1 "+3.3V" H 7550 3540 50  0000 C CNN
F 2 "" H 7550 3400 60  0000 C CNN
F 3 "" H 7550 3400 60  0000 C CNN
	1    7550 3400
	1    0    0    -1  
$EndComp
Connection ~ 5800 3500
$Comp
L GND #PWR?
U 1 1 5660791B
P 3350 4200
F 0 "#PWR?" H 3350 3950 50  0001 C CNN
F 1 "GND" H 3350 4050 50  0000 C CNN
F 2 "" H 3350 4200 60  0000 C CNN
F 3 "" H 3350 4200 60  0000 C CNN
	1    3350 4200
	1    0    0    -1  
$EndComp
Connection ~ 3350 4100
$Comp
L +24V #PWR?
U 1 1 566079E4
P 3350 3400
F 0 "#PWR?" H 3350 3250 50  0001 C CNN
F 1 "+24V" H 3350 3540 50  0000 C CNN
F 2 "" H 3350 3400 60  0000 C CNN
F 3 "" H 3350 3400 60  0000 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
Connection ~ 3350 3500
Wire Wire Line
	6050 3400 6050 3500
Connection ~ 6050 3500
Connection ~ 7550 3500
$Comp
L CP C?
U 1 1 56607DBD
P 2950 3850
F 0 "C?" H 2975 3950 50  0000 L CNN
F 1 "2.2µ" H 2975 3750 50  0000 L CNN
F 2 "" H 2988 3700 30  0000 C CNN
F 3 "" H 2950 3850 60  0000 C CNN
F 4 "30V" H 2950 3850 60  0001 C CNN "Voltage"
	1    2950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4100 2950 4000
Wire Wire Line
	2950 3700 2950 3500
Connection ~ 2950 3500
Wire Wire Line
	2450 4100 2450 3800
Connection ~ 2950 4100
$Comp
L C C?
U 1 1 56608224
P 1950 3750
F 0 "C?" H 1975 3850 50  0000 L CNN
F 1 "4.7µ" H 1975 3650 50  0000 L CNN
F 2 "" H 1988 3600 30  0000 C CNN
F 3 "" H 1950 3750 60  0000 C CNN
F 4 "16V" H 1950 3750 60  0001 C CNN "Voltage"
	1    1950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3900 1950 4100
Connection ~ 2450 4100
Wire Wire Line
	2050 3500 1950 3500
Wire Wire Line
	1950 3400 1950 3600
$Comp
L +12V #PWR?
U 1 1 5660831D
P 1950 3400
F 0 "#PWR?" H 1950 3250 50  0001 C CNN
F 1 "+12V" H 1950 3540 50  0000 C CNN
F 2 "" H 1950 3400 60  0000 C CNN
F 3 "" H 1950 3400 60  0000 C CNN
	1    1950 3400
	1    0    0    -1  
$EndComp
Connection ~ 1950 3500
$Comp
L GND #PWR?
U 1 1 5660843E
P 2500 2500
F 0 "#PWR?" H 2500 2250 50  0001 C CNN
F 1 "GND" H 2500 2350 50  0000 C CNN
F 2 "" H 2500 2500 60  0000 C CNN
F 3 "" H 2500 2500 60  0000 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR?
U 1 1 56608476
P 2500 2200
F 0 "#PWR?" H 2500 2050 50  0001 C CNN
F 1 "+24V" H 2500 2340 50  0000 C CNN
F 2 "" H 2500 2200 60  0000 C CNN
F 3 "" H 2500 2200 60  0000 C CNN
	1    2500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2300 2500 2300
Wire Wire Line
	2500 2300 2500 2200
Wire Wire Line
	2400 2400 2500 2400
Wire Wire Line
	2500 2400 2500 2500
$Comp
L ZENER D?
U 1 1 56694BC4
P 6300 3800
F 0 "D?" H 6300 3900 50  0000 C CNN
F 1 "5V" H 6300 3700 50  0000 C CNN
F 2 "" H 6300 3800 60  0000 C CNN
F 3 "" H 6300 3800 60  0000 C CNN
	1    6300 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 3600 6300 3500
Connection ~ 6300 3500
Wire Wire Line
	6300 4000 6300 4100
Connection ~ 6300 4100
$Comp
L CONN_01X02 P?
U 1 1 566CDEAC
P 2200 2350
F 0 "P?" H 2200 2500 50  0000 C CNN
F 1 "CONN_01X02" V 2300 2350 50  0000 C CNN
F 2 "" H 2200 2350 60  0000 C CNN
F 3 "" H 2200 2350 60  0000 C CNN
	1    2200 2350
	-1   0    0    1   
$EndComp
$EndSCHEMATC