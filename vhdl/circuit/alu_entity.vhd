--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : alu                                                          ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY alu IS
   PORT ( A                         : IN  std_logic_vector( 7 DOWNTO 0 );
          B                         : IN  std_logic_vector( 7 DOWNTO 0 );
          CARRYIN                   : IN  std_logic;
          CINS                      : IN  std_logic_vector( 7 DOWNTO 0 );
          OE                        : IN  std_logic;
          ALUOUT                    : OUT std_logic_vector( 7 DOWNTO 0 );
          CARRYOUT                  : OUT std_logic;
          CMPO                      : OUT std_logic;
          OVEROUT                   : OUT std_logic);
END alu;

