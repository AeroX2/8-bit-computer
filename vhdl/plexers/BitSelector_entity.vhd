--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
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
   GENERIC ( nrOfExtendedBits : INTEGER;
             nrOfInputBits    : INTEGER;
             nrOfselBits      : INTEGER );
   PORT ( dataIn  : IN  std_logic_vector( (nrOfInputBits - 1) DOWNTO 0 );
          sel     : IN  std_logic_vector( (nrOfselBits - 1) DOWNTO 0 );
          dataOut : OUT std_logic );
END ENTITY BitSelector;
