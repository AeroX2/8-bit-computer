--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Multiplexer_bus_4                                            ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Multiplexer_bus_4 IS
   GENERIC ( NrOfBits                  : INTEGER);
   PORT ( Enable                    : IN  std_logic;
          MuxIn_0                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          MuxIn_3                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
          Sel                       : IN  std_logic_vector( 1 DOWNTO 0 );
          MuxOut                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
END Multiplexer_bus_4;

