--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : S_R_FLIPFLOP                                                 ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF S_R_FLIPFLOP IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_next_state                       : std_logic;
   SIGNAL s_current_state_reg                : std_logic;

BEGIN
   -----------------------------------------------------------------------------
   -- Here the ouput signals are defined                                      --
   -----------------------------------------------------------------------------
   Q     <= s_current_state_reg;
   Q_bar <= NOT(s_current_state_reg);

   -----------------------------------------------------------------------------
   -- Here the update logic is defined                                        --
   -----------------------------------------------------------------------------
   s_next_state <= (s_current_state_reg OR S) AND NOT(R);

   -----------------------------------------------------------------------------
   -- Here the actual state register is defined                               --
   -----------------------------------------------------------------------------
   make_memory : PROCESS( clock , Reset , Preset , Tick , s_next_state )
      VARIABLE temp : std_logic_vector(0 DOWNTO 0);
   BEGIN
      temp := std_logic_vector(to_unsigned(ActiveLevel,1));
      IF (Reset = '1') THEN s_current_state_reg <= '0';
      ELSIF (Preset = '1') THEN s_current_state_reg <= '1';
      ELSIF (Clock'event AND (Clock = temp(0))) THEN
         IF (Tick = '1') THEN
            s_current_state_reg <= s_next_state;
         END IF;
      END IF;
   END PROCESS make_memory;

END PlatformIndependent;
