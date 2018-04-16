----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:57 03/28/2018 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use work.MyPackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
 Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
		   clk : in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
signal decoderOut: STD_LOGIC_VECTOR(31 downto 0);
signal tmp0:STD_LOGIC_VECTOR(31 downto 0);
signal tmp1:STD_LOGIC_VECTOR(31 downto 0);
signal tmp2:STD_LOGIC_VECTOR(31 downto 0);
signal tmp3:STD_LOGIC_VECTOR(31 downto 0);
signal tmp4:STD_LOGIC_VECTOR(31 downto 0);
signal tmp5:STD_LOGIC_VECTOR(31 downto 0);
signal tmp6:STD_LOGIC_VECTOR(31 downto 0);
signal tmp7:STD_LOGIC_VECTOR(31 downto 0);
signal tmp8:STD_LOGIC_VECTOR(31 downto 0);
signal tmp9:STD_LOGIC_VECTOR(31 downto 0);
signal tmp10:STD_LOGIC_VECTOR(31 downto 0);
signal tmp11:STD_LOGIC_VECTOR(31 downto 0);
signal tmp12:STD_LOGIC_VECTOR(31 downto 0);
signal tmp13:STD_LOGIC_VECTOR(31 downto 0);
signal tmp14:STD_LOGIC_VECTOR(31 downto 0);
signal tmp15:STD_LOGIC_VECTOR(31 downto 0);
signal tmp16:STD_LOGIC_VECTOR(31 downto 0);
signal tmp17:STD_LOGIC_VECTOR(31 downto 0);
signal tmp18:STD_LOGIC_VECTOR(31 downto 0);
signal tmp19:STD_LOGIC_VECTOR(31 downto 0);
signal tmp20:STD_LOGIC_VECTOR(31 downto 0);
signal tmp21:STD_LOGIC_VECTOR(31 downto 0);
signal tmp22:STD_LOGIC_VECTOR(31 downto 0);
signal tmp23:STD_LOGIC_VECTOR(31 downto 0);
signal tmp24:STD_LOGIC_VECTOR(31 downto 0);
signal tmp25:STD_LOGIC_VECTOR(31 downto 0);
signal tmp26:STD_LOGIC_VECTOR(31 downto 0);
signal tmp27:STD_LOGIC_VECTOR(31 downto 0);
signal tmp28:STD_LOGIC_VECTOR(31 downto 0);
signal tmp29:STD_LOGIC_VECTOR(31 downto 0);
signal tmp30:STD_LOGIC_VECTOR(31 downto 0);
signal tmp31:STD_LOGIC_VECTOR(31 downto 0);
signal ld0:STD_LOGIC;
signal ld1:STD_LOGIC;
signal ld2:STD_LOGIC;
signal ld3:STD_LOGIC;
signal ld4:STD_LOGIC;
signal ld5:STD_LOGIC;
signal ld6:STD_LOGIC;
signal ld7:STD_LOGIC;
signal ld8:STD_LOGIC;
signal ld9:STD_LOGIC;
signal ld10:STD_LOGIC;
signal ld11:STD_LOGIC;
signal ld12:STD_LOGIC;
signal ld13:STD_LOGIC;
signal ld14:STD_LOGIC;
signal ld15:STD_LOGIC;
signal ld16:STD_LOGIC;
signal ld17:STD_LOGIC;
signal ld18:STD_LOGIC;
signal ld19:STD_LOGIC;
signal ld20:STD_LOGIC;
signal ld21:STD_LOGIC;
signal ld22:STD_LOGIC;
signal ld23:STD_LOGIC;
signal ld24:STD_LOGIC;
signal ld25:STD_LOGIC;
signal ld26:STD_LOGIC;
signal ld27:STD_LOGIC;
signal ld28:STD_LOGIC;
signal ld29:STD_LOGIC;
signal ld30:STD_LOGIC;
signal ld31:STD_LOGIC;
signal data1Out:STD_LOGIC_VECTOR(31 downto 0);
signal data2Out:STD_LOGIC_VECTOR(31 downto 0);

begin

