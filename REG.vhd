library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY REG is
Generic(n:NATURAL :=4);
PORT(
I:IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
CLK,LD,INC,CLR :IN STD_LOGIC;
O:OUT STD_LOGIC_VECTOR(n-1 downto 0) );
END REG;

ARCHITECTURE BEHAVOIUR OF REG IS
SIGNAL TEMP:STD_LOGIC_VECTOR(N-1 DOWNTO 0):=(OTHERS=>'0');
BEGIN
	PROCESS(CLK)
	BEGIN
		IF(CLK'EVENT AND CLK='1') THEN
			IF(LD='1') THEN
				TEMP<=I;
				ELSIF (INC='1') THEN
				TEMP<=TEMP+1;
				ELSIF(CLR='1') THEN
				TEMP<= (OTHERS=>'0');
			END IF;
		END IF;
	END PROCESS;
	O<=TEMP;
END BEHAVOIUR;