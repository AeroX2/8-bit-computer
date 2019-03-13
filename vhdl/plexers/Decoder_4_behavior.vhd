--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Decoder_4                                                    ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF Decoder_4 IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------

BEGIN
   DecoderOut_0 <= '1' WHEN sel =   "00"  AND
                              Enable = '1' ELSE '0';
   DecoderOut_1 <= '1' WHEN sel =   "01"  AND
                              Enable = '1' ELSE '0';
   DecoderOut_2 <= '1' WHEN sel =   "10"  AND
                              Enable = '1' ELSE '0';
   DecoderOut_3 <= '1' WHEN sel =   "11"  AND
                              Enable = '1' ELSE '0';
END PlatformIndependent;
