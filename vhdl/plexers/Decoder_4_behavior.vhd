--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Decoder_4                                                    ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Decoder_4 IS 

BEGIN

   decoderOut_0 <= '1' WHEN sel = "00" ELSE '0';

   decoderOut_1 <= '1' WHEN sel = "01" ELSE '0';

   decoderOut_2 <= '1' WHEN sel = "10" ELSE '0';

   decoderOut_3 <= '1' WHEN sel = "11" ELSE '0';
END platformIndependent;
