# Frequency counter of square and harmonic and/or ECG signal


### Team members

* David Hromas 
* Filip Seč
* Matus Bohucky 
* Lev Meshores 

### Table of contents

* [Project objectives](#objectives)
* [Hardware description](#hardware)
* [VHDL modules description and simulations](#modules)
* [TOP module description and simulations](#top)
* [Video](#video)
* [References](#references)

<a name="objectives"></a>

## Project objectives

Napsat kód pro frekvenační čítač a implementovat ho na hardware. 

<a name="hardware">Digilent Nexys A7-50T</a>

## Hardware description

![your figure](https://github.com/davidhro/DE1_projekt/blob/main/projekt/dokumentace/nexys-a7-callout.png)

Pro projekt byla použita deska Nexys A7-50T. Analogový signál byl do desky přiveden pomocí Pmod portů s AD převodníkem (10).
Dále bylo použito osm 7 segmentových displajů (21), které tato deska má.

## VHDL modules description and simulations

### clock_enable
Tento modul generuje clock enable signál.

<a name="top"></a>

### hex_7seg
Tento modul převádí binární signál na hodnoty na 7 segmentovém displeji.

<a name="top"></a>

### driver_7seg_8digit
Tento modul slouží jako driver pro 8 displajů.

<a name="top"></a>

## TOP module description and simulations

Write your text here.

<a name="video"></a>

## Video

Write your text here

<a name="references"></a>

## References

1. http://quitoart.blogspot.com/2017/07/vhdl-frequency-counter-square-wave.html
2. https://www.electronics-notes.com/articles/test-methods/frequency-counter-timer/how-does-a-frequency-counter-work-operation.php
3. https://github.com/m-bubnov/frequency_counter_FPGA
4. https://github.com/ZachariaszMonka/fpga_frequency_counter/tree/main/src
5. https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual?redirect=1
