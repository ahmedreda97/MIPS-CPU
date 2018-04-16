----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:05 04/09/2018 
-- Design Name: 
-- Module Name:    Control - Behavioral 
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

entity Control is
    Port ( 
			  op:in std_logic_vector (5 downto 0);
           RegDst : out  STD_LOGIC;
           Jump : out  STD_LOGIC;
           BranchEq : out  STD_LOGIC;
			  BranchNe : out std_logic;
           MemRead : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           ALUOp : out  STD_LOGIC_vector(1 downto 0);
           MemWrite : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC);
end Control;


architecture Behavioral of Control is
signal R:std_logic;
signal lw:std_logic;
signal sw:std_logic;
signal beq:std_logic;
signal bne:std_logic;
begin
R<=(not op(0)) and (not op(1)) and (not op(2)) and (not op(3)) and (not op(4)) and (not op(5));
lw<= op(0) and op(1) and (not op(2)) and (not op(3)) and (not op(4)) and op(5);
sw<=op(0) and op(1) and (not op(2)) and op(3) and (not op(4)) and op(5);
RegDst<=R;
Jump<=(not op(0)) and  op(1) and (not op(2)) and (not op(3)) and (not op(4)) and (not op(5));
beq <= not(op(0)) and not(op(1)) and op(2) and not(op(3)) and not(op(4)) and not(op(5));
	bne <= op(0) and not(op(1)) and op(2) and not(op(3)) and not(op(4)) and not(op(5));
ALUSrc<=lw or sw;
MemtoReg<=lw;
RegWrite<=R or lw;
MemRead<=lw;
MemWrite<=sw;
BranchEq<=beq;
BranchNe<=bne;
ALUOp<=R & (beq or bne);


end Behavioral;

