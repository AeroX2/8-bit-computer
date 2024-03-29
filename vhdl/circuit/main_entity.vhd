--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY main IS
   PORT ( clk                 : IN  std_logic;
          input_pins          : IN  std_logic_vector( 7 DOWNTO 0 );
          logisimInputBubbles : IN  std_logic_vector( 10 DOWNTO 0 );
          output_pins         : OUT std_logic_vector( 7 DOWNTO 0 ) );
END ENTITY main;
