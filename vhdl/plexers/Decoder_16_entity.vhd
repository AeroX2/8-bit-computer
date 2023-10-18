--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
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
   PORT ( sel           : IN  std_logic_vector( 3 DOWNTO 0 );
          decoderOut_0  : OUT std_logic;
          decoderOut_1  : OUT std_logic;
          decoderOut_10 : OUT std_logic;
          decoderOut_11 : OUT std_logic;
          decoderOut_12 : OUT std_logic;
          decoderOut_13 : OUT std_logic;
          decoderOut_14 : OUT std_logic;
          decoderOut_15 : OUT std_logic;
          decoderOut_2  : OUT std_logic;
          decoderOut_3  : OUT std_logic;
          decoderOut_4  : OUT std_logic;
          decoderOut_5  : OUT std_logic;
          decoderOut_6  : OUT std_logic;
          decoderOut_7  : OUT std_logic;
          decoderOut_8  : OUT std_logic;
          decoderOut_9  : OUT std_logic );
END ENTITY Decoder_16;
