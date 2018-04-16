----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:04 04/09/2018 
-- Design Name: 
-- Module Name:    SignExt16to32 - Behavioral 
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

entity SignExt16to32 is
    Port ( i : in  STD_LOGIC_VECTOR (15 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExt16to32;

architecture Behavioral of SignExt16to32 is

begin
o<=("1111111111111111"&i) when i(15)='1' else
   ("0000000000000000"&i);


end Behavioral;

