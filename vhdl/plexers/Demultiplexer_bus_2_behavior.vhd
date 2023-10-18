--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Demultiplexer_bus_2                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Demultiplexer_bus_2 IS 

BEGIN

   demuxOut_0  <= demuxIn WHEN sel = '0' AND
                               enable = '1' ELSE (OTHERS => '0');

   demuxOut_1  <= demuxIn WHEN sel = '1' AND
                               enable = '1' ELSE (OTHERS => '0');
END platformIndependent;
