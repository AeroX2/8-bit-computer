--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : ROM_cu_rom                                                   ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ROM_cu_rom IS
   PORT ( Address                   : IN  std_logic_vector( 7 DOWNTO 0 );
          Data                      : OUT std_logic_vector( 7 DOWNTO 0 ));
END ROM_cu_rom;

