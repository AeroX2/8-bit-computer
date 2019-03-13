--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : jmp                                                          ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY jmp IS
   PORT ( CIN                       : IN  std_logic;
          CLK                       : IN  std_logic;
          DATABUS                   : IN  std_logic_vector( 7 DOWNTO 0 );
          JMPINS                    : IN  std_logic_vector( 7 DOWNTO 0 );
          OE                        : IN  std_logic;
          OIN                       : IN  std_logic;
          PCIN                      : IN  std_logic_vector( 15 DOWNTO 0 );
          RESET                     : IN  std_logic;
          SIN                       : IN  std_logic;
          ZIN                       : IN  std_logic;
          PCOE                      : OUT std_logic;
          PCOUT                     : OUT std_logic_vector( 15 DOWNTO 0 ));
END jmp;

