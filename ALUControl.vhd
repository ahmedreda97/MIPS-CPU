----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:38 04/09/2018 
-- Design Name: 
-- Module Name:    ALUControl - Behavioral 
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

entity ALUControl is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           F : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is
signal Op0:std_logic;
signal Op1:std_logic;
signal Op2:std_logic;
signal Op3:std_logic;

begin
Op3<=ALUOp(1) and (F(0) and F(1));
Op2<=ALUOp(0) or (ALUOp(1) and F(1) );
Op1<= (not ALUOp(1)) or (not F(2)); 
Op0<= (not Op3) and (ALUOp(1) and (F(0) or F(3)));
Operation<= op3 & op2 & op1 & op0;

end Behavioral;

