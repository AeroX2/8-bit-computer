--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Decoder_16                                                   ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY Decoder_16 IS
   PORT ( Enable                    : IN  std_logic;
          Sel                       : IN  std_logic_vector( 3 DOWNTO 0 );
          DecoderOut_0              : OUT std_logic;
          DecoderOut_1              : OUT std_logic;
          DecoderOut_10             : OUT std_logic;
          DecoderOut_11             : OUT std_logic;
          DecoderOut_12             : OUT std_logic;
          DecoderOut_13             : OUT std_logic;
          DecoderOut_14             : OUT std_logic;
          DecoderOut_15             : OUT std_logic;
          DecoderOut_2              : OUT std_logic;
          DecoderOut_3              : OUT std_logic;
          DecoderOut_4              : OUT std_logic;
          DecoderOut_5              : OUT std_logic;
          DecoderOut_6              : OUT std_logic;
          DecoderOut_7              : OUT std_logic;
          DecoderOut_8              : OUT std_logic;
          DecoderOut_9              : OUT std_logic);
END Decoder_16;

