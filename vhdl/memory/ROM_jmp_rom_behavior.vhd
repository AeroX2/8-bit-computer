--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : ROM_jmp_rom                                                  ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF ROM_jmp_rom IS 

   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------

BEGIN
   MakeRom : PROCESS( Address )
      BEGIN
         CASE (Address) IS
            WHEN "00110001" => Data <= "00001";
            WHEN "00110010" => Data <= "00010";
            WHEN "00110011" => Data <= "00011";
            WHEN "00110100" => Data <= "00100";
            WHEN "00110101" => Data <= "00101";
            WHEN "00110110" => Data <= "00110";
            WHEN "00110111" => Data <= "00111";
            WHEN "00111000" => Data <= "01000";
            WHEN "00111001" => Data <= "01001";
            WHEN "00111010" => Data <= "01010";
            WHEN "01000001" => Data <= "10001";
            WHEN "01000010" => Data <= "10010";
            WHEN "01000011" => Data <= "10011";
            WHEN "01000100" => Data <= "10100";
            WHEN "01000101" => Data <= "10101";
            WHEN "01000110" => Data <= "10110";
            WHEN "01000111" => Data <= "10111";
            WHEN "01001000" => Data <= "11000";
            WHEN "01001001" => Data <= "11001";
            WHEN "01001010" => Data <= "11010";
            WHEN OTHERS => Data <= (OTHERS => '0');
         END CASE;
      END PROCESS MakeRom;
END PlatformIndependent;
