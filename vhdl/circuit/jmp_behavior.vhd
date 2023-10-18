--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : jmp                                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF jmp IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT Multiplexer_bus_2
         GENERIC ( nrOfBits : INTEGER );
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_1 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                sel     : IN  std_logic;
                muxOut  : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT XOR_GATE_ONEHOT
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT Adder
         GENERIC ( extendedBits : INTEGER;
                   nrOfBits     : INTEGER );
         PORT ( carryIn  : IN  std_logic;
                dataA    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                dataB    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                carryOut : OUT std_logic;
                result   : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT BitSelector
         GENERIC ( nrOfExtendedBits : INTEGER;
                   nrOfInputBits    : INTEGER;
                   nrOfselBits      : INTEGER );
         PORT ( dataIn  : IN  std_logic_vector( (nrOfInputBits - 1) DOWNTO 0 );
                sel     : IN  std_logic_vector( (nrOfselBits - 1) DOWNTO 0 );
                dataOut : OUT std_logic );
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

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus18 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus24 : std_logic_vector( 10 DOWNTO 0 );
   SIGNAL s_logisimBus25 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus29 : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimBus30 : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus24(1)           <= ZIN;
   s_logisimBus24(3)           <= CIN;
   s_logisimBus25(7 DOWNTO 0)  <= JMPINS;
   s_logisimBus30(15 DOWNTO 0) <= PCIN;
   s_logisimBus8(7 DOWNTO 0)   <= DATABUS;
   s_logisimNet14              <= OIN;
   s_logisimNet17              <= SIN;
   s_logisimNet21              <= RESET;
   s_logisimNet23              <= CLK;
   s_logisimNet28              <= OE;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   PCOE  <= s_logisimNet13;
   PCOUT <= s_logisimBus18(15 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- NOT Gate
   s_logisimBus24(9) <=  NOT s_logisimBus24(7);

   -- ROM: jmp_rom
   WITH (s_logisimBus25) SELECT s_logisimBus29 <=
      "1"&X"1" WHEN X"41",
      "1"&X"2" WHEN X"42",
      "1"&X"3" WHEN X"43",
      "1"&X"4" WHEN X"44",
      "1"&X"5" WHEN X"45",
      "1"&X"6" WHEN X"46",
      "1"&X"7" WHEN X"47",
      "1"&X"8" WHEN X"48",
      "1"&X"9" WHEN X"49",
      "1"&X"A" WHEN X"4A",
      "0"&X"1" WHEN X"31",
      "0"&X"2" WHEN X"32",
      "0"&X"3" WHEN X"33",
      "0"&X"4" WHEN X"34",
      "0"&X"5" WHEN X"35",
      "0"&X"6" WHEN X"36",
      "0"&X"7" WHEN X"37",
      "0"&X"8" WHEN X"38",
      "0"&X"9" WHEN X"39",
      "0"&X"A" WHEN X"3A",
      "0"&X"0" WHEN OTHERS;

   -- NOT Gate
   s_logisimBus24(6) <=  NOT s_logisimBus24(3);

   -- NOT Gate
   s_logisimBus24(5) <=  NOT s_logisimBus24(4);

   -- NOT Gate
   s_logisimBus24(2) <=  NOT s_logisimBus24(1);

   -- Power
    s_logisimBus24(0)  <=  '1';


   -- Power
    s_logisimNet26  <=  '1';


   -- Ground
    s_logisimNet20  <=  '0';


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus24(1),
                 input2 => s_logisimBus24(3),
                 result => s_logisimBus24(4) );

   GATES_2 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet28,
                 input2 => s_logisimNet16,
                 result => s_logisimNet13 );

   PLEXERS_3 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 16 )
      PORT MAP ( enable  => s_logisimNet13,
                 muxIn_0 => s_logisimBus8(15 DOWNTO 0),
                 muxIn_1 => s_logisimBus5(15 DOWNTO 0),
                 muxOut  => s_logisimBus18(15 DOWNTO 0),
                 sel     => s_logisimBus29(4) );

   GATES_4 : XOR_GATE_ONEHOT
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet14,
                 input2 => s_logisimNet17,
                 result => s_logisimBus24(7) );

   GATES_5 : AND_GATE
      GENERIC MAP ( BubblesMask => "01" )
      PORT MAP ( input1 => s_logisimBus24(9),
                 input2 => s_logisimBus24(1),
                 result => s_logisimBus24(10) );

   GATES_6 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus24(1),
                 input2 => s_logisimBus24(7),
                 result => s_logisimBus24(8) );

   ARITH_7 : Adder
      GENERIC MAP ( extendedBits => 17,
                    nrOfBits     => 16 )
      PORT MAP ( carryIn  => s_logisimNet20,
                 carryOut => OPEN,
                 dataA    => s_logisimBus30(15 DOWNTO 0),
                 dataB    => s_logisimBus8(15 DOWNTO 0),
                 result   => s_logisimBus5(15 DOWNTO 0) );

   PLEXERS_8 : BitSelector
      GENERIC MAP ( nrOfExtendedBits => 17,
                    nrOfInputBits    => 11,
                    nrOfselBits      => 4 )
      PORT MAP ( dataIn  => s_logisimBus24(10 DOWNTO 0),
                 dataOut => s_logisimNet16,
                 sel     => s_logisimBus29(3 DOWNTO 0) );

   HIGHBITS : REGISTER_FLIP_FLOP
      GENERIC MAP ( invertClock => 0,
                    nrOfBits    => 8 )
      PORT MAP ( clock       => s_logisimNet23,
                 clockEnable => s_logisimNet26,
                 d           => s_logisimBus8(7 DOWNTO 0),
                 q           => s_logisimBus8(15 DOWNTO 8),
                 reset       => s_logisimNet21,
                 tick        => '1' );


END platformIndependent;
