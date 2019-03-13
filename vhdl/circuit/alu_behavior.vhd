--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : alu                                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF alu IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT ROM_alu_rom
      PORT ( Address                   : IN  std_logic_vector( 7 DOWNTO 0 );
             Data                      : OUT std_logic_vector( 8 DOWNTO 0 ));
   END COMPONENT;

   COMPONENT AND_GATE_BUS
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT Multiplexer_bus_4
      GENERIC ( NrOfBits                  : INTEGER);
      PORT ( Enable                    : IN  std_logic;
             MuxIn_0                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             MuxIn_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             MuxIn_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             MuxIn_3                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Sel                       : IN  std_logic_vector( 1 DOWNTO 0 );
             MuxOut                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
   END COMPONENT;

   COMPONENT AND_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT AND_GATE_3_INPUTS
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Input_3                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT XOR_GATE_BUS_ONEHOT
      GENERIC ( BubblesMask               : INTEGER;
                NrOfBits                  : INTEGER);
      PORT ( Input_1                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Input_2                   : IN  std_logic_vector( (NrOfBits-1) DOWNTO 0 );
             Result                    : OUT std_logic_vector( (NrOfBits-1) DOWNTO 0 ));
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

   COMPONENT OR_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT Shifter_8_bit
      GENERIC ( ShifterMode               : INTEGER);
      PORT ( DataA                     : IN  std_logic_vector( 7 DOWNTO 0 );
             ShiftAmount               : IN  std_logic_vector( 2 DOWNTO 0 );
             Result                    : OUT std_logic_vector( 7 DOWNTO 0 ));
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_0                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_1                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_10                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_11                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_16                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_18                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_21                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_22                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_24                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_26                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_29                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_31                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_34                   : std_logic_vector( 8 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_35                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_36                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_39                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_40                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_41                   : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_6                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_7                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_12                   : std_logic;
   SIGNAL s_LOGISIM_NET_14                   : std_logic;
   SIGNAL s_LOGISIM_NET_15                   : std_logic;
   SIGNAL s_LOGISIM_NET_17                   : std_logic;
   SIGNAL s_LOGISIM_NET_19                   : std_logic;
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_20                   : std_logic;
   SIGNAL s_LOGISIM_NET_23                   : std_logic;
   SIGNAL s_LOGISIM_NET_25                   : std_logic;
   SIGNAL s_LOGISIM_NET_27                   : std_logic;
   SIGNAL s_LOGISIM_NET_30                   : std_logic;
   SIGNAL s_LOGISIM_NET_32                   : std_logic;
   SIGNAL s_LOGISIM_NET_38                   : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all wiring is defined                                              --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_12                   <= s_LOGISIM_BUS_34(2);
   s_LOGISIM_BUS_39(0)                <= s_LOGISIM_NET_12;
   s_LOGISIM_BUS_39(1)                <= s_LOGISIM_NET_12;
   s_LOGISIM_BUS_39(2)                <= s_LOGISIM_NET_12;
   s_LOGISIM_BUS_39(3)                <= s_LOGISIM_NET_12;
   s_LOGISIM_BUS_39(4)                <= s_LOGISIM_NET_12;
   s_LOGISIM_BUS_39(5)                <= s_LOGISIM_NET_12;
   s_LOGISIM_BUS_39(6)                <= s_LOGISIM_NET_12;
   s_LOGISIM_BUS_39(7)                <= s_LOGISIM_NET_12;
   s_LOGISIM_NET_15                   <= s_LOGISIM_BUS_34(0);
   s_LOGISIM_BUS_41(0)                <= s_LOGISIM_NET_15;
   s_LOGISIM_BUS_41(1)                <= s_LOGISIM_NET_15;
   s_LOGISIM_BUS_41(2)                <= s_LOGISIM_NET_15;
   s_LOGISIM_BUS_41(3)                <= s_LOGISIM_NET_15;
   s_LOGISIM_BUS_41(4)                <= s_LOGISIM_NET_15;
   s_LOGISIM_BUS_41(5)                <= s_LOGISIM_NET_15;
   s_LOGISIM_BUS_41(6)                <= s_LOGISIM_NET_15;
   s_LOGISIM_BUS_41(7)                <= s_LOGISIM_NET_15;
   s_LOGISIM_NET_17                   <= s_LOGISIM_BUS_34(1);
   s_LOGISIM_BUS_1(0)                 <= s_LOGISIM_NET_17;
   s_LOGISIM_BUS_1(1)                 <= s_LOGISIM_NET_17;
   s_LOGISIM_BUS_1(2)                 <= s_LOGISIM_NET_17;
   s_LOGISIM_BUS_1(3)                 <= s_LOGISIM_NET_17;
   s_LOGISIM_BUS_1(4)                 <= s_LOGISIM_NET_17;
   s_LOGISIM_BUS_1(5)                 <= s_LOGISIM_NET_17;
   s_LOGISIM_BUS_1(6)                 <= s_LOGISIM_NET_17;
   s_LOGISIM_BUS_1(7)                 <= s_LOGISIM_NET_17;
   s_LOGISIM_NET_20                   <= s_LOGISIM_BUS_34(4);
   s_LOGISIM_BUS_40(0)                <= s_LOGISIM_NET_20;
   s_LOGISIM_BUS_40(1)                <= s_LOGISIM_NET_20;
   s_LOGISIM_BUS_40(2)                <= s_LOGISIM_NET_20;
   s_LOGISIM_BUS_40(3)                <= s_LOGISIM_NET_20;
   s_LOGISIM_BUS_40(4)                <= s_LOGISIM_NET_20;
   s_LOGISIM_BUS_40(5)                <= s_LOGISIM_NET_20;
   s_LOGISIM_BUS_40(6)                <= s_LOGISIM_NET_20;
   s_LOGISIM_BUS_40(7)                <= s_LOGISIM_NET_20;
   s_LOGISIM_NET_23                   <= s_LOGISIM_BUS_34(3);
   s_LOGISIM_BUS_31(0)                <= s_LOGISIM_NET_23;
   s_LOGISIM_BUS_31(1)                <= s_LOGISIM_NET_23;
   s_LOGISIM_BUS_31(2)                <= s_LOGISIM_NET_23;
   s_LOGISIM_BUS_31(3)                <= s_LOGISIM_NET_23;
   s_LOGISIM_BUS_31(4)                <= s_LOGISIM_NET_23;
   s_LOGISIM_BUS_31(5)                <= s_LOGISIM_NET_23;
   s_LOGISIM_BUS_31(6)                <= s_LOGISIM_NET_23;
   s_LOGISIM_BUS_31(7)                <= s_LOGISIM_NET_23;

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_24(7 DOWNTO 0)       <= B;
   s_LOGISIM_BUS_0(7 DOWNTO 0)        <= CINS;
   s_LOGISIM_NET_27                   <= CARRYIN;
   s_LOGISIM_BUS_35(7 DOWNTO 0)       <= A;
   s_LOGISIM_NET_32                   <= OE;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   CMPO                               <= s_LOGISIM_NET_38;
   ALUOUT                             <= s_LOGISIM_BUS_18(7 DOWNTO 0);
   OVEROUT                            <= s_LOGISIM_NET_25;
   CARRYOUT                           <= s_LOGISIM_NET_14;

   -----------------------------------------------------------------------------
   -- Here all in-lined components are defined                                --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_22(0) <= s_LOGISIM_NET_32;
   s_LOGISIM_BUS_22(1) <= s_LOGISIM_NET_32;
   s_LOGISIM_BUS_22(2) <= s_LOGISIM_NET_32;
   s_LOGISIM_BUS_22(3) <= s_LOGISIM_NET_32;
   s_LOGISIM_BUS_22(4) <= s_LOGISIM_NET_32;
   s_LOGISIM_BUS_22(5) <= s_LOGISIM_NET_32;
   s_LOGISIM_BUS_22(6) <= s_LOGISIM_NET_32;
   s_LOGISIM_BUS_22(7) <= s_LOGISIM_NET_32;


   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   ROM_1 : ROM_alu_rom
      PORT MAP ( Address                            => s_LOGISIM_BUS_0(7 DOWNTO 0),
                 Data                               => s_LOGISIM_BUS_34(8 DOWNTO 0));

   GATE_1 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 1,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_41(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_35(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_5(7 DOWNTO 0));

   MUX_1 : Multiplexer_bus_4
      GENERIC MAP ( NrOfBits                           => 8)
      PORT MAP ( Enable                             => '1',
                 MuxIn_0                            => s_LOGISIM_BUS_16(7 DOWNTO 0),
                 MuxIn_1                            => s_LOGISIM_BUS_21(7 DOWNTO 0),
                 MuxIn_2                            => s_LOGISIM_BUS_29(7 DOWNTO 0),
                 MuxIn_3                            => s_LOGISIM_BUS_7(7 DOWNTO 0),
                 MuxOut                             => s_LOGISIM_BUS_6(7 DOWNTO 0),
                 Sel                                => s_LOGISIM_BUS_34(7 DOWNTO 6));

   GATE_2 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_27,
                 Input_2                            => s_LOGISIM_BUS_34(5),
                 Result                             => s_LOGISIM_NET_2);

   GATE_3 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_34(8),
                 Input_2                            => s_LOGISIM_NET_32,
                 Result                             => s_LOGISIM_NET_38);

   GATE_4 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 2,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_24(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_39(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_36(7 DOWNTO 0));

   GATE_5 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask                        => 2)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_10(7),
                 Input_2                            => s_LOGISIM_BUS_26(7),
                 Input_3                            => s_LOGISIM_BUS_11(7),
                 Result                             => s_LOGISIM_NET_30);

   GATE_6 : XOR_GATE_BUS_ONEHOT
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_40(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_6(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_26(7 DOWNTO 0));

   ADDER2C_1 : Adder
      GENERIC MAP ( ExtendedBits                       => 9,
                    NrOfBits                           => 8)
      PORT MAP ( CarryIn                            => s_LOGISIM_NET_2,
                 CarryOut                           => s_LOGISIM_NET_14,
                 DataA                              => s_LOGISIM_BUS_10(7 DOWNTO 0),
                 DataB                              => s_LOGISIM_BUS_11(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_16(7 DOWNTO 0));

   GATE_7 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_26(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_22(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_18(7 DOWNTO 0));

   GATE_8 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_10(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_11(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_21(7 DOWNTO 0));

   GATE_9 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask                        => 5)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_10(7),
                 Input_2                            => s_LOGISIM_BUS_26(7),
                 Input_3                            => s_LOGISIM_BUS_11(7),
                 Result                             => s_LOGISIM_NET_19);

   GATE_10 : XOR_GATE_BUS_ONEHOT
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_36(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_31(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_10(7 DOWNTO 0));

   GATE_11 : OR_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_30,
                 Input_2                            => s_LOGISIM_NET_19,
                 Result                             => s_LOGISIM_NET_25);

   GATE_12 : XOR_GATE_BUS_ONEHOT
      GENERIC MAP ( BubblesMask                        => 0,
                    NrOfBits                           => 8)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_1(7 DOWNTO 0),
                 Input_2                            => s_LOGISIM_BUS_5(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_11(7 DOWNTO 0));

   Shifter_1 : Shifter_8_bit
      GENERIC MAP ( ShifterMode                        => 0)
      PORT MAP ( DataA                              => s_LOGISIM_BUS_11(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_7(7 DOWNTO 0),
                 ShiftAmount                        => s_LOGISIM_BUS_10(2 DOWNTO 0));

   Shifter_2 : Shifter_8_bit
      GENERIC MAP ( ShifterMode                        => 2)
      PORT MAP ( DataA                              => s_LOGISIM_BUS_11(7 DOWNTO 0),
                 Result                             => s_LOGISIM_BUS_29(7 DOWNTO 0),
                 ShiftAmount                        => s_LOGISIM_BUS_10(2 DOWNTO 0));


END PlatformIndependent;
