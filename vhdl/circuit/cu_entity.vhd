--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : cu                                                           ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY cu IS
   PORT ( CLK                       : IN  std_logic;
          IRIN                      : IN  std_logic_vector( 7 DOWNTO 0 );
          IRI_IN                    : IN  std_logic;
          RESET                     : IN  std_logic;
          CUOUT                     : OUT std_logic_vector( 7 DOWNTO 0 );
          INFLAG                    : OUT std_logic_vector( 3 DOWNTO 0 );
          IRI_OUT                   : OUT std_logic;
          OUTFLAG                   : OUT std_logic_vector( 2 DOWNTO 0 );
          PCC                       : OUT std_logic);
END cu;

