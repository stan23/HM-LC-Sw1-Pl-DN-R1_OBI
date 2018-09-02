[![Creative Commons Lizenzvertrag](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

Dieses Werk ist lizenziert unter einer [Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 4.0 International Lizenz](http://creativecommons.org/licenses/by-nc-sa/4.0/).



# HM-LC-Sw1-Pl-DN-R1_OBI
Umbau [OBI-Wifi-Stecker](https://www.obi.de/hausfunksteuerung/wifi-stecker-schuko/p/2291706) zu HM-LC-Sw1-Pl-DN-R1_OBI

Dies basiert auf der hervorragenden Arbeit von [pa-pa](https://github.com/pa-pa/AskSinPP),  [Jérôme](https://github.com/jp112sdl/Beispiel_AskSinPP) und micha68.


# Hardware

### Bauteile

#### Reichelt

[Bestellliste](https://www.reichelt.de/my/1496083)

Bauteil                  | Bestellnummer   | Anzahl | Kommentar
------------------------ | --------------- | ------ | ---------
C6                       | X5R-G0603 10/6  |   1    | -
C1, C2, C3, C8           | X7R-G0603 100N  |   4    | -
R1                       | RND 0603 1 10K  |   1    | -
U1                       | ATMEGA 328P-AU  |   1    | -
Verbinder zu U2          | SL 1X20G 2,00   |   1    | optional, hilfreich zum Anschließen des ISP
Verbinder zu U2          | MPE 156-1-032   |   1    | optional


#### Sonstiges

Bauteil | Bestellnummer            | Anzahl | Kommentar
------- | ------------------------ | ------ | ---------
U2      | CC1101 Funkmodul 868 MHz |   1    | z.B. [eBay](https://www.ebay.de/itm/272455136087)

~8,3 cm Draht als Antenne


### Programmieradapter
- 1x ISP (um den Bootloader zu brennen, z.B. [diesen hier](https://www.diamex.de/dxshop/USB-ISP-Programmer-fuer-Atmel-AVR-Rev2))
- 1x FTDI Adapter (z.B. [Amazon](https://www.amazon.de/FT232RL-FTDI-USB-auf-TTL-Serienadapter-Arduino/dp/B00HSXDGOE))


# Software

### Fuses
Ext:  0xFF
High: 0xD2
Low:  0xE2

`C:\Program Files (x86)\Arduino\hardware\tools\avr\bin> .\avrdude -C ..\etc\avrdude.conf -p m328p -P com7 -c stk500v2 -U lfuse:w:0xE2:m -U hfuse:w:0xD2:m -U efuse:w:0xFF:m`

### Bootloader

Aus der Arduino IDE, für ATmega328P (3,3 V, 8 MHz):

`C:\Program Files (x86)\Arduino\hardware\tools\avr\bin> .\avrdude -C ..\etc\avrdude.conf -p m328p -P com7 -c stk500v2 -U flash:w:..\..\..\arduino\avr\bootloaders\atmega\ATmegaBOOT_168_atmega328_pro_8MHz.hex`

### Firmware

https://github.com/jp112sdl/Beispiel_AskSinPP/tree/master/examples/HM-LC-Sw1-Pl-DN-R1_OBI

Benötigt wird die AskSinPP aus dem master-Branch, der V3-Branch ist zu alt.


# Bauanleitung

Zuerst den ATmega auflöten, die Markierung (kleiner Punkt) muss zur Beschriftung U1 zeigen.
Danach die Kondensatoren und den Widerstand auflöten.

Mit einem Multimeter messen ob kein Kurzschluss zwischen VCC und GND besteht (mehrere 10 K Widerstand sind okay).

Den ISP Programmieradapter an die Lötaugen des CC1101 anschließen. Ein Adapterkabel vom 6-poligen ISP-Adapter auf eine 2 mm-Stiftleiste wird empfohlen :)

![ISP Anschluss](https://github.com/stan23/HM-LC-Sw1-Pl-DN-R1_OBI/blob/master/Bilder/Platine_ISP_Beschriftung.jpg)

Pin am ISP-Kabel | Bedeutung
---------------- | ----------
1                | MISO
2                | VCC
3                | SCK
4                | MOSI
5                | Reset
6                | GND

Über den ISP den Bootloader (ATmegaBOOT_168_atmega328_pro_8MHz.hex) der mit der Arduino IDE mitgeliefert wird, brennen und die Fuses setzen. Dabei muss die Platine mit 3,3 V oder 5 V versorgt werden, entweder vom ISP oder vom FTDI-Adapter. So lange das CC1101 nicht bestückt ist, sind 5 V kein Problem.

*Achtung*: nicht die default Fuses der Arduino IDE brennen, sonst startet der ATmega nicht mehr weil er einen externen Oszillator erwartet!

Danach den FTDI USB-seriell-Adapter an die 2,54 mm-Stiftleiste stecken und mit der Arduino IDE den Sketch flashen.

Anschließend kann das Funkmodul auf der Rückseite aufgelötet werden. Dabei gibt es verschiedene Möglichkeiten:
- mit Stift- und Buchsenleiste (abnehmbar)
- mit Stiftleiste
- flach auf die SMD-Pads, hier empfiehlt es sich die Lötaugen des CC1101 zur Hälfte abzufeilen

An den Antennenanschluss muss noch das 8,3 cm Drahtstück angelötet werden.

Jetzt wieder den FTDI USB-seriell-Adapter an die 2,54 mm-Stiftleiste stecken und mit einem Terminalprogramm die Ausgabe beobachten. Es sollten schon *Ignore...*-Meldungen empfangen und angezeigt werden.

Als nächstes muss das überflüssige WLAN-Modul aus dem OBI-Stecker ausgelötet und die neue Platine eingelötet werden. Der Antennendraht muss mit Heißkleber im Gehäuse befestigt werden, so dass er möglichst weit von 230 V entfernt ist!

Nach dem Zusammenbau kann der Anlernvorgang durch langes Drücken der einzigen Taste gestartet werden. Die Anlernprozedur wird durch langsames Blinken der blauen WLAN-LED angezeigt, der Erfolg durch schnelles Blinken.



# Bilder

![Funkmodul](https://github.com/stan23/HM-LC-Sw1-Pl-DN-R1_OBI/blob/master/Bilder/IMG_20180824_111519.jpg)
![ATmega](https://github.com/stan23/HM-LC-Sw1-Pl-DN-R1_OBI/blob/master/Bilder/IMG_20180824_111551.jpg)
![eingelötet](https://github.com/stan23/HM-LC-Sw1-Pl-DN-R1_OBI/blob/master/Bilder/IMG_20180824_111911.jpg)
![eingelötet](https://github.com/stan23/HM-LC-Sw1-Pl-DN-R1_OBI/blob/master/Bilder/IMG_20180824_111933.jpg)
![fertig](https://github.com/stan23/HM-LC-Sw1-Pl-DN-R1_OBI/blob/master/Bilder/IMG_20180824_112826.jpg)
