--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Demultiplexer_bus_2                                          ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Demultiplexer_bus_2 IS
   GENERIC ( nrOfBits : INTEGER );
   PORT ( demuxIn    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
          enable     : IN  std_logic;
          sel        : IN  std_logic;
          demuxOut_0 : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
          demuxOut_1 : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
END ENTITY Demultiplexer_bus_2;
