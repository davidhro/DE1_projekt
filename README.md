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

Napsat kód pro frekvenční čítač a implementovat ho na hardware. 



## Hardware description

<a name="hardware">Digilent Nexys A7-50T</a>

![your figure](https://github.com/davidhro/DE1_projekt/blob/main/projekt/dokumentace/nexys-a7-callout.png)

Pro projekt byla použita deska Nexys A7-50T. Analogový signál byl do desky přiveden pomocí Pmod portů s AD převodníkem (10).
Dále bylo použito osm 7 segmentových displajů (21), které tato deska má.

## VHDL modules description and simulations

### clock_enable
Tento modul generuje clock enable signál.

<a name="top"></a>


![your figure]()
### hex_7seg
Tento modul převádí binární signál na hodnoty na 7 segmentovém displeji.

   | **Hex** | **Inputs** | **A** | **B** | **C** | **D** | **E** | **F** | **G** |
   | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0000 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
   | 1 | 0001 | 1 | 0 | 0 | 1 | 1 | 1 | 1 |
   | 2 | 0010 | 0  | 0 | 1 | 0 | 0  | 1 | 0 |
   | 3 | 0011 | 0 | 0 | 0 | 0 | 1 | 1 | 0 |
   | 4 | 0100 | 1 | 0 | 0 | 1 | 1 | 0 | 0 |
   | 5 | 0101 | 0 | 1 | 0 | 0 | 1 | 0 | 0 |
   | 6 | 0110 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
   | 7 | 0111 | 0 | 0 | 0 | 1 | 1 |  1| 1 |
   | 8 | 1000 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
   | 9 | 1001 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |


<a name="top"></a>

![your figure]()
### driver_7seg_8digit
Tento modul slouží jako driver pro 8 displajů.

<a name="top"></a>
![your figure]()
### counter


<a name="top"></a>
![your figure]()
## TOP module description and simulations

Write your text here.

<a name="video"></a>

## Video

Write your text here

<a name="references"></a>

## References

1. https://www.electronics-notes.com/articles/test-methods/frequency-counter-timer/how-does-a-frequency-counter-work-operation.php
2. https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual?redirect=1
3. https://github.com/tomas-fryza/digital-electronics-1
