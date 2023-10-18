--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF logisimTopLevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
      COMPONENT main
         PORT ( clk                 : IN  std_logic;
                input_pins          : IN  std_logic_vector( 7 DOWNTO 0 );
                logisimInputBubbles : IN  std_logic_vector( 10 DOWNTO 0 );
                output_pins         : OUT std_logic_vector( 7 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_clk                 : std_logic;
   SIGNAL s_input_pins          : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_logisimInputBubbles : std_logic_vector( 10 DOWNTO 0 );
   SIGNAL s_output_pins         : std_logic_vector( 7 DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- All signal adaptations are performed here                                  --
   --------------------------------------------------------------------------------
   s_clk                     <= '0';
   s_input_pins(0)           <= '0';
   s_input_pins(1)           <= '0';
   s_input_pins(2)           <= '0';
   s_input_pins(3)           <= '0';
   s_input_pins(4)           <= '0';
   s_input_pins(5)           <= '0';
   s_input_pins(6)           <= '0';
   s_input_pins(7)           <= '0';
   s_logisimInputBubbles(0)  <= '0';
   s_logisimInputBubbles(1)  <= '0';
   s_logisimInputBubbles(10) <= '0';
   s_logisimInputBubbles(2)  <= '0';
   s_logisimInputBubbles(3)  <= '0';
   s_logisimInputBubbles(4)  <= '0';
   s_logisimInputBubbles(5)  <= '0';
   s_logisimInputBubbles(6)  <= '0';
   s_logisimInputBubbles(7)  <= '0';
   s_logisimInputBubbles(8)  <= '0';
   s_logisimInputBubbles(9)  <= '0';

   --------------------------------------------------------------------------------
   -- The toplevel component is connected here                                   --
   --------------------------------------------------------------------------------
   CIRCUIT_0 : main
      PORT MAP ( clk                 => s_clk,
                 input_pins          => s_input_pins,
                 logisimInputBubbles => s_logisimInputBubbles,
                 output_pins         => s_output_pins );
END platformIndependent;
