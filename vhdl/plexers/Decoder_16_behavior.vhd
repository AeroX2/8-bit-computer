--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Decoder_16                                                   ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Decoder_16 IS 

BEGIN

   decoderOut_0 <= '1' WHEN sel = X"0" ELSE '0';

   decoderOut_1 <= '1' WHEN sel = X"1" ELSE '0';

   decoderOut_2 <= '1' WHEN sel = X"2" ELSE '0';

   decoderOut_3 <= '1' WHEN sel = X"3" ELSE '0';

   decoderOut_4 <= '1' WHEN sel = X"4" ELSE '0';

   decoderOut_5 <= '1' WHEN sel = X"5" ELSE '0';

   decoderOut_6 <= '1' WHEN sel = X"6" ELSE '0';

   decoderOut_7 <= '1' WHEN sel = X"7" ELSE '0';

   decoderOut_8 <= '1' WHEN sel = X"8" ELSE '0';

   decoderOut_9 <= '1' WHEN sel = X"9" ELSE '0';

   decoderOut_10<= '1' WHEN sel = X"A" ELSE '0';

   decoderOut_11<= '1' WHEN sel = X"B" ELSE '0';

   decoderOut_12<= '1' WHEN sel = X"C" ELSE '0';

   decoderOut_13<= '1' WHEN sel = X"D" ELSE '0';

   decoderOut_14<= '1' WHEN sel = X"E" ELSE '0';

   decoderOut_15<= '1' WHEN sel = X"F" ELSE '0';
END platformIndependent;
