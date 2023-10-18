--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : BitSelector                                                  ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF BitSelector IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_extendedVector : std_logic_vector( (nrOfExtendedBits - 1) DOWNTO 0 );

BEGIN

   s_extendedVector((nrOfExtendedBits-1) DOWNTO nrOfInputBits) <= (OTHERS => '0');
   s_extendedVector((nrOfInputBits-1) DOWNTO 0) <= dataIn;
   dataOut <= s_extendedVector( to_integer(unsigned(sel)) );

END platformIndependent;
