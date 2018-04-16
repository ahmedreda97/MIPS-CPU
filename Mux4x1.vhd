
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


--This is for alu 1 bit

entity Mux4x1 is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end Mux4x1;

architecture Behavioral of Mux4x1 is

begin

O<= I0 when S="00" else
    I1 when S="01" else
	 I2 when S="10" else
	 I3 when S="11" else
	 'Z';

end Behavioral;

