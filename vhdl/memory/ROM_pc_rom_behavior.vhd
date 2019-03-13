--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : ROM_pc_rom                                                   ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF ROM_pc_rom IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------

BEGIN
   MakeRom : PROCESS( Address )
      BEGIN
         CASE (Address) IS
            WHEN "0000000000000000" => Data <= "01110000";
            WHEN "0000000000000001" => Data <= "00000001";
            WHEN "0000000000000010" => Data <= "01110001";
            WHEN "0000000000000100" => Data <= "00010001";
            WHEN "0000000000000101" => Data <= "01011101";
            WHEN "0000000000000110" => Data <= "00110011";
            WHEN "0000000000001001" => Data <= "10110000";
            WHEN "0000000000001010" => Data <= "00010101";
            WHEN "0000000000001011" => Data <= "00110110";
            WHEN "0000000000001101" => Data <= "00000100";
            WHEN OTHERS => Data <= (OTHERS => '0');
         END CASE;
      END PROCESS MakeRom;
END PlatformIndependent;
