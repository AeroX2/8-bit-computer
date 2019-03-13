--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Decoder_8                                                    ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Decoder_8 IS
   PORT ( Enable                    : IN  std_logic;
          Sel                       : IN  std_logic_vector( 2 DOWNTO 0 );
          DecoderOut_0              : OUT std_logic;
          DecoderOut_1              : OUT std_logic;
          DecoderOut_2              : OUT std_logic;
          DecoderOut_3              : OUT std_logic;
          DecoderOut_4              : OUT std_logic;
          DecoderOut_5              : OUT std_logic;
          DecoderOut_6              : OUT std_logic;
          DecoderOut_7              : OUT std_logic);
END Decoder_8;

