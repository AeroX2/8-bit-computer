--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : S_R_FLIPFLOP                                                 ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF S_R_FLIPFLOP IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_clock        : std_logic;
   SIGNAL s_currentState : std_logic;
   SIGNAL s_nextState    : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here the output signals are defined                                        --
   --------------------------------------------------------------------------------
   q        <= s_currentState;
   qBar     <=  NOT (s_currentState);
   s_clock  <= clock WHEN invertClockEnable = 0 ELSE NOT(clock);

   --------------------------------------------------------------------------------
   -- Here the update logic is defined                                           --
   --------------------------------------------------------------------------------
    s_nextState <= (s_currentState OR s) AND  NOT (r);

   --------------------------------------------------------------------------------
   -- Here the actual state register is defined                                  --
   --------------------------------------------------------------------------------
   makeMemory : PROCESS( s_clock , reset , preset , tick , s_nextState ) IS
   BEGIN
      IF (reset = '1') THEN s_currentState <= '0';
      ELSIF (preset = '1') THEN s_currentState <= '1';
      ELSIF (rising_edge(s_clock)) THEN
         IF (tick = '1') THEN
            s_currentState <= s_nextState;
         END IF;
      END IF;
   END PROCESS makeMemory;

END platformIndependent;
