--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : cu                                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF cu IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT LogisimCounter
      GENERIC ( mode                      : INTEGER;
                ClkEdge                   : INTEGER;
                max_val                   : INTEGER;
                width                     : INTEGER);
      PORT ( ClockEnable               : IN  std_logic;
             Enable                    : IN  std_logic;
             GlobalClock               : IN  std_logic;
             LoadData                  : IN  std_logic_vector( (width-1) DOWNTO 0 );
             Up_n_Down                 : IN  std_logic;
             clear                     : IN  std_logic;
             load                      : IN  std_logic;
             CompareOut                : OUT std_logic;
             CountValue                : OUT std_logic_vector( (width-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT OR_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT OR_GATE_BUS
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT ROM_cu_rom
      PORT ( Address                   : IN  std_logic_vector( 7 DOWNTO 0 );
             Data                      : OUT std_logic_vector( 7 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT REGISTER_FLIP_FLOP
      GENERIC ( ActiveLevel               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Clock                     : IN  std_logic;
             ClockEnable               : IN  std_logic;
             D                         : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Reset                     : IN  std_logic;
             Tick                      : IN  std_logic;
             Q                         : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT ROM_cu_rom_2
      PORT ( Address                   : IN  std_logic_vector( 7 DOWNTO 0 );
             Data                      : OUT std_logic_vector( 7 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT AND_GATE_BUS
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Decoder_4
      PORT ( Enable                    : IN  std_logic;
             Sel                       : IN  std_logic_vector( 1 DOWNTO 0 );
             DecoderOut_0              : OUT std_logic;
             DecoderOut_1              : OUT std_logic;
             DecoderOut_2              : OUT std_logic;
             DecoderOut_3              : OUT std_logic);
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_0                    : std_logic_vector( 1 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_10                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_11                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_14                   : std_logic_vector( 1 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_15                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_18                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_19                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_22                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_4                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_8                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_1                    : std_logic;
   SIGNAL s_LOGISIM_NET_12                   : std_logic;
   SIGNAL s_LOGISIM_NET_13                   : std_logic;
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_21                   : std_logic;
   SIGNAL s_LOGISIM_NET_3                    : std_logic;
   SIGNAL s_LOGISIM_NET_6                    : std_logic;
   SIGNAL s_LOGISIM_NET_7                    : std_logic;
   SIGNAL s_LOGISIM_NET_9                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_3                    <= RESET;
   s_LOGISIM_BUS_5(7 DOWNTO 0)        <= IRIN;
   s_LOGISIM_NET_1                    <= CLK;
   s_LOGISIM_NET_12                   <= IRI_IN;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   IRI_OUT                            <= s_LOGISIM_NET_2;
   CUOUT                              <= s_LOGISIM_BUS_4(7 DOWNTO 0);
   PCC                                <= s_LOGISIM_NET_21;
   OUTFLAG                            <= s_LOGISIM_BUS_22(6 DOWNTO 4);
   INFLAG                             <= s_LOGISIM_BUS_22(3 DOWNTO 0);

   -----------------------------------------------------------------------------
   -- Here all in-lined components are defined                                --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_18(0) <= s_LOGISIM_NET_9;
   s_LOGISIM_BUS_18(1) <= s_LOGISIM_NET_9;
   s_LOGISIM_BUS_18(2) <= s_LOGISIM_NET_9;
   s_LOGISIM_BUS_18(3) <= s_LOGISIM_NET_9;
   s_LOGISIM_BUS_18(4) <= s_LOGISIM_NET_9;
   s_LOGISIM_BUS_18(5) <= s_LOGISIM_NET_9;
   s_LOGISIM_BUS_18(6) <= s_LOGISIM_NET_9;
   s_LOGISIM_BUS_18(7) <= s_LOGISIM_NET_9;

   s_LOGISIM_BUS_19(0) <= s_LOGISIM_NET_7;
   s_LOGISIM_BUS_19(1) <= s_LOGISIM_NET_7;
   s_LOGISIM_BUS_19(2) <= s_LOGISIM_NET_7;
   s_LOGISIM_BUS_19(3) <= s_LOGISIM_NET_7;
   s_LOGISIM_BUS_19(4) <= s_LOGISIM_NET_7;
   s_LOGISIM_BUS_19(5) <= s_LOGISIM_NET_7;
   s_LOGISIM_BUS_19(6) <= s_LOGISIM_NET_7;
   s_LOGISIM_BUS_19(7) <= s_LOGISIM_NET_7;

   s_LOGISIM_NET_13 <= '0';

   s_LOGISIM_NET_6 <= '1';

   s_LOGISIM_BUS_14(1 DOWNTO 0) <= std_logic_vector(to_unsigned(0,2));


   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   COUNTER_1 : LogisimCounter
      GENERIC MAP ( ClkEdge                            => 0,
                    max_val                            => 2,
                    mode                               => 0,
                    width                              => 2)
      PORT MAP ( ClockEnable                        => '1',
                 CompareOut                         => OPEN,
                 CountValue                         => s_LOGISIM_BUS_0(1 DOWNTO 0),
                 Enable                             => s_LOGISIM_NET_6,
                 GlobalClock                        => s_LOGISIM_NET_1,
                 LoadData                           => s_LOGISIM_BUS_14(1 DOWNTO 0),
                 Up_n_Down                          => s_LOGISIM_NET_6,
                 clear                              => s_LOGISIM_NET_3,
                 load                               => s_LOGISIM_NET_13);

   GATE_1 : OR_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_22(7),
                 Input_2                            => s_LOGISIM_NET_2,
                 Result                             => s_LOGISIM_NET_21);

   GATE_2 : OR_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_8(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_15(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_22(7 DOWNTO 0));

   ROM_1 : ROM_cu_rom
      PORT MAP ( Address                            => s_LOGISIM_BUS_4(7 DOWNTO 0),
                 Data                               => s_LOGISIM_BUS_11(7 DOWNTO 0));

   REGISTER_FILE_1 : REGISTER_FLIP_FLOP
      GENERIC MAP ( ActiveLevel                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Clock                              => s_LOGISIM_NET_1,
                 ClockEnable                        => s_LOGISIM_NET_12,
                 D                                  => s_LOGISIM_BUS_5(7 DOWNTO 0),
                 Q                                  => s_LOGISIM_BUS_4(7 DOWNTO 0),
                 Reset                              => s_LOGISIM_NET_3,
                 Tick                               => '1');

   ROM_2 : ROM_cu_rom_2
      PORT MAP ( Address                            => s_LOGISIM_BUS_4(7 DOWNTO 0),
                 Data                               => s_LOGISIM_BUS_10(7 DOWNTO 0));

   GATE_3 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_11(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_18(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_8(7 DOWNTO 0));

   GATE_4 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_10(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_19(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_15(7 DOWNTO 0));

   DECODER_1 : Decoder_4
      PORT MAP ( DecoderOut_0                       => s_LOGISIM_NET_2,
                 DecoderOut_1                       => s_LOGISIM_NET_9,
                 DecoderOut_2                       => s_LOGISIM_NET_7,
                 DecoderOut_3                       => OPEN,
                 Enable                             => '1',
                 Sel                                => s_LOGISIM_BUS_0(1 DOWNTO 0));


END PlatformIndependent;
