
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux32x1 is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31  : in  STD_LOGIC_VECTOR (31 downto 0);
           
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux32x1;

architecture Behavioral of Mux32x1 is

begin
O <= I0 when S="00000" else
     I1 when S="00001" else
	  I2 when S="00010" else
     I3 when S="00011" else
	  I4 when S="00100" else
     I5 when S="00101" else
	  I6 when S="00110" else
     I7 when S="00111" else
	  I8 when S="01000" else
     I9 when S="01001" else
	  I10 when S="01010" else
     I11 when S="01011" else
	  I12 when S="01100" else
     I13 when S="01101" else
	  I14 when S="01110" else
     I15 when S="01111" else
	  I16 when S="10000" else
     I17 when S="10001" else
	  I18 when S="10010" else
     I19 when S="10011" else
	  I20 when S="10100" else
     I21 when S="10101" else
	  I22 when S="10110" else
     I23 when S="10111" else
	  I24 when S="11000" else
     I25 when S="11001" else
	  I26 when S="11010" else
     I27 when S="11011" else
	  I28 when S="11100" else
     I29 when S="11101" else
	  I30 when S="11110" else
     I31 when S="11111" else
	  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";


end Behavioral;

