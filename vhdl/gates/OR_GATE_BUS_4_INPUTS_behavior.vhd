--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : OR_GATE_BUS_4_INPUTS                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF OR_GATE_BUS_4_INPUTS IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_real_input_1                     : std_logic_vector( (NrOfBits-1) DOWNTO 0 );
   SIGNAL s_real_input_2                     : std_logic_vector( (NrOfBits-1) DOWNTO 0 );
   SIGNAL s_real_input_3                     : std_logic_vector( (NrOfBits-1) DOWNTO 0 );
   SIGNAL s_real_input_4                     : std_logic_vector( (NrOfBits-1) DOWNTO 0 );
   SIGNAL s_signal_invert_mask               : std_logic_vector( 3 DOWNTO 0 );

BEGIN

   -----------------------------------------------------------------------------
   -- Here the bubbles are processed                                          --
   -----------------------------------------------------------------------------
   s_signal_invert_mask <= std_logic_vector(to_unsigned(BubblesMask,4));
   s_real_input_1  <= NOT( Input_1 )
                         WHEN s_signal_invert_mask(0) = '1' ELSE
                      Input_1;
   s_real_input_2  <= NOT( Input_2 )
                         WHEN s_signal_invert_mask(1) = '1' ELSE
                      Input_2;
   s_real_input_3  <= NOT( Input_3 )
                         WHEN s_signal_invert_mask(2) = '1' ELSE
                      Input_3;
   s_real_input_4  <= NOT( Input_4 )
                         WHEN s_signal_invert_mask(3) = '1' ELSE
                      Input_4;

   -----------------------------------------------------------------------------
   -- Here the functionality is defined                                       --
   -----------------------------------------------------------------------------
   Result <= s_real_input_1 OR
             s_real_input_2 OR
             s_real_input_3 OR
             s_real_input_4;

END PlatformIndependent;
