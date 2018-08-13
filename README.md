# HM-LC-Sw1-Pl-DN-R1_OBI
Umbau [OBI-Wifi-Stecker](https://www.obi.de/hausfunksteuerung/wifi-stecker-schuko/p/2291706) zu HM-LC-Sw1-Pl-DN-R1_OBI

Dies basiert auf der hervorragenden Arbeit von [pa-pa](https://github.com/pa-pa/AskSinPP),  [Jérôme](https://github.com/jp112sdl/Beispiel_AskSinPP) und micha68.


## Hardware

### Bauteile

#### Reichelt

[Bestellliste](https://www.reichelt.de/my/1496083)

Bauteil                  | Bestellnummer   | Anzahl | Kommentar
------------------------ | --------------- | ------ | ---------
C6                       | X5R-G0603 10/6  |   1    | -
C1, C2, C3, C8           | X7R-G0603 100N  |   4    | -
R1                       | RND 0603 1 10K  |   1    | -
U1                       | ATMEGA 328P-AU  |   1    | -
Verbinder zu U2          | SL 1X20G 2,00   |   1    | optional
Verbinder zu U2          | MPE 156-1-032   |   1    | optional


#### Sonstiges

Bauteil | Bestellnummer            | Anzahl | Kommentar
------- | ------------------------ | ------ | ---------
U2      | CC1101 Funkmodul 868 MHz |   1    | z.B. [eBay](https://www.ebay.de/itm/272455136087)


### Programmieradapter
- 1x ISP (um den Bootloader zu brennen)
- 1x FTDI Adapter (z.B. [Amazon](https://www.amazon.de/FT232RL-FTDI-USB-auf-TTL-Serienadapter-Arduino/dp/B00HSXDGOE))


## Software

### Fuses

Low:  0xE2
High: 0xD2
Ext:  0xFF

### Bootloader

Aus der Arduino IDE, für ATmega328P, 3,3 V, 8 MHz


### Firmware

https://github.com/jp112sdl/Beispiel_AskSinPP/tree/master/examples/HM-LC-Sw1-Pl-DN-R1_OBI
