@echo off
mkdir build
cd build
ghdl.exe -a ..\vhdl\toplevel\LogisimToplevelShell_entity.vhd ..\vhdl\toplevel\LogisimToplevelShell_behavior.vhd
ghdl.exe -a ..\vhdl\plexers\Multiplexer_bus_4_entity.vhd ..\vhdl\plexers\Multiplexer_bus_4_behavior.vhd
ghdl.exe -a ..\vhdl\plexers\Multiplexer_bus_2_entity.vhd ..\vhdl\plexers\Multiplexer_bus_2_behavior.vhd
ghdl.exe -a ..\vhdl\plexers\Decoder_8_entity.vhd ..\vhdl\plexers\Decoder_8_behavior.vhd
ghdl.exe -a ..\vhdl\plexers\Decoder_4_entity.vhd ..\vhdl\plexers\Decoder_4_behavior.vhd
ghdl.exe -a ..\vhdl\plexers\Decoder_16_entity.vhd ..\vhdl\plexers\Decoder_16_behavior.vhd
ghdl.exe -a ..\vhdl\plexers\BitSelector_entity.vhd ..\vhdl\plexers\BitSelector_behavior.vhd
ghdl.exe -a ..\vhdl\memory\S_R_FLIPFLOP_entity.vhd ..\vhdl\memory\S_R_FLIPFLOP_behavior.vhd
ghdl.exe -a ..\vhdl\memory\ROM_pc_rom_entity.vhd ..\vhdl\memory\ROM_pc_rom_behavior.vhd
ghdl.exe -a ..\vhdl\memory\ROM_jmp_rom_entity.vhd ..\vhdl\memory\ROM_jmp_rom_behavior.vhd
ghdl.exe -a ..\vhdl\memory\ROM_cu_rom_entity.vhd ..\vhdl\memory\ROM_cu_rom_behavior.vhd
ghdl.exe -a ..\vhdl\memory\ROM_cu_rom_2_entity.vhd ..\vhdl\memory\ROM_cu_rom_2_behavior.vhd
ghdl.exe -a ..\vhdl\memory\ROM_alu_rom_entity.vhd ..\vhdl\memory\ROM_alu_rom_behavior.vhd
ghdl.exe -a ..\vhdl\memory\REGISTER_FLIP_FLOP_entity.vhd ..\vhdl\memory\REGISTER_FLIP_FLOP_behavior.vhd
ghdl.exe -a ..\vhdl\memory\RAM_ram_c_entity.vhd ..\vhdl\memory\RAM_ram_c_behavior.vhd
ghdl.exe -a ..\vhdl\memory\LogisimCounter_entity.vhd ..\vhdl\memory\LogisimCounter_behavior.vhd
ghdl.exe -a ..\vhdl\gates\XOR_GATE_ONEHOT_entity.vhd ..\vhdl\gates\XOR_GATE_ONEHOT_behavior.vhd
ghdl.exe -a ..\vhdl\gates\XOR_GATE_BUS_ONEHOT_entity.vhd ..\vhdl\gates\XOR_GATE_BUS_ONEHOT_behavior.vhd
ghdl.exe -a ..\vhdl\gates\OR_GATE_entity.vhd ..\vhdl\gates\OR_GATE_BUS_entity.vhd
ghdl.exe -a ..\vhdl\gates\OR_GATE_BUS_behavior.vhd ..\vhdl\gates\OR_GATE_BUS_4_INPUTS_entity.vhd
ghdl.exe -a ..\vhdl\gates\OR_GATE_BUS_4_INPUTS_behavior.vhd ..\vhdl\gates\OR_GATE_behavior.vhd
ghdl.exe -a ..\vhdl\gates\OR_GATE_3_INPUTS_entity.vhd ..\vhdl\gates\OR_GATE_3_INPUTS_behavior.vhd
ghdl.exe -a ..\vhdl\gates\NOT_GATE_entity.vhd ..\vhdl\gates\NOT_GATE_behavior.vhd
ghdl.exe -a ..\vhdl\gates\AND_GATE_entity.vhd ..\vhdl\gates\AND_GATE_BUS_entity.vhd
ghdl.exe -a ..\vhdl\gates\AND_GATE_BUS_behavior.vhd ..\vhdl\gates\AND_GATE_behavior.vhd
ghdl.exe -a ..\vhdl\gates\AND_GATE_8_INPUTS_entity.vhd ..\vhdl\gates\AND_GATE_8_INPUTS_behavior.vhd
ghdl.exe -a ..\vhdl\gates\AND_GATE_3_INPUTS_entity.vhd ..\vhdl\gates\AND_GATE_3_INPUTS_behavior.vhd
ghdl.exe -a ..\vhdl\circuit\main_entity.vhd ..\vhdl\circuit\main_behavior.vhd
ghdl.exe -a ..\vhdl\circuit\jmp_entity.vhd ..\vhdl\circuit\jmp_behavior.vhd
ghdl.exe -a ..\vhdl\circuit\cu_entity.vhd ..\vhdl\circuit\cu_behavior.vhd
ghdl.exe -a ..\vhdl\circuit\computer_entity.vhd ..\vhdl\circuit\computer_behavior.vhd
ghdl.exe -a ..\vhdl\circuit\cmp_entity.vhd ..\vhdl\circuit\cmp_behavior.vhd
ghdl.exe -a ..\vhdl\circuit\alu_entity.vhd ..\vhdl\circuit\alu_behavior.vhd
ghdl.exe -a ..\vhdl\arithmetic\Shifter_8_bit_entity.vhd ..\vhdl\arithmetic\Shifter_8_bit_behavior.vhd
ghdl.exe -a ..\vhdl\arithmetic\Adder_entity.vhd ..\vhdl\arithmetic\Adder_behavior.vhd

ghdl.exe -a ..\testbench.vhdl
ghdl.exe -e testbench
ghdl.exe -r testbench --vcd=computer_output.vcd
