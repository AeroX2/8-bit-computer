--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : XOR_GATE_ONEHOT                                              ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY XOR_GATE_ONEHOT IS
   GENERIC ( BubblesMask               : INTEGER);
   PORT ( Input_1                   : IN  std_logic;
          Input_2                   : IN  std_logic;
          Result                    : OUT std_logic);
END XOR_GATE_ONEHOT;

