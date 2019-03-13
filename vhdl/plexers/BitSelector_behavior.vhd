--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : BitSelector                                                  ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF BitSelector IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_extended_vector                  : std_logic_vector( (NrOfExtendedBits-1) DOWNTO 0 );

BEGIN
   s_extended_vector((NrOfExtendedBits-1) DOWNTO NrOfInputBits) <= (OTHERS => '0');
   s_extended_vector((NrOfInputBits-1) DOWNTO 0) <= DataIn;
   DataOut <= s_extended_vector(to_integer(unsigned(Sel)));
END PlatformIndependent;
