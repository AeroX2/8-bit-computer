--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Decoder_8                                                    ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF Decoder_8 IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------

BEGIN
   DecoderOut_0 <= '1' WHEN sel =   "000" AND
                              Enable = '1' ELSE '0';
   DecoderOut_1 <= '1' WHEN sel =   "001" AND
                              Enable = '1' ELSE '0';
   DecoderOut_2 <= '1' WHEN sel =   "010" AND
                              Enable = '1' ELSE '0';
   DecoderOut_3 <= '1' WHEN sel =   "011" AND
                              Enable = '1' ELSE '0';
   DecoderOut_4 <= '1' WHEN sel =   "100" AND
                              Enable = '1' ELSE '0';
   DecoderOut_5 <= '1' WHEN sel =   "101" AND
                              Enable = '1' ELSE '0';
   DecoderOut_6 <= '1' WHEN sel =   "110" AND
                              Enable = '1' ELSE '0';
   DecoderOut_7 <= '1' WHEN sel =   "111" AND
                              Enable = '1' ELSE '0';
END PlatformIndependent;
