--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MainPackage is

component PC is
	GENERIC(n:NATURAL := 32);

    Port (  I: in STD_LOGIC_VECTOR(n-1 downto 0);
	         Start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;
component Control is
    Port (  op:in std_logic_vector (5 downto 0);
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
end component;
component ALUControl is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           F : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
component ALU is
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
end component;
component RegisterFile is
 Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
		   clk : in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component Mux2x132bit is
 Port ( S : in  STD_LOGIC;
           I0 : in  STD_LOGIC_vector(31 downto 0);
           I1 : in  STD_LOGIC_vector(31 downto 0);
           O : out  STD_LOGIC_vector(31 downto 0));
end component;
component Mux2x15bit is
Port ( S : in  STD_LOGIC;
           I0 : in  STD_LOGIC_vector(4 downto 0);
           I1 : in  STD_LOGIC_vector (4 downto 0);
           O : out  STD_LOGIC_vector(4 downto 0));
end component;
component SignExt16to32 is
    Port ( i : in  STD_LOGIC_VECTOR (15 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
end MainPackage;

package body MainPackage is


 
end MainPackage;
