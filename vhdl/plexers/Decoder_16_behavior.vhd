--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Decoder_16                                                   ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF Decoder_16 IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------

BEGIN
   DecoderOut_0 <= '1' WHEN sel =  "0000" AND
                              Enable = '1' ELSE '0';
   DecoderOut_1 <= '1' WHEN sel =  "0001" AND
                              Enable = '1' ELSE '0';
   DecoderOut_2 <= '1' WHEN sel =  "0010" AND
                              Enable = '1' ELSE '0';
   DecoderOut_3 <= '1' WHEN sel =  "0011" AND
                              Enable = '1' ELSE '0';
   DecoderOut_4 <= '1' WHEN sel =  "0100" AND
                              Enable = '1' ELSE '0';
   DecoderOut_5 <= '1' WHEN sel =  "0101" AND
                              Enable = '1' ELSE '0';
   DecoderOut_6 <= '1' WHEN sel =  "0110" AND
                              Enable = '1' ELSE '0';
   DecoderOut_7 <= '1' WHEN sel =  "0111" AND
                              Enable = '1' ELSE '0';
   DecoderOut_8 <= '1' WHEN sel =  "1000" AND
                              Enable = '1' ELSE '0';
   DecoderOut_9 <= '1' WHEN sel =  "1001" AND
                              Enable = '1' ELSE '0';
   DecoderOut_10<= '1' WHEN sel =  "1010" AND
                             Enable = '1' ELSE '0';
   DecoderOut_11<= '1' WHEN sel =  "1011" AND
                             Enable = '1' ELSE '0';
   DecoderOut_12<= '1' WHEN sel =  "1100" AND
                             Enable = '1' ELSE '0';
   DecoderOut_13<= '1' WHEN sel =  "1101" AND
                             Enable = '1' ELSE '0';
   DecoderOut_14<= '1' WHEN sel =  "1110" AND
                             Enable = '1' ELSE '0';
   DecoderOut_15<= '1' WHEN sel =  "1111" AND
                             Enable = '1' ELSE '0';
END PlatformIndependent;
