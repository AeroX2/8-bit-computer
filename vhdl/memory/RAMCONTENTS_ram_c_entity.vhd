--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : RAMCONTENTS_ram_c                                            ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY RAMCONTENTS_ram_c IS
   PORT ( address : IN  std_logic_vector( 7 DOWNTO 0 );
          clock   : IN  std_logic;
          dataIn  : IN  std_logic_vector( 7 DOWNTO 0 );
          oe      : IN  std_logic;
          tick    : IN  std_logic;
          we      : IN  std_logic;
          dataOut : OUT std_logic_vector( 7 DOWNTO 0 ) );
END ENTITY RAMCONTENTS_ram_c;
