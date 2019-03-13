--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : RAM_ram_c                                                    ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY RAM_ram_c IS
   PORT ( Address                   : IN  std_logic_vector( 7 DOWNTO 0 );
          Clock                     : IN  std_logic;
          DataIn                    : IN  std_logic_vector( 7 DOWNTO 0 );
          OE                        : IN  std_logic;
          Tick                      : IN  std_logic;
          WE                        : IN  std_logic;
          DataOut                   : OUT std_logic_vector( 7 DOWNTO 0 ));
END RAM_ram_c;

