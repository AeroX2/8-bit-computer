--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : cmp                                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF cmp IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_8_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                input4 : IN  std_logic;
                input5 : IN  std_logic;
                input6 : IN  std_logic;
                input7 : IN  std_logic;
                input8 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT S_R_FLIPFLOP
         GENERIC ( invertClockEnable : INTEGER );
         PORT ( clock  : IN  std_logic;
                preset : IN  std_logic;
                r      : IN  std_logic;
                reset  : IN  std_logic;
                s      : IN  std_logic;
                tick   : IN  std_logic;
                q      : OUT std_logic;
                qBar   : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus5  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus5(7 DOWNTO 0) <= CMPIN;
   s_logisimNet0             <= RESET;
   s_logisimNet11            <= CARRY;
   s_logisimNet17            <= OE;
   s_logisimNet2             <= CLK;
   s_logisimNet3             <= OVERFLOW;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   CFLAGO <= s_logisimNet27;
   OFLAGO <= s_logisimNet21;
   SFLAGO <= s_logisimNet12;
   ZFLAGO <= s_logisimNet26;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Ground
    s_logisimNet28  <=  '0';


   -- Ground
    s_logisimNet29  <=  '0';


   -- Ground
    s_logisimNet30  <=  '0';


   -- Ground
    s_logisimNet31  <=  '0';


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_8_INPUTS
      GENERIC MAP ( BubblesMask => X"FF" )
      PORT MAP ( input1 => s_logisimBus5(0),
                 input2 => s_logisimBus5(1),
                 input3 => s_logisimBus5(2),
                 input4 => s_logisimBus5(3),
                 input5 => s_logisimBus5(4),
                 input6 => s_logisimBus5(5),
                 input7 => s_logisimBus5(6),
                 input8 => s_logisimBus5(7),
                 result => s_logisimNet14 );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet14,
                 input2 => s_logisimNet17,
                 result => s_logisimNet13 );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "10" )
      PORT MAP ( input1 => s_logisimNet14,
                 input2 => s_logisimNet17,
                 result => s_logisimNet1 );

   MEMORY_4 : S_R_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet2,
                 preset => s_logisimNet28,
                 q      => s_logisimNet26,
                 qBar   => OPEN,
                 r      => s_logisimNet1,
                 reset  => s_logisimNet0,
                 s      => s_logisimNet13,
                 tick   => '1' );

   MEMORY_5 : S_R_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet2,
                 preset => s_logisimNet29,
                 q      => s_logisimNet21,
                 qBar   => OPEN,
                 r      => s_logisimNet20,
                 reset  => s_logisimNet0,
                 s      => s_logisimNet25,
                 tick   => '1' );

   GATES_6 : AND_GATE
      GENERIC MAP ( BubblesMask => "10" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet17,
                 result => s_logisimNet20 );

   GATES_7 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet3,
                 input2 => s_logisimNet17,
                 result => s_logisimNet25 );

   GATES_8 : AND_GATE
      GENERIC MAP ( BubblesMask => "10" )
      PORT MAP ( input1 => s_logisimNet11,
                 input2 => s_logisimNet17,
                 result => s_logisimNet4 );

   GATES_9 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet11,
                 input2 => s_logisimNet17,
                 result => s_logisimNet6 );

   MEMORY_10 : S_R_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet2,
                 preset => s_logisimNet30,
                 q      => s_logisimNet27,
                 qBar   => OPEN,
                 r      => s_logisimNet4,
                 reset  => s_logisimNet0,
                 s      => s_logisimNet6,
                 tick   => '1' );

   GATES_11 : AND_GATE
      GENERIC MAP ( BubblesMask => "10" )
      PORT MAP ( input1 => s_logisimBus5(7),
                 input2 => s_logisimNet17,
                 result => s_logisimNet19 );

   GATES_12 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus5(7),
                 input2 => s_logisimNet17,
                 result => s_logisimNet24 );

   MEMORY_13 : S_R_FLIPFLOP
      GENERIC MAP ( invertClockEnable => 0 )
      PORT MAP ( clock  => s_logisimNet2,
                 preset => s_logisimNet31,
                 q      => s_logisimNet12,
                 qBar   => OPEN,
                 r      => s_logisimNet19,
                 reset  => s_logisimNet0,
                 s      => s_logisimNet24,
                 tick   => '1' );


END platformIndependent;
