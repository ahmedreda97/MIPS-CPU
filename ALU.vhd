----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:23:40 04/01/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
end ALU;

architecture Behavioral of ALU is
signal c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31 :std_logic;
signal Res  :std_logic_vector( 31 downto 0 ) ;
signal SumRes:std_logic_vector(31 downto 0);
begin
AlU0 : OneBitALU port map ( data1(0) , data2(0),SumRes(31) ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), cin , c0,Res(0),SumRes(0));
AlU1 : OneBitALU port map ( data1(1) , data2(1),'0' ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c0 , c1,Res(1),SumRes(1) );
AlU2 : OneBitALU port map ( data1(2) , data2(2),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c1 , c2,Res(2) ,SumRes(2));
AlU3 : OneBitALU port map ( data1(3) , data2(3),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c2 , c3,Res(3) ,SumRes(3) );
AlU4 : OneBitALU port map ( data1(4) , data2(4) ,'0' ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c3 , c4,Res(4),SumRes(4) );
AlU5 : OneBitALU port map ( data1(5) , data2(5) ,'0' ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c4 , c5,Res(5),SumRes(5) );
AlU6 : OneBitALU port map ( data1(6) , data2(6) ,'0' ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c5 , c6,Res(6),SumRes(6) );
AlU7 : OneBitALU port map ( data1(7) , data2(7) ,'0' ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c6 , c7,Res(7),SumRes(7) );
AlU8 : OneBitALU port map ( data1(8) , data2(8) ,'0' ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c7 , c8,Res(8),SumRes(8) );
AlU9 : OneBitALU port map ( data1(9) , data2(9) ,'0' ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c8 , c9,Res(9),SumRes(9) );

AlU10 : OneBitALU port map ( data1(10) , data2(10),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c9 , c10,Res(10) ,SumRes(10));
AlU11 : OneBitALU port map ( data1(11) , data2(11),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c10 , c11,Res(11),SumRes(11) );
AlU12 : OneBitALU port map ( data1(12) , data2(12),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c11 , c12,Res(12),SumRes(12) );
AlU13 : OneBitALU port map ( data1(13) , data2(13),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c12 , c13,Res(13),SumRes(13) );
AlU14 : OneBitALU port map ( data1(14) , data2(14),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c13 , c14,Res(14),SumRes(14) );
AlU15 : OneBitALU port map ( data1(15) , data2(15),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c14 , c15,Res(15),SumRes(15) );
AlU16 : OneBitALU port map ( data1(16) , data2(16),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c15 , c16,Res(16),SumRes(16) );
AlU17 : OneBitALU port map ( data1(17) , data2(17),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c16 , c17,Res(17),SumRes(17) );
AlU18 : OneBitALU port map ( data1(18) , data2(18),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c17 , c18,Res(18),SumRes(18) );
AlU19 : OneBitALU port map ( data1(19) , data2(19),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c18 , c19,Res(19),SumRes(19) );

AlU20 : OneBitALU port map ( data1(20) , data2(20),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c19 , c20,Res(20),SumRes(20) );
AlU21 : OneBitALU port map ( data1(21) , data2(21),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c20 , c21,Res(21),SumRes(21) );
AlU22 : OneBitALU port map ( data1(22) , data2(22),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c21 , c22,Res(22),SumRes(22) );
AlU23 : OneBitALU port map ( data1(23) , data2(23),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c22 , c23,Res(23),SumRes(23) );
AlU24 : OneBitALU port map ( data1(24) , data2(24),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c23 , c24,Res(24),SumRes(24) );
AlU25 : OneBitALU port map ( data1(25) , data2(25),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c24 , c25,Res(25),SumRes(25) );
AlU26 : OneBitALU port map ( data1(26) , data2(26),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c25 , c26,Res(26),SumRes(26) );
AlU27 : OneBitALU port map ( data1(27) , data2(27),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c26 , c27,Res(27) ,SumRes(27));
AlU28 : OneBitALU port map ( data1(28) , data2(28),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c27 , c28,Res(28),SumRes(28) );
AlU29 : OneBitALU port map ( data1(29) , data2(29),'0' ,aluop(3) , aluop(2) , (aluop(1) & aluop(0)), c28 , c29,Res(29),SumRes(29) );

AlU30 : OneBitALU port map ( data1(30) , data2(30),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c29 , c30,Res(30),SumRes(30) );
AlU31 : OneBitALU port map ( data1(31) , data2(31),'0'  ,aluop(3), aluop(2) , (aluop(1) & aluop(0)), c30 , c31,Res(31) ,SumRes(31));

dataout(0)<=Res(0); dataout(1)<=Res(1); dataout(2)<=Res(2); dataout(3)<=Res(3); dataout(4)<=Res(4); dataout(5)<=Res(5); dataout(6)<=Res(6); dataout(7)<=Res(7);
dataout(8)<=Res(8); dataout(9)<=Res(9); dataout(10)<=Res(10); dataout(11)<=Res(11); dataout(12)<=Res(12); dataout(13)<=Res(13); dataout(14)<=Res(14); dataout(15)<=Res(15);
dataout(16)<=Res(16); dataout(17)<=Res(17); dataout(18)<=Res(18); dataout(19)<=Res(19); dataout(20)<=Res(20); dataout(21)<=Res(21); dataout(22)<=Res(22); dataout(23)<=Res(23);
dataout(24)<=Res(24); dataout(25)<=Res(25); dataout(26)<=Res(26); dataout(27)<=Res(27); dataout(28)<=Res(28); dataout(29)<=Res(29); dataout(30)<=Res(30); dataout(31)<=Res(31);


zflag <= not(res(0) or res(1) or res(2) or res(3) or res(4) or res(5) or res(6) or res(7) or res(8) or res(9) or res(10) or res(11) or res(12) 
             or res(13) or res(14) or res(15) or res(16) or res(17) or res(18) or res(19) or res(20) or res(21) or res(22) or res(23) or res(24) 
				 or res(25) or res(26) or res(27) or res(28) or res(29) or res(30) or res(31) );
				 
oflag <= c30 xor c31 ;
cflag <= c31;

end Behavioral;

