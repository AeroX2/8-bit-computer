--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : LogisimToplevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF LogisimToplevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT computer
      PORT ( LOGISIM_INPUT_BUBBLES     : IN  std_logic_vector( 0 DOWNTO 0 );
             clk                       : IN  std_logic;
             computer_output           : OUT std_logic_vector( 7 DOWNTO 0 ));
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_INPUT_BUBBLES            : std_logic_vector( 0 DOWNTO 0 );
   SIGNAL s_clk                              : std_logic;
   SIGNAL s_computer_output                  : std_logic_vector( 7 DOWNTO 0 );

BEGIN
   -----------------------------------------------------------------------------
   -- Here all signal adaptations are performed                               --
   -----------------------------------------------------------------------------
   s_clk <= NOT FPGA_INPUT_PIN_0;
   FPGA_OUTPUT_PIN_0 <= NOT s_computer_output(0);
   FPGA_OUTPUT_PIN_1 <= NOT s_computer_output(1);
   FPGA_OUTPUT_PIN_2 <= NOT s_computer_output(2);
   FPGA_OUTPUT_PIN_3 <= NOT s_computer_output(3);
   FPGA_OUTPUT_PIN_4 <= NOT s_computer_output(4);
   FPGA_OUTPUT_PIN_5 <= NOT s_computer_output(5);
   FPGA_OUTPUT_PIN_6 <= NOT s_computer_output(6);
   FPGA_OUTPUT_PIN_7 <= NOT s_computer_output(7);
   -----------------------------------------------------------------------------
   -- Here all inlined adaptations are performed                              --
   -----------------------------------------------------------------------------
   s_LOGISIM_INPUT_BUBBLES(0) <= NOT FPGA_INPUT_PIN_1;

   -----------------------------------------------------------------------------
   -- Here the toplevel component is connected                                --
   -----------------------------------------------------------------------------
   computer_0 : computer
      PORT MAP ( LOGISIM_INPUT_BUBBLES              => s_LOGISIM_INPUT_BUBBLES,
                 clk                                => s_clk,
                 computer_output                    => s_computer_output);

END PlatformIndependent;
