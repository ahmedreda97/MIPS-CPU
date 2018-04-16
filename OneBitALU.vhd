----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:00 03/31/2018 
-- Design Name: 
-- Module Name:    OneBitALU - Behavioral 
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
use IEEE.Numeric_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OneBitALU is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           SetLess:in std_logic;
			  AMuxop: in STD_LOGIC;
			  BMuxop : in STD_LOGIC;
			  MainMuxop : in STD_LOGIC_VECTOR(1 downto 0);
           CarryIn : in  STD_LOGIC;
           CarryOut : out  STD_LOGIC;
           Result : out  STD_LOGIC;
			  SetSum:out std_logic);
end OneBitALU;

architecture Behavioral of OneBitALU is

signal andout : STD_LOGIC;
signal orout : STD_LOGIC;
signal addout : STD_LOGIC;
signal AMuxResult : STD_LOGIC;
signal BMuxResult : STD_LOGIC;
signal tmp : STD_LOGIC_VECTOR (1 downto 0);
signal notA : STD_LOGIC;
signal notB : STD_LOGIC;

begin
notA <= not(A);
notB <= not(B);
AMux: Mux2x1 port map (AMuxop,A,notA,AMuxResult);
BMux: Mux2x1 port map (BMuxop,B,notB,BMuxResult);
andout <= AMuxResult and BMuxResult;
orout <= AMuxResult or BMuxResult;
tmp <= ('0'&AMuxResult)+('0'&BMuxResult)+('0'&CarryIn);
addout <= tmp(0);
SetSum<=tmp(0);
CarryOut <= tmp(1);
MainMux: Mux4x1 port map (MainMuxop,andout,orout,addout,SetLess,Result); 

end Behavioral;
