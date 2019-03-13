library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench_behaviour of testbench is

	component LogisimToplevelShell IS
	   PORT ( FPGA_INPUT_PIN_0  : IN  std_logic;
	          FPGA_INPUT_PIN_1  : IN  std_logic;
			  FPGA_OUTPUT_PIN_0 : OUT std_logic;
			  FPGA_OUTPUT_PIN_1 : OUT std_logic;
			  FPGA_OUTPUT_PIN_2 : OUT std_logic;
			  FPGA_OUTPUT_PIN_3 : OUT std_logic;
			  FPGA_OUTPUT_PIN_4 : OUT std_logic;
			  FPGA_OUTPUT_PIN_5 : OUT std_logic;
			  FPGA_OUTPUT_PIN_6 : OUT std_logic;
			  FPGA_OUTPUT_PIN_7 : OUT std_logic);
	end component LogisimToplevelShell;

	signal in0 : std_logic := '0';
	signal out0	: std_logic;
	signal out1	: std_logic;
	signal out2	: std_logic;
	signal out3	: std_logic;
	signal out4	: std_logic;
	signal out5	: std_logic;
	signal out6	: std_logic;
	signal out7 : std_logic;

	constant num_cycles : integer := 3000;
	signal clock : std_logic := '1';

	begin	

		module_func: LogisimToplevelShell
		port map (
				FPGA_INPUT_PIN_0 => in0,
				FPGA_INPUT_PIN_1 => clock,
				FPGA_OUTPUT_PIN_0 => out0,
				FPGA_OUTPUT_PIN_1 => out1,
				FPGA_OUTPUT_PIN_2 => out2,
				FPGA_OUTPUT_PIN_3 => out3,
				FPGA_OUTPUT_PIN_4 => out4,
				FPGA_OUTPUT_PIN_5 => out5,
				FPGA_OUTPUT_PIN_6 => out6,
				FPGA_OUTPUT_PIN_7 => out7
				);
		--
		process
			begin
				in0 <= '0';
				wait for 1 ms;
				in0 <= '1';
				wait for 1 ms;
				in0 <= '0';
				wait for 1 ms;

				for i in 1 to num_cycles loop
					clock <= not clock; 
					wait for 500000 ns;
					clock <= not clock;
					wait for 500000 ns;
				end loop;
				wait;
			end process;
		--
	--
--
end testbench_behaviour;
