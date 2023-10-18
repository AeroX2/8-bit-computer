--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : Shifter_8_bit                                                ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Shifter_8_bit IS 

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_stage0Result  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_stage0ShiftIn : std_logic;
   SIGNAL s_stage1Result  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_stage1ShiftIn : std_logic_vector( 1 DOWNTO 0 );
   SIGNAL s_stage2Result  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_stage2ShiftIn : std_logic_vector( 3 DOWNTO 0 );

BEGIN
   --------------------------------------------------------------------------------
   -- ShifterMode represents when:                                               --
   -- 0 : Logical Shift Left                                                     --
   -- 1 : Rotate Left                                                            --
   -- 2 :                                                                        --
   -- Logical Shift Right                                                        --
   -- 3 : Arithmetic Shift Right                                                 --
   -- 4 : Rotate Right                                                           --
   --------------------------------------------------------------------------------

   --------------------------------------------------------------------------------
   -- Stage 0 of the binary shift tree is defined here                           --
   --------------------------------------------------------------------------------
   s_stage0ShiftIn <= dataA(7) WHEN shifterMode = 1 OR shifterMode = 3 ELSE
                      dataA(0) WHEN shifterMode = 4 ELSE '0';

   s_stage0Result  <= dataA
                         WHEN shiftAmount(0) = '0' ELSE
                      dataA(6 DOWNTO 0)&s_stage0ShiftIn
                         WHEN shifterMode = 0 OR shifterMode = 1 ELSE
                      s_stage0ShiftIn&dataA( 7 DOWNTO 1 );

   --------------------------------------------------------------------------------
   -- Stage 1 of the binary shift tree is defined here                           --
   --------------------------------------------------------------------------------
   s_stage1ShiftIn <= s_stage0Result( 7 DOWNTO 6 ) WHEN shifterMode = 1 ELSE
                      (OTHERS => s_stage0Result(0)) WHEN shifterMode = 3 ELSE
                      s_stage0Result( 1 DOWNTO 0 ) WHEN shifterMode = 4 ELSE
                      (OTHERS => '0');

   s_stage1Result  <= s_stage0Result
                         WHEN shiftAmount(1) = '0' ELSE
                      s_stage0Result( 5 DOWNTO 0 )&s_stage1ShiftIn
                         WHEN shifterMode = 0 OR shifterMode = 1 ELSE
                      s_stage1ShiftIn&s_stage0Result( 7 DOWNTO 2 );

   --------------------------------------------------------------------------------
   -- Stage 2 of the binary shift tree is defined here                           --
   --------------------------------------------------------------------------------
   s_stage2ShiftIn <= s_stage1Result( 7 DOWNTO 4 ) WHEN shifterMode = 1 ELSE
                      (OTHERS => s_stage1Result(1)) WHEN shifterMode = 3 ELSE
                      s_stage1Result( 3 DOWNTO 0 ) WHEN shifterMode = 4 ELSE
                      (OTHERS => '0');

   s_stage2Result  <= s_stage1Result
                         WHEN shiftAmount(2) = '0' ELSE
                      s_stage1Result( 3 DOWNTO 0 )&s_stage2ShiftIn
                         WHEN shifterMode = 0 OR shifterMode = 1 ELSE
                      s_stage2ShiftIn&s_stage1Result( 7 DOWNTO 4 );

   --------------------------------------------------------------------------------
   -- The result is assigned here                                                --
   --------------------------------------------------------------------------------
   result <= s_stage2Result;

END platformIndependent;
