--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : jmp                                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF jmp IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT OR_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT AND_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT Multiplexer_bus_2
      GENERIC ( NrOfBits                  : INTEGER);
      PORT ( Enable                    : IN  std_logic;
             MuxIn_0                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             MuxIn_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Sel                       : IN  std_logic;
             MuxOut                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT XOR_GATE_ONEHOT
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT NOT_GATE
      PORT ( Input_1                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT ROM_jmp_rom
      PORT ( Address                   : IN  std_logic_vector( 7 DOWNTO 0 );
             Data                      : OUT std_logic_vector( 4 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Adder
      GENERIC ( ExtendedBits              : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( CarryIn                   : IN  std_logic;
             DataA                     : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             DataB                     : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             CarryOut                  : OUT std_logic;
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT BitSelector
      GENERIC ( NrOfExtendedBits          : INTEGER;
                NrOfSelBits               : INTEGER;
                NrOfInputBits             : INTEGER);
      PORT ( DataIn                    : IN  std_logic_vector( (NrOfInputBits-1) DOWNTO 0 );
             Sel                       : IN  std_logic_vector( (NrOfSelBits-1) DOWNTO 0 );
             DataOut                   : OUT std_logic);
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


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_18                   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_24                   : std_logic_vector( 10 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_25                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_29                   : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_30                   : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_8                    : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_13                   : std_logic;
   SIGNAL s_LOGISIM_NET_14                   : std_logic;
   SIGNAL s_LOGISIM_NET_16                   : std_logic;
   SIGNAL s_LOGISIM_NET_17                   : std_logic;
   SIGNAL s_LOGISIM_NET_20                   : std_logic;
   SIGNAL s_LOGISIM_NET_21                   : std_logic;
   SIGNAL s_LOGISIM_NET_23                   : std_logic;
   SIGNAL s_LOGISIM_NET_26                   : std_logic;
   SIGNAL s_LOGISIM_NET_28                   : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_8(7 DOWNTO 0)        <= DATABUS;
   s_LOGISIM_BUS_24(1)                <= ZIN;
   s_LOGISIM_NET_21                   <= RESET;
   s_LOGISIM_NET_17                   <= SIN;
   s_LOGISIM_NET_23                   <= CLK;
   s_LOGISIM_BUS_30(15 DOWNTO 0)      <= PCIN;
   s_LOGISIM_BUS_25(7 DOWNTO 0)       <= JMPINS;
   s_LOGISIM_NET_28                   <= OE;
   s_LOGISIM_NET_14                   <= OIN;
   s_LOGISIM_BUS_24(3)                <= CIN;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   PCOUT                              <= s_LOGISIM_BUS_18(15 DOWNTO 0);
   PCOE                               <= s_LOGISIM_NET_13;

   -----------------------------------------------------------------------------
   -- Here all in-lined components are defined                                --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_24(0) <= '1';

   s_LOGISIM_NET_26 <= '1';

   s_LOGISIM_NET_20 <= '0';


   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   GATE_1 : OR_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(1),
                 Input_2                            => s_LOGISIM_BUS_24(3),
                 Result                             => s_LOGISIM_BUS_24(4));

   GATE_2 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_28,
                 Input_2                            => s_LOGISIM_NET_16,
                 Result                             => s_LOGISIM_NET_13);

   MUX_1 : Multiplexer_bus_2
      GENERIC MAP ( NrOfBits                           => 16)
      PORT MAP ( Enable                             => s_LOGISIM_NET_13,
                 MuxIn_0                            => s_LOGISIM_BUS_8(15 DOWNTO 0),
                 MuxIn_1                            => s_LOGISIM_BUS_5(15 DOWNTO 0),
                 MuxOut                             => s_LOGISIM_BUS_18(15 DOWNTO 0),
                 Sel                                => s_LOGISIM_BUS_29(4));

   GATE_3 : XOR_GATE_ONEHOT
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_14,
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_BUS_24(7));

   GATE_4 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 2)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(9),
                 Input_2                            => s_LOGISIM_BUS_24(1),
                 Result                             => s_LOGISIM_BUS_24(10));

   GATE_5 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(7),
                 Result                             => s_LOGISIM_BUS_24(9));

   ROM_1 : ROM_jmp_rom
      PORT MAP ( Address                            => s_LOGISIM_BUS_25(7 DOWNTO 0),
                 Data                               => s_LOGISIM_BUS_29(4 DOWNTO 0));

   GATE_6 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(3),
                 Result                             => s_LOGISIM_BUS_24(6));

   GATE_7 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(4),
                 Result                             => s_LOGISIM_BUS_24(5));

   GATE_8 : OR_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(1),
                 Input_2                            => s_LOGISIM_BUS_24(7),
                 Result                             => s_LOGISIM_BUS_24(8));

   GATE_9 : NOT_GATE
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(1),
                 Result                             => s_LOGISIM_BUS_24(2));

   ADDER2C_1 : Adder
      GENERIC MAP ( ExtendedBits                       => 17,
                    NrOfBits                           => 16)
      PORT MAP ( CarryIn                            => s_LOGISIM_NET_20,
                 CarryOut                           => OPEN,
                 DataA                              => s_LOGISIM_BUS_30(15 DOWNTO 0),
                 DataB                              => s_LOGISIM_BUS_8(15 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_5(15 DOWNTO 0));

   BITSELECTOR_1 : BitSelector
      GENERIC MAP ( NrOfExtendedBits                   => 17,
                    NrOfInputBits                      => 11,
                    NrOfSelBits                        => 4)
      PORT MAP ( DataIn                             => s_LOGISIM_BUS_24(10 DOWNTO 0),
                 DataOut                            => s_LOGISIM_NET_16,
                 Sel                                => s_LOGISIM_BUS_29(3 DOWNTO 0));

   REGISTER_FILE_1 : REGISTER_FLIP_FLOP
      GENERIC MAP ( ActiveLevel                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Clock                              => s_LOGISIM_NET_23,
                 ClockEnable                        => s_LOGISIM_NET_26,
                 D                                  => s_LOGISIM_BUS_8(7 DOWNTO 0),
                 Q                                  => s_LOGISIM_BUS_8(15 DOWNTO 8),
                 Reset                              => s_LOGISIM_NET_21,
                 Tick                               => '1');


END PlatformIndependent;
