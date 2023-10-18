--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : S_R_FLIPFLOP                                                 ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY S_R_FLIPFLOP IS
   GENERIC ( invertClockEnable : INTEGER );
   PORT ( clock  : IN  std_logic;
          preset : IN  std_logic;
          r      : IN  std_logic;
          reset  : IN  std_logic;
          s      : IN  std_logic;
          tick   : IN  std_logic;
          q      : OUT std_logic;
          qBar   : OUT std_logic );
END ENTITY S_R_FLIPFLOP;
