# T0006_Spartan_7_Hello_World
HELLO WORLD (blinking LEDs) for T0006 Spartan-7 FPGA board by iamelectronic.com


Project details:
----------------

created with Vivado 2018.2.2

FPGA family:         Xilinx Spartan-7

FPGA Part:           XC7S25

FPGA Package:        FTGB196

FPGA Speed grade:    1

FPGA board revision: T0006 REV A 2018


Project structure:
------------------

./constraints:  XDC constraints file for Xilinx Vivado

./rtl:          VHDL design files

./project:      Vivado project workspace (includes *.xpr project file)


Application notes:
------------------

1. Load *.xpr project file with Xilinx Vivado

2. Run "Generate Bitstream"

3. Open "Hardware Manager" and program device

4. Turn user switches SW1, SW2, SW3, and SW4 on for blinking LEDs (LD1, LD2, LD3, LD4)