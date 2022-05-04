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

Napisať kóid pre jednotlivé moduly projektu, tj. driver pre 7 segmentový dispej, preloženie binárneho inputu do hexadecimálneho.

Napsat kód pro frekvenční čítač a implementovat ho na hardware. 

Neprišli sme na spôsob, ako do outputu 7 segmentového displeja dostať input zo signálu. Respektíve sme nedokázali prispôsobiť counter modul.

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



```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( CLK100MHZ : in STD_LOGIC;
           SW : in STD_LOGIC_VECTOR (15 downto 0);
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           BTNC : in STD_LOGIC);
end top;

architecture Behavioral of top is
  -- No internal signals are needed today:)
begin

  --------------------------------------------------------
  -- Instance (copy) of driver_7seg_4digits entity
  driver_seg_4 : entity work.driver_7seg_8digits
      port map(
          clk        => CLK100MHZ,
          reset      => BTNC,
          data0_i(3) => SW(3),
          data0_i(2) => SW(2),
          data0_i(1) => SW(1),
          data0_i(0) => SW(0),

          -- MAP DATA INPUTS TO ON-BOARD SWITCHES
          data1_i(3) => SW(3),
          data1_i(2) => SW(2),
          data1_i(1) => SW(1),
          data1_i(0) => SW(0),
          
          data2_i(3) => SW(3),
          data2_i(2) => SW(2),
          data2_i(1) => SW(1),
          data2_i(0) => SW(0),

          data3_i(3) => SW(3),
          data3_i(2) => SW(2),
          data3_i(1) => SW(1),
          data3_i(0) => SW(0),
          
          data4_i(3) => SW(3),
          data4_i(2) => SW(2),
          data4_i(1) => SW(1),
          data4_i(0) => SW(0),

          -- MAP DATA INPUTS TO ON-BOARD SWITCHES
          data5_i(3) => SW(7),
          data5_i(2) => SW(6),
          data5_i(1) => SW(5),
          data5_i(0) => SW(4),
          
          data6_i(3) => SW(11),
          data6_i(2) => SW(10),
          data6_i(1) => SW(9),
          data6_i(0) => SW(8),

          data7_i(3) => SW(15),
          data7_i(2) => SW(14),
          data7_i(1) => SW(13),
          data7_i(0) => SW(12),
          
           
          
          -- MAP  DISPLAY SEGMENTS
          seg_o(6) => CA,
          seg_o(5) => CB,
          seg_o(4) => CC,
          seg_o(3) => CD,
          seg_o(2) => CE,
          seg_o(1) => CF,
          seg_o(0) => CG,
          
          dig_o(7 downto 0) => AN(7 downto 0)
      );


end architecture Behavioral;
```
<a name="video"></a>

## Video

Write your text here

<a name="references"></a>

## References

1. https://www.electronics-notes.com/articles/test-methods/frequency-counter-timer/how-does-a-frequency-counter-work-operation.php
2. https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual?redirect=1
3. https://github.com/tomas-fryza/digital-electronics-1
