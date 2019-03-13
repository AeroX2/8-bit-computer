--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Multiplexer_bus_4                                            ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF Multiplexer_bus_4 IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------

BEGIN
   make_mux : PROCESS( Enable,
                       MuxIn_0,
                       MuxIn_1,
                       MuxIn_2,
                       MuxIn_3,
                       Sel )
   BEGIN
      IF (Enable = '0') THEN
         MuxOut <= (OTHERS => '0');
                        ELSE
         CASE (Sel) IS
            WHEN   "00"  => MuxOut <= MuxIn_0;
            WHEN   "01"  => MuxOut <= MuxIn_1;
            WHEN   "10"  => MuxOut <= MuxIn_2;
            WHEN OTHERS  => MuxOut <= MuxIn_3;
         END CASE;
      END IF;
   END PROCESS make_mux;
END PlatformIndependent;
