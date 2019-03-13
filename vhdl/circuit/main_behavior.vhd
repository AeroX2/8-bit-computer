--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF main IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
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

   COMPONENT OR_GATE_BUS_4_INPUTS
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_3                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_4                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

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

   COMPONENT OR_GATE_3_INPUTS
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Input_3                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT OR_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT AND_GATE_BUS
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Decoder_16
      PORT ( Enable                    : IN  std_logic;
             Sel                       : IN  std_logic_vector( 3 DOWNTO 0 );
             DecoderOut_0              : OUT std_logic;
             DecoderOut_1              : OUT std_logic;
             DecoderOut_10             : OUT std_logic;
             DecoderOut_11             : OUT std_logic;
             DecoderOut_12             : OUT std_logic;
             DecoderOut_13             : OUT std_logic;
             DecoderOut_14             : OUT std_logic;
             DecoderOut_15             : OUT std_logic;
             DecoderOut_2              : OUT std_logic;
             DecoderOut_3              : OUT std_logic;
             DecoderOut_4              : OUT std_logic;
             DecoderOut_5              : OUT std_logic;
             DecoderOut_6              : OUT std_logic;
             DecoderOut_7              : OUT std_logic;
             DecoderOut_8              : OUT std_logic;
             DecoderOut_9              : OUT std_logic);
   END COMPONENT;

   COMPONENT ROM_pc_rom
      PORT ( Address                   : IN  std_logic_vector( 15 DOWNTO 0 );
             Data                      : OUT std_logic_vector( 7 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Multiplexer_bus_2
      GENERIC ( NrOfBits                  : INTEGER);
      PORT ( Enable                    : IN  std_logic;
             MuxIn_0                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             MuxIn_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Sel                       : IN  std_logic;
             MuxOut                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Decoder_8
      PORT ( Enable                    : IN  std_logic;
             Sel                       : IN  std_logic_vector( 2 DOWNTO 0 );
             DecoderOut_0              : OUT std_logic;
             DecoderOut_1              : OUT std_logic;
             DecoderOut_2              : OUT std_logic;
             DecoderOut_3              : OUT std_logic;
             DecoderOut_4              : OUT std_logic;
             DecoderOut_5              : OUT std_logic;
             DecoderOut_6              : OUT std_logic;
             DecoderOut_7              : OUT std_logic);
   END COMPONENT;

   COMPONENT NOT_GATE
      PORT ( Input_1                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT AND_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT RAM_ram_c
      PORT ( Address                   : IN  std_logic_vector( 7 DOWNTO 0 );
             Clock                     : IN  std_logic;
             DataIn                    : IN  std_logic_vector( 7 DOWNTO 0 );
             OE                        : IN  std_logic;
             Tick                      : IN  std_logic;
             WE                        : IN  std_logic;
             DataOut                   : OUT std_logic_vector( 7 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT jmp
      PORT ( CIN                       : IN  std_logic;
             CLK                       : IN  std_logic;
             DATABUS                   : IN  std_logic_vector( 7 DOWNTO 0 );
             JMPINS                    : IN  std_logic_vector( 7 DOWNTO 0 );
             OE                        : IN  std_logic;
             OIN                       : IN  std_logic;
             PCIN                      : IN  std_logic_vector( 15 DOWNTO 0 );
             RESET                     : IN  std_logic;
             SIN                       : IN  std_logic;
             ZIN                       : IN  std_logic;
             PCOE                      : OUT std_logic;
             PCOUT                     : OUT std_logic_vector( 15 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT cmp
      PORT ( CARRY                     : IN  std_logic;
             CLK                       : IN  std_logic;
             CMPIN                     : IN  std_logic_vector( 7 DOWNTO 0 );
             OE                        : IN  std_logic;
             OVERFLOW                  : IN  std_logic;
             RESET                     : IN  std_logic;
             CFLAGO                    : OUT std_logic;
             OFLAGO                    : OUT std_logic;
             SFLAGO                    : OUT std_logic;
             ZFLAGO                    : OUT std_logic);
   END COMPONENT;

   COMPONENT cu
      PORT ( CLK                       : IN  std_logic;
             IRIN                      : IN  std_logic_vector( 7 DOWNTO 0 );
             IRI_IN                    : IN  std_logic;
             RESET                     : IN  std_logic;
             CUOUT                     : OUT std_logic_vector( 7 DOWNTO 0 );
             INFLAG                    : OUT std_logic_vector( 3 DOWNTO 0 );
             IRI_OUT                   : OUT std_logic;
             OUTFLAG                   : OUT std_logic_vector( 2 DOWNTO 0 );
             PCC                       : OUT std_logic);
   END COMPONENT;

   COMPONENT alu
      PORT ( A                         : IN  std_logic_vector( 7 DOWNTO 0 );
             B                         : IN  std_logic_vector( 7 DOWNTO 0 );
             CARRYIN                   : IN  std_logic;
             CINS                      : IN  std_logic_vector( 7 DOWNTO 0 );
             OE                        : IN  std_logic;
             ALUOUT                    : OUT std_logic_vector( 7 DOWNTO 0 );
             CARRYOUT                  : OUT std_logic;
             CMPO                      : OUT std_logic;
             OVEROUT                   : OUT std_logic);
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_0                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_10                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_15                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_17                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_19                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_21                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_22                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_23                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_27                   : std_logic_vector( 2 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_28                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_3                    : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_30                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_32                   : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_35                   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_36                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_39                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_4                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_41                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_45                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_50                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_58                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_6                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_11                   : std_logic;
   SIGNAL s_LOGISIM_NET_13                   : std_logic;
   SIGNAL s_LOGISIM_NET_14                   : std_logic;
   SIGNAL s_LOGISIM_NET_16                   : std_logic;
   SIGNAL s_LOGISIM_NET_18                   : std_logic;
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_20                   : std_logic;
   SIGNAL s_LOGISIM_NET_24                   : std_logic;
   SIGNAL s_LOGISIM_NET_25                   : std_logic;
   SIGNAL s_LOGISIM_NET_26                   : std_logic;
   SIGNAL s_LOGISIM_NET_29                   : std_logic;
   SIGNAL s_LOGISIM_NET_31                   : std_logic;
   SIGNAL s_LOGISIM_NET_33                   : std_logic;
   SIGNAL s_LOGISIM_NET_34                   : std_logic;
   SIGNAL s_LOGISIM_NET_37                   : std_logic;
   SIGNAL s_LOGISIM_NET_38                   : std_logic;
   SIGNAL s_LOGISIM_NET_40                   : std_logic;
   SIGNAL s_LOGISIM_NET_42                   : std_logic;
   SIGNAL s_LOGISIM_NET_43                   : std_logic;
   SIGNAL s_LOGISIM_NET_44                   : std_logic;
   SIGNAL s_LOGISIM_NET_46                   : std_logic;
   SIGNAL s_LOGISIM_NET_47                   : std_logic;
   SIGNAL s_LOGISIM_NET_48                   : std_logic;
   SIGNAL s_LOGISIM_NET_49                   : std_logic;
   SIGNAL s_LOGISIM_NET_51                   : std_logic;
   SIGNAL s_LOGISIM_NET_52                   : std_logic;
   SIGNAL s_LOGISIM_NET_53                   : std_logic;
   SIGNAL s_LOGISIM_NET_54                   : std_logic;
   SIGNAL s_LOGISIM_NET_55                   : std_logic;
   SIGNAL s_LOGISIM_NET_56                   : std_logic;
   SIGNAL s_LOGISIM_NET_60                   : std_logic;
   SIGNAL s_LOGISIM_NET_7                    : std_logic;
   SIGNAL s_LOGISIM_NET_8                    : std_logic;
   SIGNAL s_LOGISIM_NET_9                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_5(7 DOWNTO 0)        <= input_pins;
   s_LOGISIM_NET_2                    <= clk;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   output_pins                        <= s_LOGISIM_BUS_41(7 DOWNTO 0);

   -----------------------------------------------------------------------------
   -- Here all in-lined components are defined                                --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_7 <= '1';

   s_LOGISIM_NET_55 <= '1';

   s_LOGISIM_NET_49 <= '1';

   s_LOGISIM_BUS_6(0) <= s_LOGISIM_NET_46;
   s_LOGISIM_BUS_6(1) <= s_LOGISIM_NET_46;
   s_LOGISIM_BUS_6(2) <= s_LOGISIM_NET_46;
   s_LOGISIM_BUS_6(3) <= s_LOGISIM_NET_46;
   s_LOGISIM_BUS_6(4) <= s_LOGISIM_NET_46;
   s_LOGISIM_BUS_6(5) <= s_LOGISIM_NET_46;
   s_LOGISIM_BUS_6(6) <= s_LOGISIM_NET_46;
   s_LOGISIM_BUS_6(7) <= s_LOGISIM_NET_46;

   s_LOGISIM_BUS_4(0) <= s_LOGISIM_NET_26;
   s_LOGISIM_BUS_4(1) <= s_LOGISIM_NET_26;
   s_LOGISIM_BUS_4(2) <= s_LOGISIM_NET_26;
   s_LOGISIM_BUS_4(3) <= s_LOGISIM_NET_26;
   s_LOGISIM_BUS_4(4) <= s_LOGISIM_NET_26;
   s_LOGISIM_BUS_4(5) <= s_LOGISIM_NET_26;
   s_LOGISIM_BUS_4(6) <= s_LOGISIM_NET_26;
   s_LOGISIM_BUS_4(7) <= s_LOGISIM_NET_26;

   s_LOGISIM_BUS_45(0) <= s_LOGISIM_NET_33;
   s_LOGISIM_BUS_45(1) <= s_LOGISIM_NET_33;
   s_LOGISIM_BUS_45(2) <= s_LOGISIM_NET_33;
   s_LOGISIM_BUS_45(3) <= s_LOGISIM_NET_33;
   s_LOGISIM_BUS_45(4) <= s_LOGISIM_NET_33;
   s_LOGISIM_BUS_45(5) <= s_LOGISIM_NET_33;
   s_LOGISIM_BUS_45(6) <= s_LOGISIM_NET_33;
   s_LOGISIM_BUS_45(7) <= s_LOGISIM_NET_33;

   s_LOGISIM_NET_60 <= '1';

   s_LOGISIM_NET_56 <= LOGISIM_INPUT_BUBBLES(0);

   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   REGISTER_FILE_1 : REGISTER_FLIP_FLOP
      GENERIC MAP ( ActiveLevel                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 ClockEnable                        => s_LOGISIM_NET_53,
                 D                                  => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 Q                                  => s_LOGISIM_BUS_15(7 DOWNTO 0),
                 Reset                              => s_LOGISIM_NET_56,
                 Tick                               => '1');

   REGISTER_FILE_2 : REGISTER_FLIP_FLOP
      GENERIC MAP ( ActiveLevel                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 ClockEnable                        => s_LOGISIM_NET_7,
                 D                                  => s_LOGISIM_BUS_5(7 DOWNTO 0),
                 Q                                  => s_LOGISIM_BUS_39(7 DOWNTO 0),
                 Reset                              => s_LOGISIM_NET_56,
                 Tick                               => '1');

   GATE_1 : OR_GATE_BUS_4_INPUTS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_30(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_50(7 DOWNTO 0),
                 Input_3                            => s_LOGISIM_BUS_19(7 DOWNTO 0),
                 Input_4                            => s_LOGISIM_BUS_23(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_0(7 DOWNTO 0));

   COUNTER_1 : LogisimCounter
      GENERIC MAP ( ClkEdge                            => 1,
                    max_val                            => 255,
                    mode                               => 0,
                    width                              => 8)
      PORT MAP ( ClockEnable                        => '1',
                 CompareOut                         => s_LOGISIM_NET_52,
                 CountValue                         => s_LOGISIM_BUS_3(7 DOWNTO 0),
                 Enable                             => s_LOGISIM_NET_29,
                 GlobalClock                        => s_LOGISIM_NET_2,
                 LoadData                           => s_LOGISIM_BUS_35(7 DOWNTO 0),
                 Up_n_Down                          => s_LOGISIM_NET_55,
                 clear                              => s_LOGISIM_NET_56,
                 load                               => s_LOGISIM_NET_51);

   GATE_2 : OR_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_9,
                 Input_2                            => s_LOGISIM_NET_40,
                 Input_3                            => s_LOGISIM_NET_31,
                 Result                             => s_LOGISIM_NET_48);

   REGISTER_FILE_3 : REGISTER_FLIP_FLOP
      GENERIC MAP ( ActiveLevel                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 ClockEnable                        => s_LOGISIM_NET_34,
                 D                                  => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 Q                                  => s_LOGISIM_BUS_21(7 DOWNTO 0),
                 Reset                              => s_LOGISIM_NET_56,
                 Tick                               => '1');

   REGISTER_FILE_4 : REGISTER_FLIP_FLOP
      GENERIC MAP ( ActiveLevel                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 ClockEnable                        => s_LOGISIM_NET_20,
                 D                                  => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 Q                                  => s_LOGISIM_BUS_10(7 DOWNTO 0),
                 Reset                              => s_LOGISIM_NET_56,
                 Tick                               => '1');

   REGISTER_FILE_5 : REGISTER_FLIP_FLOP
      GENERIC MAP ( ActiveLevel                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 ClockEnable                        => s_LOGISIM_NET_47,
                 D                                  => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 Q                                  => s_LOGISIM_BUS_22(7 DOWNTO 0),
                 Reset                              => s_LOGISIM_NET_56,
                 Tick                               => '1');

   COUNTER_2 : LogisimCounter
      GENERIC MAP ( ClkEdge                            => 1,
                    max_val                            => 255,
                    mode                               => 0,
                    width                              => 8)
      PORT MAP ( ClockEnable                        => '1',
                 CompareOut                         => OPEN,
                 CountValue                         => s_LOGISIM_BUS_3(15 DOWNTO 8),
                 Enable                             => s_LOGISIM_NET_13,
                 GlobalClock                        => s_LOGISIM_NET_2,
                 LoadData                           => s_LOGISIM_BUS_35(15 DOWNTO 8),
                 Up_n_Down                          => s_LOGISIM_NET_49,
                 clear                              => s_LOGISIM_NET_56,
                 load                               => s_LOGISIM_NET_51);

   GATE_3 : OR_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_29,
                 Input_2                            => s_LOGISIM_NET_25,
                 Result                             => s_LOGISIM_NET_46);

   GATE_4 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_45(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_28(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_30(7 DOWNTO 0));

   DECODER_1 : Decoder_16
      PORT MAP ( DecoderOut_0                       => OPEN,
                 DecoderOut_1                       => s_LOGISIM_NET_54,
                 DecoderOut_10                      => OPEN,
                 DecoderOut_11                      => OPEN,
                 DecoderOut_12                      => OPEN,
                 DecoderOut_13                      => OPEN,
                 DecoderOut_14                      => OPEN,
                 DecoderOut_15                      => OPEN,
                 DecoderOut_2                       => s_LOGISIM_NET_42,
                 DecoderOut_3                       => s_LOGISIM_NET_47,
                 DecoderOut_4                       => s_LOGISIM_NET_53,
                 DecoderOut_5                       => s_LOGISIM_NET_34,
                 DecoderOut_6                       => s_LOGISIM_NET_20,
                 DecoderOut_7                       => OPEN,
                 DecoderOut_8                       => OPEN,
                 DecoderOut_9                       => OPEN,
                 Enable                             => '1',
                 Sel                                => s_LOGISIM_BUS_32(3 DOWNTO 0));

   ROM_1 : ROM_pc_rom
      PORT MAP ( Address                            => s_LOGISIM_BUS_3(15 DOWNTO 0),
                 Data                               => s_LOGISIM_BUS_36(7 DOWNTO 0));

   GATE_5 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_39(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_4(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_23(7 DOWNTO 0));

   MUX_1 : Multiplexer_bus_2
      GENERIC MAP ( NrOfBits                           => 8)
      PORT MAP ( Enable                             => '1',
                 MuxIn_0                            => s_LOGISIM_BUS_21(7 DOWNTO 0),
                 MuxIn_1                            => s_LOGISIM_BUS_10(7 DOWNTO 0),
                 MuxOut                             => s_LOGISIM_BUS_17(7 DOWNTO 0),
                 Sel                                => s_LOGISIM_NET_31);

   REGISTER_FILE_6 : REGISTER_FLIP_FLOP
      GENERIC MAP ( ActiveLevel                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 ClockEnable                        => s_LOGISIM_NET_54,
                 D                                  => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 Q                                  => s_LOGISIM_BUS_41(7 DOWNTO 0),
                 Reset                              => s_LOGISIM_NET_56,
                 Tick                               => '1');

   GATE_6 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_36(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_6(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_50(7 DOWNTO 0));

   DECODER_2 : Decoder_8
      PORT MAP ( DecoderOut_0                       => OPEN,
                 DecoderOut_1                       => s_LOGISIM_NET_26,
                 DecoderOut_2                       => s_LOGISIM_NET_9,
                 DecoderOut_3                       => s_LOGISIM_NET_40,
                 DecoderOut_4                       => s_LOGISIM_NET_31,
                 DecoderOut_5                       => s_LOGISIM_NET_25,
                 DecoderOut_6                       => s_LOGISIM_NET_33,
                 DecoderOut_7                       => s_LOGISIM_NET_37,
                 Enable                             => '1',
                 Sel                                => s_LOGISIM_BUS_27(2 DOWNTO 0));

   GATE_7 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_NET_2,
                 Result                             => s_LOGISIM_NET_11);

   GATE_8 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_52,
                 Input_2                            => s_LOGISIM_NET_29,
                 Result                             => s_LOGISIM_NET_13);

   RAM_1 : RAM_ram_c
      PORT MAP ( Address                            => s_LOGISIM_BUS_22(7 DOWNTO 0),
                 Clock                              => s_LOGISIM_NET_11,
                 DataIn                             => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 DataOut                            => s_LOGISIM_BUS_28(7 DOWNTO 0),
                 OE                                 => s_LOGISIM_NET_60,
                 Tick                               => '1',
                 WE                                 => s_LOGISIM_NET_42);


   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   jmp_c : jmp
      PORT MAP ( CIN                                => s_LOGISIM_NET_16,
                 CLK                                => s_LOGISIM_NET_2,
                 DATABUS                            => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 JMPINS                             => s_LOGISIM_BUS_58(7 DOWNTO 0),
                 OE                                 => s_LOGISIM_NET_37,
                 OIN                                => s_LOGISIM_NET_18,
                 PCIN                               => s_LOGISIM_BUS_35(15 DOWNTO 0),
                 PCOE                               => s_LOGISIM_NET_51,
                 PCOUT                              => s_LOGISIM_BUS_35(15 DOWNTO 0),
                 RESET                              => s_LOGISIM_NET_56,
                 SIN                                => s_LOGISIM_NET_14,
                 ZIN                                => s_LOGISIM_NET_8);

   cmp_c : cmp
      PORT MAP ( CARRY                              => s_LOGISIM_NET_38,
                 CFLAGO                             => s_LOGISIM_NET_16,
                 CLK                                => s_LOGISIM_NET_2,
                 CMPIN                              => s_LOGISIM_BUS_19(7 DOWNTO 0),
                 OE                                 => s_LOGISIM_NET_44,
                 OFLAGO                             => s_LOGISIM_NET_18,
                 OVERFLOW                           => s_LOGISIM_NET_24,
                 RESET                              => s_LOGISIM_NET_56,
                 SFLAGO                             => s_LOGISIM_NET_14,
                 ZFLAGO                             => s_LOGISIM_NET_8);

   cu_c : cu
      PORT MAP ( CLK                                => s_LOGISIM_NET_2,
                 CUOUT                              => s_LOGISIM_BUS_58(7 DOWNTO 0),
                 INFLAG                             => s_LOGISIM_BUS_32(3 DOWNTO 0),
                 IRIN                               => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 IRI_IN                             => s_LOGISIM_NET_43,
                 IRI_OUT                            => s_LOGISIM_NET_43,
                 OUTFLAG                            => s_LOGISIM_BUS_27(2 DOWNTO 0),
                 PCC                                => s_LOGISIM_NET_29,
                 RESET                              => s_LOGISIM_NET_56);

   alu_c : alu
      PORT MAP ( A                                  => s_LOGISIM_BUS_15(7 DOWNTO 0),
                 ALUOUT                             => s_LOGISIM_BUS_19(7 DOWNTO 0),
                 B                                  => s_LOGISIM_BUS_17(7 DOWNTO 0),
                 CARRYIN                            => s_LOGISIM_NET_16,
                 CARRYOUT                           => s_LOGISIM_NET_38,
                 CINS                               => s_LOGISIM_BUS_58(7 DOWNTO 0),
                 CMPO                               => s_LOGISIM_NET_44,
                 OE                                 => s_LOGISIM_NET_48,
                 OVEROUT                            => s_LOGISIM_NET_24);


END PlatformIndependent;
