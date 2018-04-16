----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:05 04/09/2018 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.MainPackage.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
    Port ( start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOut : out  STD_LOGIC_VECTOR (31 downto 0);
           pcout : out std_logic_vector (31 downto 0);
           dataMemout : out std_logic_vector (31 downto 0)
	   );
end MainModule;

architecture Behavioral of MainModule is
signal Mux5out:std_logic_vector(31 downto 0);
signal Mux1out:std_logic_vector(4 downto 0);
signal Mux3out:std_logic_vector(31 downto 0);
signal Mux2out:std_logic_vector(31 downto 0);
signal Mux4out:std_logic_vector(31 downto 0);
signal InstMemData:std_logic_vector(31 downto 0);
signal PcAddress:std_logic_vector(31 downto 0);
signal RegDst : STD_LOGIC;
signal   Jump :  STD_LOGIC;
signal   BranchEq :   STD_LOGIC;
signal BranchNe: std_logic;
signal    MemRead :  STD_LOGIC;
signal    MemtoReg : STD_LOGIC;
signal     ALUOp :   STD_LOGIC_vector(1 downto 0);
signal    MemWrite :   STD_LOGIC;
signal    ALUSrc :  STD_LOGIC;
signal RegWrite :   STD_LOGIC;
signal AluOperation:STD_LOGIC_VECTOR(3 downto 0);
signal data1:std_logic_vector(31 downto 0);
signal data2:std_logic_vector(31 downto 0);
signal SignExtendResult:std_logic_vector(31 downto 0);
signal cin:std_logic;
signal AluResult:std_logic_vector(31 downto 0);
signal cflag:std_logic;
signal zflag:std_logic;
signal oflag:std_logic;
signal DataMemoryOut:std_logic_vector(31 downto 0);
signal garbage:std_logic;
signal AluAdd1Out:std_logic_vector(31 downto 0);
signal AluAdd2Out:std_logic_vector(31 downto 0);
signal PcNormalOrBranch:std_logic;
begin
PCMain : PC  generic map (32) port map(Mux5out,start,clk,PcAddress);

InstMem:INSTRMEMORY port map(not(start),InstMemData,PcAddress,clk);
Controller: Control port map(InstMemData(31 downto 26),RegDst,Jump,BranchEq,BranchNe,MemRead,MemtoReg,ALUOp,MemWrite,ALUSrc,RegWrite);
AluController:ALUControl port map(ALUOp,InstMemData(5 downto 0),AluOperation);
Mux1:Mux2x15bit port map (RegDst,InstMemData(20 downto 16),InstMemData(15 downto 11),Mux1out);
RegFile:RegisterFile port map(InstMemData(25 downto 21),InstMemData(20 downto 16),Mux1out,RegWrite,clk,Mux3out,data1,data2);
SignExtend: SignExt16to32 port map(InstMemData(15 downto 0),SignExtendResult);
Mux2:Mux2x132bit port map(AluSrc,data2,SignExtendResult,Mux2out);
AluMain:ALU port map(data1,Mux2out,AluOperation,AluOperation(2),AluResult,cflag,zflag,oflag);
DataMem:DATAMEMORY port map(not(start),data2,DataMemoryOut,MemRead,MemWrite,AluResult,clk);
Mux3:Mux2x132bit port map(MemtoReg,AluResult,DataMemoryOut,Mux3out);
AluAdd1:ALU port map(PcAddress,"00000000000000000000000000000100","0010",'0',AluAdd1Out,garbage,garbage,garbage);
AluAdd2:ALU port map(AluAdd1Out,(SignExtendResult(29 downto 0)&"00"),"0010",'0',AluAdd2Out,garbage,garbage,garbage);
PcNormalOrBranch <= '1' when BranchEq='1' and zflag = '1' 
						else '1' when BranchNe='1' and zflag ='0'
						else '0';
Mux4:Mux2x132bit port map(PcNormalOrBranch,AluAdd1Out,AluAdd2Out,Mux4out);
Mux5:Mux2x132bit port map(Jump,Mux4out,AluAdd1Out(31 downto 28) &InstMemData(25 downto 0)&"00",Mux5out);
RegFileOut1<=data1;
RegFileOut2<=data2;
pcout<=PcAddress;
ALUOut<=AluResult;
dataMemout<=DataMemoryOut;
end Behavioral;

