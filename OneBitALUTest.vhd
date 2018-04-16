--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:18:12 03/31/2018
-- Design Name:   
-- Module Name:   E:/OmarKhaled/Work/ArchitectureSoftware/Projects/Milestone1/OneBitALUTest.vhd
-- Project Name:  Milestone1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OneBitALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY OneBitALUTest IS
END OneBitALUTest;
 
ARCHITECTURE behavior OF OneBitALUTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OneBitALU
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         BMuxop : IN  std_logic;
         MainMuxop : IN  std_logic_vector(1 downto 0);
         CarryIn : IN  std_logic;
         CarryOut : OUT  std_logic;
         Result : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal BMuxop : std_logic := '0';
   signal MainMuxop : std_logic_vector(1 downto 0) := (others => '0');
   signal CarryIn : std_logic := '0';

 	--Outputs
   signal CarryOut : std_logic;
   signal Result : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OneBitALU PORT MAP (
          A => A,
          B => B,
          BMuxop => BMuxop,
          MainMuxop => MainMuxop,
          CarryIn => CarryIn,
          CarryOut => CarryOut,
          Result => Result
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		A<='1';
		B<='1';
		BMuxop<='0';
		CarryIn<='1';
		MainMuxop<="10";
		
		wait;
   end process;

END;
