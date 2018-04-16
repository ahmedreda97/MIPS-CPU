----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:09:59 04/09/2018 
-- Design Name: 
-- Module Name:    PC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPackage.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
	GENERIC(n:NATURAL := 32);

    Port (  I: in STD_LOGIC_VECTOR(n-1 downto 0);
	         Start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end PC;

architecture Behavioral of PC is
signal tmp : std_logic_vector(n-1 downto 0);
signal notst:std_logic;
begin
notst<=not start;
R : reg generic map(n) port map(I,clk,Start,'0',notst,tmp);
Output<=tmp;
	

end Behavioral;

