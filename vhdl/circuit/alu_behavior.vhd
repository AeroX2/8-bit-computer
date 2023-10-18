--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : alu                                                          ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF alu IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE_BUS
         GENERIC ( BubblesMask : std_logic_vector;
                   NrOfBits    : INTEGER );
         PORT ( input1 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input2 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                result : OUT std_logic_vector( (NrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Multiplexer_bus_4
         GENERIC ( nrOfBits : INTEGER );
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_1 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_2 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_3 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                sel     : IN  std_logic_vector( 1 DOWNTO 0 );
                muxOut  : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT AND_GATE_3_INPUTS
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                input3 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT XOR_GATE_BUS_ONEHOT
         GENERIC ( BubblesMask : std_logic_vector;
                   NrOfBits    : INTEGER );
         PORT ( input1 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                input2 : IN  std_logic_vector( (NrOfBits - 1) DOWNTO 0 );
                result : OUT std_logic_vector( (NrOfBits - 1) DOWNTO 0 ) );
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

      COMPONENT OR_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT Shifter_8_bit
         GENERIC ( shifterMode : INTEGER );
         PORT ( dataA       : IN  std_logic_vector( 7 DOWNTO 0 );
                shiftAmount : IN  std_logic_vector( 2 DOWNTO 0 );
                result      : OUT std_logic_vector( 7 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus1  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus10 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus11 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus16 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus18 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus21 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus22 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus24 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus26 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus29 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus31 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus34 : std_logic_vector( 8 DOWNTO 0 );
   SIGNAL s_logisimBus35 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus36 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus39 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus40 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus41 : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimBus7  : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet32 : std_logic;
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all wiring is defined                                                 --
   --------------------------------------------------------------------------------
   s_logisimBus1(0)  <= s_logisimNet17;
   s_logisimBus1(1)  <= s_logisimNet17;
   s_logisimBus1(2)  <= s_logisimNet17;
   s_logisimBus1(3)  <= s_logisimNet17;
   s_logisimBus1(4)  <= s_logisimNet17;
   s_logisimBus1(5)  <= s_logisimNet17;
   s_logisimBus1(6)  <= s_logisimNet17;
   s_logisimBus1(7)  <= s_logisimNet17;
   s_logisimBus31(0) <= s_logisimNet23;
   s_logisimBus31(1) <= s_logisimNet23;
   s_logisimBus31(2) <= s_logisimNet23;
   s_logisimBus31(3) <= s_logisimNet23;
   s_logisimBus31(4) <= s_logisimNet23;
   s_logisimBus31(5) <= s_logisimNet23;
   s_logisimBus31(6) <= s_logisimNet23;
   s_logisimBus31(7) <= s_logisimNet23;
   s_logisimBus39(0) <= s_logisimNet12;
   s_logisimBus39(1) <= s_logisimNet12;
   s_logisimBus39(2) <= s_logisimNet12;
   s_logisimBus39(3) <= s_logisimNet12;
   s_logisimBus39(4) <= s_logisimNet12;
   s_logisimBus39(5) <= s_logisimNet12;
   s_logisimBus39(6) <= s_logisimNet12;
   s_logisimBus39(7) <= s_logisimNet12;
   s_logisimBus40(0) <= s_logisimNet20;
   s_logisimBus40(1) <= s_logisimNet20;
   s_logisimBus40(2) <= s_logisimNet20;
   s_logisimBus40(3) <= s_logisimNet20;
   s_logisimBus40(4) <= s_logisimNet20;
   s_logisimBus40(5) <= s_logisimNet20;
   s_logisimBus40(6) <= s_logisimNet20;
   s_logisimBus40(7) <= s_logisimNet20;
   s_logisimBus41(0) <= s_logisimNet15;
   s_logisimBus41(1) <= s_logisimNet15;
   s_logisimBus41(2) <= s_logisimNet15;
   s_logisimBus41(3) <= s_logisimNet15;
   s_logisimBus41(4) <= s_logisimNet15;
   s_logisimBus41(5) <= s_logisimNet15;
   s_logisimBus41(6) <= s_logisimNet15;
   s_logisimBus41(7) <= s_logisimNet15;
   s_logisimNet12    <= s_logisimBus34(2);
   s_logisimNet15    <= s_logisimBus34(0);
   s_logisimNet17    <= s_logisimBus34(1);
   s_logisimNet20    <= s_logisimBus34(4);
   s_logisimNet23    <= s_logisimBus34(3);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus0(7 DOWNTO 0)  <= CINS;
   s_logisimBus24(7 DOWNTO 0) <= B;
   s_logisimBus35(7 DOWNTO 0) <= A;
   s_logisimNet27             <= CARRYIN;
   s_logisimNet32             <= OE;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   ALUOUT   <= s_logisimBus18(7 DOWNTO 0);
   CARRYOUT <= s_logisimNet14;
   CMPO     <= s_logisimNet38;
   OVEROUT  <= s_logisimNet25;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- ROM: alu_rom
   WITH (s_logisimBus0) SELECT s_logisimBus34 <=
      "0"&X"04" WHEN X"80",
      "0"&X"04" WHEN X"81",
      "0"&X"04" WHEN X"82",
      "0"&X"01" WHEN X"83",
      "0"&X"01" WHEN X"84",
      "0"&X"01" WHEN X"85",
      "0"&X"01" WHEN X"86",
      "0"&X"01" WHEN X"87",
      "0"&X"01" WHEN X"88",
      "0"&X"04" WHEN X"10",
      "0"&X"04" WHEN X"90",
      "0"&X"04" WHEN X"11",
      "0"&X"01" WHEN X"91",
      "0"&X"01" WHEN X"12",
      "0"&X"01" WHEN X"92",
      "0"&X"01" WHEN X"13",
      "0"&X"04" WHEN X"93",
      "0"&X"01" WHEN X"14",
      "0"&X"01" WHEN X"94",
      "0"&X"01" WHEN X"15",
      "0"&X"01" WHEN X"95",
      "0"&X"05" WHEN X"16",
      "0"&X"04" WHEN X"96",
      "0"&X"05" WHEN X"17",
      "0"&X"01" WHEN X"97",
      "0"&X"05" WHEN X"18",
      "0"&X"01" WHEN X"98",
      "0"&X"05" WHEN X"19",
      "0"&X"04" WHEN X"99",
      "0"&X"05" WHEN X"1A",
      "0"&X"01" WHEN X"9A",
      "0"&X"05" WHEN X"1B",
      "0"&X"01" WHEN X"9B",
      "0"&X"05" WHEN X"1C",
      "0"&X"04" WHEN X"9C",
      "0"&X"05" WHEN X"1D",
      "0"&X"01" WHEN X"9D",
      "0"&X"05" WHEN X"1E",
      "0"&X"01" WHEN X"9E",
      "0"&X"05" WHEN X"1F",
      "1"&X"04" WHEN X"20",
      "0"&X"05" WHEN X"A0",
      "1"&X"12" WHEN X"21",
      "0"&X"05" WHEN X"A1",
      "1"&X"12" WHEN X"22",
      "0"&X"05" WHEN X"A2",
      "1"&X"01" WHEN X"23",
      "0"&X"05" WHEN X"A3",
      "1"&X"18" WHEN X"24",
      "0"&X"05" WHEN X"A4",
      "1"&X"00" WHEN X"25",
      "0"&X"05" WHEN X"A5",
      "1"&X"01" WHEN X"26",
      "1"&X"18" WHEN X"27",
      "1"&X"00" WHEN X"28",
      "0"&X"04" WHEN X"B0",
      "0"&X"01" WHEN X"B1",
      "0"&X"01" WHEN X"B2",
      "0"&X"04" WHEN X"C0",
      "0"&X"01" WHEN X"C1",
      "0"&X"01" WHEN X"C2",
      "1"&X"05" WHEN X"50",
      "1"&X"1F" WHEN X"51",
      "1"&X"07" WHEN X"52",
      "1"&X"04" WHEN X"53",
      "1"&X"01" WHEN X"54",
      "1"&X"14" WHEN X"55",
      "1"&X"11" WHEN X"56",
      "1"&X"1C" WHEN X"57",
      "1"&X"13" WHEN X"58",
      "1"&X"1E" WHEN X"59",
      "1"&X"1B" WHEN X"5A",
      "1"&X"0C" WHEN X"5B",
      "1"&X"03" WHEN X"5C",
      "1"&X"00" WHEN X"5D",
      "1"&X"12" WHEN X"5E",
      "1"&X"18" WHEN X"5F",
      "1"&X"40" WHEN X"60",
      "1"&X"5A" WHEN X"61",
      "1"&X"20" WHEN X"62",
      "1"&X"80" WHEN X"63",
      "1"&X"05" WHEN X"64",
      "1"&X"05" WHEN X"65",
      "1"&X"05" WHEN X"66",
      "1"&X"05" WHEN X"67",
      "1"&X"05" WHEN X"68",
      "1"&X"05" WHEN X"69",
      "1"&X"05" WHEN X"6A",
      "1"&X"05" WHEN X"6B",
      "1"&X"05" WHEN X"6C",
      "1"&X"05" WHEN X"6D",
      "1"&X"05" WHEN X"6E",
      "1"&X"05" WHEN X"6F",
      "0"&X"00" WHEN OTHERS;

   -- Bit Extender
    s_logisimBus22(0)  <=  s_logisimNet32;
    s_logisimBus22(1)  <=  s_logisimNet32;
    s_logisimBus22(2)  <=  s_logisimNet32;
    s_logisimBus22(3)  <=  s_logisimNet32;
    s_logisimBus22(4)  <=  s_logisimNet32;
    s_logisimBus22(5)  <=  s_logisimNet32;
    s_logisimBus22(6)  <=  s_logisimNet32;
    s_logisimBus22(7)  <=  s_logisimNet32;


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "10",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus41(7 DOWNTO 0),
                 input2 => s_logisimBus35(7 DOWNTO 0),
                 result => s_logisimBus5(7 DOWNTO 0) );

   PLEXERS_2 : Multiplexer_bus_4
      GENERIC MAP ( nrOfBits => 8 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus16(7 DOWNTO 0),
                 muxIn_1 => s_logisimBus21(7 DOWNTO 0),
                 muxIn_2 => s_logisimBus29(7 DOWNTO 0),
                 muxIn_3 => s_logisimBus7(7 DOWNTO 0),
                 muxOut  => s_logisimBus6(7 DOWNTO 0),
                 sel     => s_logisimBus34(7 DOWNTO 6) );

   GATES_3 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet27,
                 input2 => s_logisimBus34(5),
                 result => s_logisimNet2 );

   GATES_4 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimBus34(8),
                 input2 => s_logisimNet32,
                 result => s_logisimNet38 );

   GATES_5 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "01",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus24(7 DOWNTO 0),
                 input2 => s_logisimBus39(7 DOWNTO 0),
                 result => s_logisimBus36(7 DOWNTO 0) );

   GATES_6 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "010" )
      PORT MAP ( input1 => s_logisimBus10(7),
                 input2 => s_logisimBus26(7),
                 input3 => s_logisimBus11(7),
                 result => s_logisimNet30 );

   GATES_7 : XOR_GATE_BUS_ONEHOT
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus40(7 DOWNTO 0),
                 input2 => s_logisimBus6(7 DOWNTO 0),
                 result => s_logisimBus26(7 DOWNTO 0) );

   ARITH_8 : Adder
      GENERIC MAP ( extendedBits => 9,
                    nrOfBits     => 8 )
      PORT MAP ( carryIn  => s_logisimNet2,
                 carryOut => s_logisimNet14,
                 dataA    => s_logisimBus10(7 DOWNTO 0),
                 dataB    => s_logisimBus11(7 DOWNTO 0),
                 result   => s_logisimBus16(7 DOWNTO 0) );

   GATES_9 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus26(7 DOWNTO 0),
                 input2 => s_logisimBus22(7 DOWNTO 0),
                 result => s_logisimBus18(7 DOWNTO 0) );

   GATES_10 : AND_GATE_BUS
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus10(7 DOWNTO 0),
                 input2 => s_logisimBus11(7 DOWNTO 0),
                 result => s_logisimBus21(7 DOWNTO 0) );

   GATES_11 : AND_GATE_3_INPUTS
      GENERIC MAP ( BubblesMask => "101" )
      PORT MAP ( input1 => s_logisimBus10(7),
                 input2 => s_logisimBus26(7),
                 input3 => s_logisimBus11(7),
                 result => s_logisimNet19 );

   GATES_12 : XOR_GATE_BUS_ONEHOT
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus36(7 DOWNTO 0),
                 input2 => s_logisimBus31(7 DOWNTO 0),
                 result => s_logisimBus10(7 DOWNTO 0) );

   GATES_13 : OR_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet30,
                 input2 => s_logisimNet19,
                 result => s_logisimNet25 );

   GATES_14 : XOR_GATE_BUS_ONEHOT
      GENERIC MAP ( BubblesMask => "00",
                    NrOfBits    => 8 )
      PORT MAP ( input1 => s_logisimBus1(7 DOWNTO 0),
                 input2 => s_logisimBus5(7 DOWNTO 0),
                 result => s_logisimBus11(7 DOWNTO 0) );

   ARITH_15 : Shifter_8_bit
      GENERIC MAP ( shifterMode => 0 )
      PORT MAP ( dataA       => s_logisimBus11(7 DOWNTO 0),
                 result      => s_logisimBus7(7 DOWNTO 0),
                 shiftAmount => s_logisimBus10(2 DOWNTO 0) );

   ARITH_16 : Shifter_8_bit
      GENERIC MAP ( shifterMode => 2 )
      PORT MAP ( dataA       => s_logisimBus11(7 DOWNTO 0),
                 result      => s_logisimBus29(7 DOWNTO 0),
                 shiftAmount => s_logisimBus10(2 DOWNTO 0) );


END platformIndependent;
