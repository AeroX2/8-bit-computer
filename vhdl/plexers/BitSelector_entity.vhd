--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : BitSelector                                                  ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY BitSelector IS
   GENERIC ( NrOfExtendedBits          : INTEGER;
             NrOfSelBits               : INTEGER;
             NrOfInputBits             : INTEGER);
   PORT ( DataIn                    : IN  std_logic_vector( (NrOfInputBits-1) DOWNTO 0 );
          Sel                       : IN  std_logic_vector( (NrOfSelBits-1) DOWNTO 0 );
          DataOut                   : OUT std_logic);
END BitSelector;

