--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : OR_GATE_BUS_4_INPUTS                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY OR_GATE_BUS_4_INPUTS IS
   GENERIC ( BubblesMask : std_logic_vector;
             NrOfBits    : INTEGER );
   PORT ( input1 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
          input2 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
          input3 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
          input4 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
          result : OUT std_logic_vector( (NrOfBits - 1) DOWNTO 0 ) );
END ENTITY OR_GATE_BUS_4_INPUTS;
