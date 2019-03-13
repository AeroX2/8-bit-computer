--==============================================================================
--== Logisim goes FPGA automatic generated VHDL code                          ==
--==                                                                          ==
--==                                                                          ==
--== Project   : computer_fpga                                                ==
--== Component : computer                                                     ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE PlatformIndependent OF computer IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT main
      PORT ( LOGISIM_INPUT_BUBBLES     : IN  std_logic_vector( 0 DOWNTO 0 );
             clk                       : IN  std_logic;
             input_pins                : IN  std_logic_vector( 7 DOWNTO 0 );
             output_pins               : OUT std_logic_vector( 7 DOWNTO 0 ));
   END COMPONENT;


   -----------------------------------------------------------------------------
   -- Here all used signals are defined                                       --
   -----------------------------------------------------------------------------
   SIGNAL s_LOGISIM_BUS_1                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_BUS_2                    : std_logic_vector( 7 DOWNTO 0 );
   SIGNAL s_LOGISIM_NET_0                    : std_logic;

BEGIN

   -----------------------------------------------------------------------------
   -- Here all input connections are defined                                  --
   -----------------------------------------------------------------------------
   s_LOGISIM_NET_0                    <= clk;

   -----------------------------------------------------------------------------
   -- Here all output connections are defined                                 --
   -----------------------------------------------------------------------------
   computer_output                    <= s_LOGISIM_BUS_2(7 DOWNTO 0);

   -----------------------------------------------------------------------------
   -- Here all in-lined components are defined                                --
   -----------------------------------------------------------------------------
   s_LOGISIM_BUS_1(7 DOWNTO 0) <= std_logic_vector(to_unsigned(0,8));


   -----------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                       --
   -----------------------------------------------------------------------------
   computer_main : main
      PORT MAP ( LOGISIM_INPUT_BUBBLES              => LOGISIM_INPUT_BUBBLES( 0 DOWNTO 0 ),
                 clk                                => s_LOGISIM_NET_0,
                 input_pins                         => s_LOGISIM_BUS_1(7 DOWNTO 0),
                 output_pins                        => s_LOGISIM_BUS_2(7 DOWNTO 0));


END PlatformIndependent;
