--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : cu                                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF cu IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

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

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT OR_GATE_BUS
         GENERIC ( BubblesMask : std_logic_vector;
                   NrOfBits    : INTEGER );
         PORT ( input1 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input2 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                result : OUT std_logic_vector( (NrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

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

      COMPONENT AND_GATE_BUS
         GENERIC ( BubblesMask : std_logic_vector;
                   NrOfBits    : INTEGER );
         PORT ( input1 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input2 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                result : OUT std_logic_vector( (NrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Decoder_4
         PORT ( sel          : IN  std_logic_vector( 1 DOWNTO 0 );
                decoderOut_0 : OUT std_logic;
                decoderOut_1 : OUT std_logic;
                decoderOut_2 : OUT std_logic;
                decoderOut_3 : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0  : std_logic_vector( 1 DOWNTO 0 );
   SIGNAL s_logisimBus10 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus11 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus14 : std_logic_vector( 1 DOWNTO 0 );
   SIGNAL s_logisimBus15 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus18 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus19 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus22 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus4  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus5(7 DOWNTO 0) <= IRIN;
   s_logisimNet1             <= CLK;
   s_logisimNet12            <= IRI_IN;
   s_logisimNet3             <= RESET;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   CUOUT   <= s_logisimBus4(7 DOWNTO 0);
   INFLAG  <= s_logisimBus22(3 DOWNTO 0);
   IRI_OUT <= s_logisimNet2;
   OUTFLAG <= s_logisimBus22(6 DOWNTO 4);
   PCC     <= s_logisimNet21;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- ROM: cu_rom
   WITH (s_logisimBus4) SELECT s_logisimBus11 <=
      X"80" WHEN X"40",
      X"23" WHEN X"80",
      X"80" WHEN X"41",
      X"23" WHEN X"81",
      X"80" WHEN X"42",
      X"23" WHEN X"82",
      X"80" WHEN X"43",
      X"33" WHEN X"83",
      X"80" WHEN X"44",
      X"33" WHEN X"84",
      X"80" WHEN X"45",
      X"33" WHEN X"85",
      X"80" WHEN X"46",
      X"43" WHEN X"86",
      X"80" WHEN X"47",
      X"43" WHEN X"87",
      X"80" WHEN X"48",
      X"43" WHEN X"88",
      X"80" WHEN X"49",
      X"53" WHEN X"89",
      X"80" WHEN X"4A",
      X"53" WHEN X"8A",
      X"53" WHEN X"8B",
      X"23" WHEN X"93",
      X"33" WHEN X"94",
      X"43" WHEN X"95",
      X"53" WHEN X"96",
      X"53" WHEN X"97",
      X"53" WHEN X"98",
      X"80" WHEN X"30",
      X"80" WHEN X"31",
      X"80" WHEN X"32",
      X"80" WHEN X"33",
      X"80" WHEN X"34",
      X"80" WHEN X"35",
      X"80" WHEN X"36",
      X"80" WHEN X"37",
      X"80" WHEN X"38",
      X"80" WHEN X"39",
      X"80" WHEN X"3A",
      X"00" WHEN OTHERS;

   -- Bit Extender
    s_logisimBus18(0)  <=  s_logisimNet9;
    s_logisimBus18(1)  <=  s_logisimNet9;
    s_logisimBus18(2)  <=  s_logisimNet9;
    s_logisimBus18(3)  <=  s_logisimNet9;
    s_logisimBus18(4)  <=  s_logisimNet9;
    s_logisimBus18(5)  <=  s_logisimNet9;
    s_logisimBus18(6)  <=  s_logisimNet9;
    s_logisimBus18(7)  <=  s_logisimNet9;


   -- Bit Extender
    s_logisimBus19(0)  <=  s_logisimNet7;
    s_logisimBus19(1)  <=  s_logisimNet7;
    s_logisimBus19(2)  <=  s_logisimNet7;
    s_logisimBus19(3)  <=  s_logisimNet7;
    s_logisimBus19(4)  <=  s_logisimNet7;
    s_logisimBus19(5)  <=  s_logisimNet7;
    s_logisimBus19(6)  <=  s_logisimNet7;
    s_logisimBus19(7)  <=  s_logisimNet7;


   -- ROM: cu_rom_2
   WITH (s_logisimBus4) SELECT s_logisimBus10 <=
      X"25" WHEN X"10",
      X"26" WHEN X"11",
      X"34" WHEN X"12",
      X"26" WHEN X"13",
      X"44" WHEN X"14",
      X"45" WHEN X"15",
      X"20" WHEN X"20",
      X"20" WHEN X"21",
      X"40" WHEN X"22",
      X"20" WHEN X"23",
      X"20" WHEN X"24",
      X"40" WHEN X"26",
      X"40" WHEN X"27",
      X"F0" WHEN X"30",
      X"F0" WHEN X"31",
      X"F0" WHEN X"32",
      X"F0" WHEN X"33",
      X"F0" WHEN X"34",
      X"F0" WHEN X"35",
      X"F0" WHEN X"36",
      X"F0" WHEN X"37",
      X"F0" WHEN X"38",
      X"F0" WHEN X"39",
      X"F0" WHEN X"3A",
      X"F0" WHEN X"40",
      X"F0" WHEN X"41",
      X"F0" WHEN X"42",
      X"F0" WHEN X"43",
      X"F0" WHEN X"44",
      X"F0" WHEN X"45",
      X"F0" WHEN X"46",
      X"F0" WHEN X"47",
      X"F0" WHEN X"48",
      X"F0" WHEN X"49",
      X"F0" WHEN X"4A",
      X"34" WHEN X"50",
      X"34" WHEN X"51",
      X"34" WHEN X"52",
      X"34" WHEN X"53",
      X"34" WHEN X"54",
      X"34" WHEN X"55",
      X"34" WHEN X"56",
      X"34" WHEN X"57",
      X"34" WHEN X"58",
      X"34" WHEN X"59",
      X"34" WHEN X"5A",
      X"34" WHEN X"5B",
      X"34" WHEN X"5C",
      X"34" WHEN X"5D",
      X"34" WHEN X"5E",
      X"34" WHEN X"5F",
      X"34" WHEN X"60",
      X"34" WHEN X"61",
      X"34" WHEN X"62",
      X"34" WHEN X"63",
      X"34" WHEN X"64",
      X"34" WHEN X"65",
      X"34" WHEN X"66",
      X"34" WHEN X"67",
      X"34" WHEN X"68",
      X"34" WHEN X"69",
      X"34" WHEN X"6A",
      X"34" WHEN X"6B",
      X"34" WHEN X"6C",
      X"34" WHEN X"6D",
      X"34" WHEN X"6E",
      X"34" WHEN X"6F",
      X"D4" WHEN X"70",
      X"D5" WHEN X"71",
      X"D6" WHEN X"72",
      X"64" WHEN X"80",
      X"65" WHEN X"81",
      X"66" WHEN X"82",
      X"64" WHEN X"83",
      X"65" WHEN X"84",
      X"66" WHEN X"85",
      X"64" WHEN X"86",
      X"65" WHEN X"87",
      X"66" WHEN X"88",
      X"64" WHEN X"89",
      X"65" WHEN X"8A",
      X"66" WHEN X"8B",
      X"22" WHEN X"90",
      X"32" WHEN X"91",
      X"42" WHEN X"92",
      X"22" WHEN X"93",
      X"32" WHEN X"94",
      X"42" WHEN X"95",
      X"22" WHEN X"96",
      X"32" WHEN X"97",
      X"42" WHEN X"98",
      X"23" WHEN X"99",
      X"33" WHEN X"9A",
      X"43" WHEN X"9B",
      X"14" WHEN X"A0",
      X"15" WHEN X"A1",
      X"16" WHEN X"A2",
      X"21" WHEN X"B0",
      X"31" WHEN X"B1",
      X"41" WHEN X"B2",
      X"0F" WHEN X"F0",
      X"00" WHEN OTHERS;

   -- Ground
    s_logisimNet13  <=  '0';


   -- Power
    s_logisimNet6  <=  '1';


   -- Ground
    s_logisimBus14(1 DOWNTO 0)  <=  "00";


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   cuctr : LogisimCounter
      GENERIC MAP ( invertClock => 1,
                    maxVal      => "10",
                    mode        => 0,
                    width       => 2 )
      PORT MAP ( clear      => s_logisimNet3,
                 clock      => s_logisimNet1,
                 compareOut => OPEN,
                 countValue => s_logisimBus0(1 DOWNTO 0),
                 enable     => s_logisimNet6,
                 load       => s_logisimNet13,
                 loadData   => s_logisimBus14(1 DOWNTO 0),
                 tick       => '1',
                 upNotDown  => s_logisimNet6 );

   GATES_2 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus22(7),
                 input2 => s_logisimNet2,
                 result => s_logisimNet21 );

   GATES_3 : OR_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus8(7 DOWNTO 0),
                 input2 => s_logisimBus15(7 DOWNTO 0),
                 result => s_logisimBus22(7 DOWNTO 0) );

   MEMORY_4 : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 0,
                    nrOfBits    => 8 )
      PORT MAP ( clock       => s_logisimNet1,
                 clockEnable => s_logisimNet12,
                 d           => s_logisimBus5(7 DOWNTO 0),
                 q           => s_logisimBus4(7 DOWNTO 0),
                 reset       => s_logisimNet3,
                 tick        => '1' );

   GATES_5 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus11(7 DOWNTO 0),
                 input2 => s_logisimBus18(7 DOWNTO 0),
                 result => s_logisimBus8(7 DOWNTO 0) );

   GATES_6 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus10(7 DOWNTO 0),
                 input2 => s_logisimBus19(7 DOWNTO 0),
                 result => s_logisimBus15(7 DOWNTO 0) );

   PLEXERS_7 : Decoder_4
      PORT MAP ( decoderOut_0 => s_logisimNet2,
                 decoderOut_1 => s_logisimNet9,
                 decoderOut_2 => s_logisimNet7,
                 decoderOut_3 => OPEN,
                 sel          => s_logisimBus0(1 DOWNTO 0) );


END platformIndependent;