Decoder: Decoder5x32 port map(write_sel,decoderOut);
ld0 <=(decoderOut(0) and write_ena );
ld1 <=(decoderOut(1) and write_ena);
ld2 <=( decoderOut(2) and write_ena);
ld3 <=( decoderOut(3) and write_ena);
ld4 <=( decoderOut(4) and write_ena);
ld5 <=( decoderOut(5) and write_ena);
ld6 <=( decoderOut(6) and write_ena);
ld7 <=(decoderOut(7) and write_ena );
ld8 <=( decoderOut(8) and write_ena);
ld9 <=( decoderOut(9) and write_ena);
ld10 <=(decoderOut(10) and write_ena );
ld11 <=(decoderOut(11) and write_ena );
ld12 <=( decoderOut(12) and write_ena);
ld13 <=( decoderOut(13) and write_ena);
ld14 <=(decoderOut(14) and write_ena );
ld15 <=(decoderOut(15) and write_ena );
ld16 <=(decoderOut(16) and write_ena );
ld17 <=( decoderOut(17) and write_ena);
ld18 <=( decoderOut(18) and write_ena);
ld19 <=( decoderOut(19) and write_ena);
ld20 <=( decoderOut(20) and write_ena);
ld21 <=( decoderOut(21) and write_ena);
ld22 <=(decoderOut(22) and write_ena );
ld23 <=( decoderOut(23) and write_ena);
ld24 <=( decoderOut(24) and write_ena);
ld25 <=( decoderOut(25) and write_ena);
ld26 <=( decoderOut(26) and write_ena);
ld27 <=( decoderOut(27) and write_ena);
ld28 <=(decoderOut(28) and write_ena );
ld29 <=(decoderOut(29) and write_ena );
ld30 <=(decoderOut(30) and write_ena );
ld31 <=(decoderOut(31) and write_ena );
R0: reg generic map (32) port map (write_data,clk,ld0 ,'0','0',tmp0);
R1: reg generic map (32) port map (write_data,clk, ld1,'0','0',tmp1);
R2: reg generic map (32) port map (write_data,clk, ld2,'0','0',tmp2);
R3: reg generic map (32) port map (write_data,clk, ld3,'0','0',tmp3);
R4: reg generic map (32) port map (write_data,clk,ld4 ,'0','0',tmp4);
R5: reg generic map (32) port map (write_data,clk,ld5 ,'0','0',tmp5);
R6: reg generic map (32) port map (write_data,clk, ld6,'0','0',tmp6);
R7: reg generic map (32) port map (write_data,clk, ld7,'0','0',tmp7);
R8: reg generic map (32) port map (write_data,clk,ld8 ,'0','0',tmp8);
R9: reg generic map (32) port map (write_data,clk, ld9,'0','0',tmp9);
R10: reg generic map (32) port map (write_data,clk, ld10,'0','0',tmp10);
R11: reg generic map (32) port map (write_data,clk, ld11,'0','0',tmp11);
R12: reg generic map (32) port map (write_data,clk, ld12,'0','0',tmp12);
R13: reg generic map (32) port map (write_data,clk, ld13,'0','0',tmp13);
R14: reg generic map (32) port map (write_data,clk, ld14,'0','0',tmp14);
R15: reg generic map (32) port map (write_data,clk,ld15 ,'0','0',tmp15);
R16: reg generic map (32) port map (write_data,clk, ld16,'0','0',tmp16);
R17: reg generic map (32) port map (write_data,clk, ld17,'0','0',tmp17);
R18: reg generic map (32) port map (write_data,clk,ld18 ,'0','0',tmp18);
R19: reg generic map (32) port map (write_data,clk,ld19 ,'0','0',tmp19);
R20: reg generic map (32) port map (write_data,clk, ld20,'0','0',tmp20);
R21: reg generic map (32) port map (write_data,clk, ld21,'0','0',tmp21);
R22: reg generic map (32) port map (write_data,clk,ld22 ,'0','0',tmp22);
R23: reg generic map (32) port map (write_data,clk, ld23,'0','0',tmp23);
R24: reg generic map (32) port map (write_data,clk,ld24 ,'0','0',tmp24);
R25: reg generic map (32) port map (write_data,clk,ld25 ,'0','0',tmp25);
R26: reg generic map (32) port map (write_data,clk, ld26,'0','0',tmp26);
R27: reg generic map (32) port map (write_data,clk, ld27,'0','0',tmp27);
R28: reg generic map (32) port map (write_data,clk, ld28,'0','0',tmp28);
R29: reg generic map (32) port map (write_data,clk, ld29,'0','0',tmp29);
R30: reg generic map (32) port map (write_data,clk, ld30,'0','0',tmp30);
R31: reg generic map (32) port map (write_data,clk,ld31 ,'0','0',tmp31);

Mux1: Mux32x1 port map (read_sel1,tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12,tmp13,tmp14,tmp15,tmp16,tmp17,tmp18,tmp19,tmp20,tmp21,tmp22,tmp23,tmp24,tmp25,tmp26,tmp27,tmp28,tmp29,tmp30,tmp31,data1);
Mux2: Mux32x1 port map (read_sel2,tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,tmp10,tmp11,tmp12,tmp13,tmp14,tmp15,tmp16,tmp17,tmp18,tmp19,tmp20,tmp21,tmp22,tmp23,tmp24,tmp25,tmp26,tmp27,tmp28,tmp29,tmp30,tmp31,data2);






end Behavioral;

