----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:17:54 04/09/2018 
-- Design Name: 
-- Module Name:    Mux2x15bit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux2x15bit is
Port ( S : in  STD_LOGIC;
           I0 : in  STD_LOGIC_vector(4 downto 0);
           I1 : in  STD_LOGIC_vector (4 downto 0);
           O : out  STD_LOGIC_vector(4 downto 0));
end Mux2x15bit;

architecture Behavioral of Mux2x15bit is

begin
O <= I0 when S='0' else
     I1 when S='1' else
	  "ZZZZZ";


end Behavioral;

