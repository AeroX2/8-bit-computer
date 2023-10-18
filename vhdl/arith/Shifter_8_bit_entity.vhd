--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Shifter_8_bit                                                ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Shifter_8_bit IS
   GENERIC ( shifterMode : INTEGER );
   PORT ( dataA       : IN  std_logic_vector( 7 DOWNTO 0 );
          shiftAmount : IN  std_logic_vector( 2 DOWNTO 0 );
          result      : OUT std_logic_vector( 7 DOWNTO 0 ) );
END ENTITY Shifter_8_bit;
