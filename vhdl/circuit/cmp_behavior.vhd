--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : cmp                                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF cmp IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT AND_GATE_8_INPUTS
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Input_3                   : IN  std_logic;
             Input_4                   : IN  std_logic;
             Input_5                   : IN  std_logic;
             Input_6                   : IN  std_logic;
             Input_7                   : IN  std_logic;
             Input_8                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT AND_GATE
      GENERIC ( BubblesMask               : INTEGER);
      PORT ( Input_1                   : IN  std_logic;
             Input_2                   : IN  std_logic;
             Result                    : OUT std_logic);
   END COMPONENT;

   COMPONENT S_R_FLIPFLOP
      GENERIC ( ActiveLevel               : INTEGER);
      PORT ( Clock                     : IN  std_logic;
             Preset                    : IN  std_logic;
             R                         : IN  std_logic;
             Reset                     : IN  std_logic;
             S                         : IN  std_logic;
             Tick                      : IN  std_logic;
             Q                         : OUT std_logic;
             Q_bar                     : OUT std_logic);
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_5                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_0                    : std_logic;
   SIGNAL s_LOGISIM_NET_1                    : std_logic;
   SIGNAL s_LOGISIM_NET_11                   : std_logic;
   SIGNAL s_LOGISIM_NET_12                   : std_logic;
   SIGNAL s_LOGISIM_NET_13                   : std_logic;
   SIGNAL s_LOGISIM_NET_14                   : std_logic;
   SIGNAL s_LOGISIM_NET_17                   : std_logic;
   SIGNAL s_LOGISIM_NET_19                   : std_logic;
   SIGNAL s_LOGISIM_NET_2                    : std_logic;
   SIGNAL s_LOGISIM_NET_20                   : std_logic;
   SIGNAL s_LOGISIM_NET_21                   : std_logic;
   SIGNAL s_LOGISIM_NET_24                   : std_logic;
   SIGNAL s_LOGISIM_NET_25                   : std_logic;
   SIGNAL s_LOGISIM_NET_26                   : std_logic;
   SIGNAL s_LOGISIM_NET_27                   : std_logic;
   SIGNAL s_LOGISIM_NET_28                   : std_logic;
   SIGNAL s_LOGISIM_NET_29                   : std_logic;
   SIGNAL s_LOGISIM_NET_3                    : std_logic;
   SIGNAL s_LOGISIM_NET_30                   : std_logic;
   SIGNAL s_LOGISIM_NET_31                   : std_logic;
   SIGNAL s_LOGISIM_NET_4                    : std_logic;
   SIGNAL s_LOGISIM_NET_6                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_0                    <= RESET;
   s_LOGISIM_NET_2                    <= CLK;
   s_LOGISIM_BUS_5(7 DOWNTO 0)        <= CMPIN;
   s_LOGISIM_NET_17                   <= OE;
   s_LOGISIM_NET_3                    <= OVERFLOW;
   s_LOGISIM_NET_11                   <= CARRY;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   ZFLAGO                             <= s_LOGISIM_NET_26;
   OFLAGO                             <= s_LOGISIM_NET_21;
   CFLAGO                             <= s_LOGISIM_NET_27;
   SFLAGO                             <= s_LOGISIM_NET_12;

   -----------------------------------------------------------------------------
   -- Here all in-lined components are defined                                --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_28 <= '0';

   s_LOGISIM_NET_29 <= '0';

   s_LOGISIM_NET_30 <= '0';

   s_LOGISIM_NET_31 <= '0';


   -----------------------------------------------------------------------------
   -- Here all normal components are defined                                  --
   -----------------------------------------------------------------------------
   GATE_1 : AND_GATE_8_INPUTS
      GENERIC MAP ( BubblesMask                        => 255)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_5(0),
                 Input_2                            => s_LOGISIM_BUS_5(1),
                 Input_3                            => s_LOGISIM_BUS_5(2),
                 Input_4                            => s_LOGISIM_BUS_5(3),
                 Input_5                            => s_LOGISIM_BUS_5(4),
                 Input_6                            => s_LOGISIM_BUS_5(5),
                 Input_7                            => s_LOGISIM_BUS_5(6),
                 Input_8                            => s_LOGISIM_BUS_5(7),
                 Result                             => s_LOGISIM_NET_14);

   GATE_2 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_14,
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_NET_13);

   GATE_3 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 1)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_14,
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_NET_1);

   FF_LATCH_1 : S_R_FLIPFLOP
      GENERIC MAP ( ActiveLevel                        => 1)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 Preset                             => s_LOGISIM_NET_28,
                 Q                                  => s_LOGISIM_NET_26,
                 Q_bar                              => OPEN,
                 R                                  => s_LOGISIM_NET_1,
                 Reset                              => s_LOGISIM_NET_0,
                 S                                  => s_LOGISIM_NET_13,
                 Tick                               => '1');

   FF_LATCH_2 : S_R_FLIPFLOP
      GENERIC MAP ( ActiveLevel                        => 1)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 Preset                             => s_LOGISIM_NET_29,
                 Q                                  => s_LOGISIM_NET_21,
                 Q_bar                              => OPEN,
                 R                                  => s_LOGISIM_NET_20,
                 Reset                              => s_LOGISIM_NET_0,
                 S                                  => s_LOGISIM_NET_25,
                 Tick                               => '1');

   GATE_4 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 1)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_3,
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_NET_20);

   GATE_5 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_3,
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_NET_25);

   GATE_6 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 1)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_11,
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_NET_4);

   GATE_7 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_NET_11,
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_NET_6);

   FF_LATCH_3 : S_R_FLIPFLOP
      GENERIC MAP ( ActiveLevel                        => 1)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 Preset                             => s_LOGISIM_NET_30,
                 Q                                  => s_LOGISIM_NET_27,
                 Q_bar                              => OPEN,
                 R                                  => s_LOGISIM_NET_4,
                 Reset                              => s_LOGISIM_NET_0,
                 S                                  => s_LOGISIM_NET_6,
                 Tick                               => '1');

   GATE_8 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 1)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_5(7),
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_NET_19);

   GATE_9 : AND_GATE
      GENERIC MAP ( BubblesMask                        => 0)
      PORT MAP ( Input_1                            => s_LOGISIM_BUS_5(7),
                 Input_2                            => s_LOGISIM_NET_17,
                 Result                             => s_LOGISIM_NET_24);

   FF_LATCH_4 : S_R_FLIPFLOP
      GENERIC MAP ( ActiveLevel                        => 1)
      PORT MAP ( Clock                              => s_LOGISIM_NET_2,
                 Preset                             => s_LOGISIM_NET_31,
                 Q                                  => s_LOGISIM_NET_12,
                 Q_bar                              => OPEN,
                 R                                  => s_LOGISIM_NET_19,
                 Reset                              => s_LOGISIM_NET_0,
                 S                                  => s_LOGISIM_NET_24,
                 Tick                               => '1');


END PlatformIndependent;
