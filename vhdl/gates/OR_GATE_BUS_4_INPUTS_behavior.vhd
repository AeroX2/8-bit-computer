--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : OR_GATE_BUS_4_INPUTS                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF OR_GATE_BUS_4_INPUTS IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_realInput1 : std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
   SIGNAL s_realInput2 : std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
   SIGNAL s_realInput3 : std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
   SIGNAL s_realInput4 : std_logic_vector( (NrOfBits - 1) DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- Here the bubbles are processed                                             --
   --------------------------------------------------------------------------------
   s_realInput1 <= input1 WHEN BubblesMask(0) = '0' ELSE NOT(input1);
   s_realInput2 <= input2 WHEN BubblesMask(1) = '0' ELSE NOT(input2);
   s_realInput3 <= input3 WHEN BubblesMask(2) = '0' ELSE NOT(input3);
   s_realInput4 <= input4 WHEN BubblesMask(3) = '0' ELSE NOT(input4);

   --------------------------------------------------------------------------------
   -- Here the functionality is defined                                          --
   --------------------------------------------------------------------------------
   result <= s_realInput1 OR 
             s_realInput2 OR 
             s_realInput3 OR 
             s_realInput4;

END platformIndependent;
