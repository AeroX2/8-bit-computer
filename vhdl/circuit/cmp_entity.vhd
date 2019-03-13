--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : cmp                                                          ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY cmp IS
   PORT ( CARRY                     : IN  std_logic;
          CLK                       : IN  std_logic;
          CMPIN                     : IN  std_logic_vector( 7 DOWNTO 0 );
          OE                        : IN  std_logic;
          OVERFLOW                  : IN  std_logic;
          RESET                     : IN  std_logic;
          CFLAGO                    : OUT std_logic;
          OFLAGO                    : OUT std_logic;
          SFLAGO                    : OUT std_logic;
          ZFLAGO                    : OUT std_logic);
END cmp;

