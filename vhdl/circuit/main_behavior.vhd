--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF main IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT REGISTER_FLIP_FLOP
         GENERIC ( invertClock : INTEGER;
                   nrOfBits    : INTEGER );
         PORT ( clock       : IN  std_logic;
                clockEnable : IN  std_logic;
                d           : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                reset       : IN  std_logic;
                tick        : IN  std_logic;
                q           : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT OR_GATE_BUS_4_INPUTS
         GENERIC ( BubblesMask : std_logic_vector;
                   NrOfBits    : INTEGER );
         PORT ( input1 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input2 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input3 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input4 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                result : OUT std_logic_vector( (NrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT LogisimCounter
         GENERIC ( invertClock : INTEGER;
                   maxVal      : std_logic_vector;
                   mode        : INTEGER;
                   width       : INTEGER );
         PORT ( clear      : IN  std_logic;
                clock      : IN  std_logic;
                enable     : IN  std_logic;
                load       : IN  std_logic;
                loadData   : IN  std_logic_vector( (width - 1) DOWNTO 0 );
                tick       : IN  std_logic;
                upNotDown  : IN  std_logic;
                compareOut : OUT std_logic;
                countValue : OUT std_logic_vector( (width - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT OR_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_BUS
         GENERIC ( BubblesMask : std_logic_vector;
                   NrOfBits    : INTEGER );
         PORT ( input1 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input2 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                result : OUT std_logic_vector( (NrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Decoder_16
         PORT ( sel           : IN  std_logic_vector( 3 DOWNTO 0 );
                decoderOut_0  : OUT std_logic;
                decoderOut_1  : OUT std_logic;
                decoderOut_10 : OUT std_logic;
                decoderOut_11 : OUT std_logic;
                decoderOut_12 : OUT std_logic;
                decoderOut_13 : OUT std_logic;
                decoderOut_14 : OUT std_logic;
                decoderOut_15 : OUT std_logic;
                decoderOut_2  : OUT std_logic;
                decoderOut_3  : OUT std_logic;
                decoderOut_4  : OUT std_logic;
                decoderOut_5  : OUT std_logic;
                decoderOut_6  : OUT std_logic;
                decoderOut_7  : OUT std_logic;
                decoderOut_8  : OUT std_logic;
                decoderOut_9  : OUT std_logic );
      END COMPONENT;

      COMPONENT Multiplexer_bus_2
         GENERIC ( nrOfBits : INTEGER );
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_1 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                sel     : IN  std_logic;
                muxOut  : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Decoder_8
         PORT ( sel          : IN  std_logic_vector( 2 DOWNTO 0 );
                decoderOut_0 : OUT std_logic;
                decoderOut_1 : OUT std_logic;
                decoderOut_2 : OUT std_logic;
                decoderOut_3 : OUT std_logic;
                decoderOut_4 : OUT std_logic;
                decoderOut_5 : OUT std_logic;
                decoderOut_6 : OUT std_logic;
                decoderOut_7 : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT RAMCONTENTS_ram_c
         PORT ( address : IN  std_logic_vector( 7 DOWNTO 0 );
                clock   : IN  std_logic;
                dataIn  : IN  std_logic_vector( 7 DOWNTO 0 );
                oe      : IN  std_logic;
                tick    : IN  std_logic;
                we      : IN  std_logic;
                dataOut : OUT std_logic_vector( 7 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT OR_GATE_BUS
         GENERIC ( BubblesMask : std_logic_vector;
                   NrOfBits    : INTEGER );
         PORT ( input1 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input2 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                result : OUT std_logic_vector( (NrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Demultiplexer_bus_2
         GENERIC ( nrOfBits : INTEGER );
         PORT ( demuxIn    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                enable     : IN  std_logic;
                sel        : IN  std_logic;
                demuxOut_0 : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                demuxOut_1 : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT jmp
         PORT ( CIN     : IN  std_logic;
                CLK     : IN  std_logic;
                DATABUS : IN  std_logic_vector( 7 DOWNTO 0 );
                JMPINS  : IN  std_logic_vector( 7 DOWNTO 0 );
                OE      : IN  std_logic;
                OIN     : IN  std_logic;
                PCIN    : IN  std_logic_vector( 15 DOWNTO 0 );
                RESET   : IN  std_logic;
                SIN     : IN  std_logic;
                ZIN     : IN  std_logic;
                PCOE    : OUT std_logic;
                PCOUT   : OUT std_logic_vector( 15 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT cmp
         PORT ( CARRY    : IN  std_logic;
                CLK      : IN  std_logic;
                CMPIN    : IN  std_logic_vector( 7 DOWNTO 0 );
                OE       : IN  std_logic;
                OVERFLOW : IN  std_logic;
                RESET    : IN  std_logic;
                CFLAGO   : OUT std_logic;
                OFLAGO   : OUT std_logic;
                SFLAGO   : OUT std_logic;
                ZFLAGO   : OUT std_logic );
      END COMPONENT;

      COMPONENT cu
         PORT ( CLK     : IN  std_logic;
                IRIN    : IN  std_logic_vector( 7 DOWNTO 0 );
                IRI_IN  : IN  std_logic;
                RESET   : IN  std_logic;
                CUOUT   : OUT std_logic_vector( 7 DOWNTO 0 );
                INFLAG  : OUT std_logic_vector( 3 DOWNTO 0 );
                IRI_OUT : OUT std_logic;
                OUTFLAG : OUT std_logic_vector( 2 DOWNTO 0 );
                PCC     : OUT std_logic );
      END COMPONENT;

      COMPONENT alu
         PORT ( A        : IN  std_logic_vector( 7 DOWNTO 0 );
                B        : IN  std_logic_vector( 7 DOWNTO 0 );
                CARRYIN  : IN  std_logic;
                CINS     : IN  std_logic_vector( 7 DOWNTO 0 );
                OE       : IN  std_logic;
                ALUOUT   : OUT std_logic_vector( 7 DOWNTO 0 );
                CARRYOUT : OUT std_logic;
                CMPO     : OUT std_logic;
                OVEROUT  : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus11 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus16 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus17 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus19 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus21 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus23 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus24 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus25 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus29 : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_logisimBus3  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus30 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus32 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus33 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus35 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus38 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus39 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus4  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus42 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus44 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus45 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus49 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus54 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus62 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet43 : std_logic;
   SIGNAL s_logisimNet46 : std_logic;
   SIGNAL s_logisimNet47 : std_logic;
   SIGNAL s_logisimNet48 : std_logic;
   SIGNAL s_logisimNet50 : std_logic;
   SIGNAL s_logisimNet51 : std_logic;
   SIGNAL s_logisimNet52 : std_logic;
   SIGNAL s_logisimNet53 : std_logic;
   SIGNAL s_logisimNet55 : std_logic;
   SIGNAL s_logisimNet56 : std_logic;
   SIGNAL s_logisimNet57 : std_logic;
   SIGNAL s_logisimNet58 : std_logic;
   SIGNAL s_logisimNet59 : std_logic;
   SIGNAL s_logisimNet60 : std_logic;
   SIGNAL s_logisimNet64 : std_logic;
   SIGNAL s_logisimNet65 : std_logic;
   SIGNAL s_logisimNet66 : std_logic;
   SIGNAL s_logisimNet67 : std_logic;
   SIGNAL s_logisimNet68 : std_logic;
   SIGNAL s_logisimNet69 : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet70 : std_logic;
   SIGNAL s_logisimNet71 : std_logic;
   SIGNAL s_logisimNet72 : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus5(7 DOWNTO 0) <= input_pins;
   s_logisimNet2             <= clk;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   output_pins <= s_logisimBus45(7 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Power
    s_logisimNet8  <=  '1';


   -- Power
    s_logisimNet59  <=  '1';


   -- Power
    s_logisimNet53  <=  '1';


   -- Bit Extender
    s_logisimBus6(0)  <=  s_logisimNet50;
    s_logisimBus6(1)  <=  s_logisimNet50;
    s_logisimBus6(2)  <=  s_logisimNet50;
    s_logisimBus6(3)  <=  s_logisimNet50;
    s_logisimBus6(4)  <=  s_logisimNet50;
    s_logisimBus6(5)  <=  s_logisimNet50;
    s_logisimBus6(6)  <=  s_logisimNet50;
    s_logisimBus6(7)  <=  s_logisimNet50;


   -- Bit Extender
    s_logisimBus4(0)  <=  s_logisimNet28;
    s_logisimBus4(1)  <=  s_logisimNet28;
    s_logisimBus4(2)  <=  s_logisimNet28;
    s_logisimBus4(3)  <=  s_logisimNet28;
    s_logisimBus4(4)  <=  s_logisimNet28;
    s_logisimBus4(5)  <=  s_logisimNet28;
    s_logisimBus4(6)  <=  s_logisimNet28;
    s_logisimBus4(7)  <=  s_logisimNet28;


   -- Bit Extender
    s_logisimBus49(0)  <=  s_logisimNet36;
    s_logisimBus49(1)  <=  s_logisimNet36;
    s_logisimBus49(2)  <=  s_logisimNet36;
    s_logisimBus49(3)  <=  s_logisimNet36;
    s_logisimBus49(4)  <=  s_logisimNet36;
    s_logisimBus49(5)  <=  s_logisimNet36;
    s_logisimBus49(6)  <=  s_logisimNet36;
    s_logisimBus49(7)  <=  s_logisimNet36;


   -- ROM: pc_rom
   WITH (s_logisimBus3) SELECT s_logisimBus39 <=
      X"70" WHEN X"0000",
      X"01" WHEN X"0001",
      X"71" WHEN X"0002",
      X"11" WHEN X"0004",
      X"5D" WHEN X"0005",
      X"33" WHEN X"0006",
      X"B0" WHEN X"0009",
      X"15" WHEN X"000A",
      X"36" WHEN X"000B",
      X"04" WHEN X"000D",
      X"00" WHEN OTHERS;

   -- NOT Gate
   s_logisimNet12 <=  NOT s_logisimNet2;

   -- Power
    s_logisimNet64  <=  '1';


   -- Button: reset_button
   s_logisimNet60 <= logisimInputBubbles(0);

   -- DIP Switch: DipSwitch_2
   s_logisimBus33(0) <= logisimInputBubbles(8);
   s_logisimBus33(1) <= logisimInputBubbles(7);
   s_logisimBus33(2) <= logisimInputBubbles(6);
   s_logisimBus33(3) <= logisimInputBubbles(5);
   s_logisimBus33(4) <= logisimInputBubbles(4);
   s_logisimBus33(5) <= logisimInputBubbles(3);
   s_logisimBus33(6) <= logisimInputBubbles(2);
   s_logisimBus33(7) <= logisimInputBubbles(1);

   -- DIP Switch: DipSwitch_1
   s_logisimNet7 <= logisimInputBubbles(9);

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   areg : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 0,
                    nrOfBits    => 8 )
      PORT MAP ( clock       => s_logisimNet2,
                 clockEnable => s_logisimNet57,
                 d           => s_logisimBus0(7 DOWNTO 0),
                 q           => s_logisimBus16(7 DOWNTO 0),
                 reset       => s_logisimNet60,
                 tick        => '1' );

   ireg : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 0,
                    nrOfBits    => 8 )
      PORT MAP ( clock       => s_logisimNet2,
                 clockEnable => s_logisimNet8,
                 d           => s_logisimBus5(7 DOWNTO 0),
                 q           => s_logisimBus42(7 DOWNTO 0),
                 reset       => s_logisimNet60,
                 tick        => '1' );

   GATES_3 : OR_GATE_BUS_4_INPUTS
      GENERIC MAP ( BubblesMask => X"0",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus32(7 DOWNTO 0),
                 input2 => s_logisimBus54(7 DOWNTO 0),
                 input3 => s_logisimBus21(7 DOWNTO 0),
                 input4 => s_logisimBus25(7 DOWNTO 0),
                 result => s_logisimBus0(7 DOWNTO 0) );

   pc_low : LogisimCounter
      GENERIC MAP ( invertClock => 0,
                    maxVal      => X"FF",
                    mode        => 0,
                    width       => 8 )
      PORT MAP ( clear      => s_logisimNet60,
                 clock      => s_logisimNet2,
                 compareOut => s_logisimNet56,
                 countValue => s_logisimBus3(7 DOWNTO 0),
                 enable     => s_logisimNet31,
                 load       => s_logisimNet55,
                 loadData   => s_logisimBus44(7 DOWNTO 0),
                 tick       => '1',
                 upNotDown  => s_logisimNet59 );

   GATES_5 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "000" )
      PORT MAP ( input1 => s_logisimNet10,
                 input2 => s_logisimNet43,
                 input3 => s_logisimNet34,
                 result => s_logisimNet52 );

   creg : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 0,
                    nrOfBits    => 8 )
      PORT MAP ( clock       => s_logisimNet2,
                 clockEnable => s_logisimNet37,
                 d           => s_logisimBus0(7 DOWNTO 0),
                 q           => s_logisimBus23(7 DOWNTO 0),
                 reset       => s_logisimNet60,
                 tick        => '1' );

   dreg : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 0,
                    nrOfBits    => 8 )
      PORT MAP ( clock       => s_logisimNet2,
                 clockEnable => s_logisimNet22,
                 d           => s_logisimBus0(7 DOWNTO 0),
                 q           => s_logisimBus11(7 DOWNTO 0),
                 reset       => s_logisimNet60,
                 tick        => '1' );

   mar : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 0,
                    nrOfBits    => 8 )
      PORT MAP ( clock       => s_logisimNet2,
                 clockEnable => s_logisimNet51,
                 d           => s_logisimBus0(7 DOWNTO 0),
                 q           => s_logisimBus24(7 DOWNTO 0),
                 reset       => s_logisimNet60,
                 tick        => '1' );

   pc_high : LogisimCounter
      GENERIC MAP ( invertClock => 0,
                    maxVal      => X"FF",
                    mode        => 0,
                    width       => 8 )
      PORT MAP ( clear      => s_logisimNet60,
                 clock      => s_logisimNet2,
                 compareOut => OPEN,
                 countValue => s_logisimBus3(15 DOWNTO 8),
                 enable     => s_logisimNet14,
                 load       => s_logisimNet55,
                 loadData   => s_logisimBus44(15 DOWNTO 8),
                 tick       => '1',
                 upNotDown  => s_logisimNet53 );

   GATES_10 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet31,
                 input2 => s_logisimNet27,
                 result => s_logisimNet50 );

   GATES_11 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus49(7 DOWNTO 0),
                 input2 => s_logisimBus30(7 DOWNTO 0),
                 result => s_logisimBus32(7 DOWNTO 0) );

   PLEXERS_12 : Decoder_16
      PORT MAP ( decoderOut_0  => OPEN,
                 decoderOut_1  => s_logisimNet58,
                 decoderOut_10 => OPEN,
                 decoderOut_11 => OPEN,
                 decoderOut_12 => OPEN,
                 decoderOut_13 => OPEN,
                 decoderOut_14 => OPEN,
                 decoderOut_15 => OPEN,
                 decoderOut_2  => s_logisimNet46,
                 decoderOut_3  => s_logisimNet51,
                 decoderOut_4  => s_logisimNet57,
                 decoderOut_5  => s_logisimNet37,
                 decoderOut_6  => s_logisimNet22,
                 decoderOut_7  => OPEN,
                 decoderOut_8  => OPEN,
                 decoderOut_9  => OPEN,
                 sel           => s_logisimBus35(3 DOWNTO 0) );

   GATES_13 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus42(7 DOWNTO 0),
                 input2 => s_logisimBus4(7 DOWNTO 0),
                 result => s_logisimBus25(7 DOWNTO 0) );

   PLEXERS_14 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 8 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus23(7 DOWNTO 0),
                 muxIn_1 => s_logisimBus11(7 DOWNTO 0),
                 muxOut  => s_logisimBus19(7 DOWNTO 0),
                 sel     => s_logisimNet34 );

   oreg : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 0,
                    nrOfBits    => 8 )
      PORT MAP ( clock       => s_logisimNet2,
                 clockEnable => s_logisimNet58,
                 d           => s_logisimBus0(7 DOWNTO 0),
                 q           => s_logisimBus45(7 DOWNTO 0),
                 reset       => s_logisimNet60,
                 tick        => '1' );

   GATES_16 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus39(7 DOWNTO 0),
                 input2 => s_logisimBus6(7 DOWNTO 0),
                 result => s_logisimBus54(7 DOWNTO 0) );

   PLEXERS_17 : Decoder_8
      PORT MAP ( decoderOut_0 => OPEN,
                 decoderOut_1 => s_logisimNet28,
                 decoderOut_2 => s_logisimNet10,
                 decoderOut_3 => s_logisimNet43,
                 decoderOut_4 => s_logisimNet34,
                 decoderOut_5 => s_logisimNet27,
                 decoderOut_6 => s_logisimNet36,
                 decoderOut_7 => s_logisimNet40,
                 sel          => s_logisimBus29(2 DOWNTO 0) );

   GATES_18 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet56,
                 input2 => s_logisimNet31,
                 result => s_logisimNet14 );

   ram_c : RAMCONTENTS_ram_c
      PORT MAP ( address => s_logisimBus24(7 DOWNTO 0),
                 clock   => s_logisimNet12,
                 dataIn  => s_logisimBus0(7 DOWNTO 0),
                 dataOut => s_logisimBus30(7 DOWNTO 0),
                 oe      => '1',
                 tick    => '1',
                 we      => s_logisimNet46 );

   GATES_20 : OR_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 16 )
      PORT MAP ( input1 => s_logisimBus38(15 DOWNTO 0),
                 input2 => s_logisimBus17(15 DOWNTO 0),
                 result => s_logisimBus44(15 DOWNTO 0) );

   PLEXERS_21 : Demultiplexer_bus_2
      GENERIC MAP ( nrOfBits => 8 )
      PORT MAP ( demuxIn    => s_logisimBus33(7 DOWNTO 0),
                 demuxOut_0 => s_logisimBus17(7 DOWNTO 0),
                 demuxOut_1 => s_logisimBus17(15 DOWNTO 8),
                 enable     => '1',
                 sel        => s_logisimNet7 );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   jmp_c : jmp
      PORT MAP ( CIN     => s_logisimNet18,
                 CLK     => s_logisimNet2,
                 DATABUS => s_logisimBus0(7 DOWNTO 0),
                 JMPINS  => s_logisimBus62(7 DOWNTO 0),
                 OE      => s_logisimNet40,
                 OIN     => s_logisimNet20,
                 PCIN    => s_logisimBus38(15 DOWNTO 0),
                 PCOE    => s_logisimNet55,
                 PCOUT   => s_logisimBus38(15 DOWNTO 0),
                 RESET   => s_logisimNet60,
                 SIN     => s_logisimNet15,
                 ZIN     => s_logisimNet9 );

   cmp_c : cmp
      PORT MAP ( CARRY    => s_logisimNet41,
                 CFLAGO   => s_logisimNet18,
                 CLK      => s_logisimNet2,
                 CMPIN    => s_logisimBus21(7 DOWNTO 0),
                 OE       => s_logisimNet48,
                 OFLAGO   => s_logisimNet20,
                 OVERFLOW => s_logisimNet26,
                 RESET    => s_logisimNet60,
                 SFLAGO   => s_logisimNet15,
                 ZFLAGO   => s_logisimNet9 );

   cu_c : cu
      PORT MAP ( CLK     => s_logisimNet2,
                 CUOUT   => s_logisimBus62(7 DOWNTO 0),
                 INFLAG  => s_logisimBus35(3 DOWNTO 0),
                 IRIN    => s_logisimBus0(7 DOWNTO 0),
                 IRI_IN  => s_logisimNet47,
                 IRI_OUT => s_logisimNet47,
                 OUTFLAG => s_logisimBus29(2 DOWNTO 0),
                 PCC     => s_logisimNet31,
                 RESET   => s_logisimNet60 );

   alu_c : alu
      PORT MAP ( A        => s_logisimBus16(7 DOWNTO 0),
                 ALUOUT   => s_logisimBus21(7 DOWNTO 0),
                 B        => s_logisimBus19(7 DOWNTO 0),
                 CARRYIN  => s_logisimNet18,
                 CARRYOUT => s_logisimNet41,
                 CINS     => s_logisimBus62(7 DOWNTO 0),
                 CMPO     => s_logisimNet48,
                 OE       => s_logisimNet52,
                 OVEROUT  => s_logisimNet26 );

END platformIndependent;
