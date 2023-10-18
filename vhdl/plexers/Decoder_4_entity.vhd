--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Decoder_4                                                    ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Decoder_4 IS
   PORT ( sel          : IN  std_logic_vector( 1 DOWNTO 0 );
          decoderOut_0 : OUT std_logic;
          decoderOut_1 : OUT std_logic;
          decoderOut_2 : OUT std_logic;
          decoderOut_3 : OUT std_logic );
END ENTITY Decoder_4;
