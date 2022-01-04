####################################
# XDC TEMPLATE v1.0
# SPARTAN-7 FPGA BOARD
# BOARD: T0006 REV A 2018
# WWW.IAMELECTRONIC.COM
####################################

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design];
set_property CONFIG_MODE SPIx4 [current_design];


##############
# SYSTEM CLOCK
##############

# 100MHz Oscillator U3
# Part: DSC1101CI5-100.0000
# MEMS Oscillator High Perf Single LVCMOS Output -40C..85C 10ppm

set_property PACKAGE_PIN H12                                     [get_ports SYSCLK]; #P, BANK 14, MRCC
set_property IOSTANDARD LVCMOS33                                 [get_ports SYSCLK];
create_clock -period 10.000 -name sysclk -waveform {0.000 5.000} [get_ports SYSCLK];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk}];                           ## THIS BUG WILL BE FIXED IN REVISION B, SYSCLK MUST BE ROUTED TO POSITIVE TERMINAL OF IO_L13 (H11)


#############
# XADC
#############

set_property IOSTANDARD LVCMOS33 [get_ports VP_IN];
set_property PACKAGE_PIN G8      [get_ports VP_IN];
set_property IOSTANDARD LVCMOS33 [get_ports VN_IN];
set_property PACKAGE_PIN H7      [get_ports VN_IN];


#############
# USER LEDS
#############

set_property IOSTANDARD LVCMOS33 [get_ports LED*];
set_property PACKAGE_PIN M1      [get_ports LED1];
set_property PACKAGE_PIN M10     [get_ports LED2];
set_property PACKAGE_PIN B6      [get_ports LED3];
set_property PACKAGE_PIN L1      [get_ports LED4];


#############
# USER SWITCHES
#############

set_property IOSTANDARD LVCMOS33 [get_ports SW*];
set_property PACKAGE_PIN K3      [get_ports SW4];
set_property PACKAGE_PIN K4      [get_ports SW3];
set_property PACKAGE_PIN J3      [get_ports SW2];
set_property PACKAGE_PIN J4      [get_ports SW1];


#############
# USB-UART
#############

# USB-UART U7
# Part: CP2102N-A01-GQFN20
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_UART_RXD];
set_property PACKAGE_PIN M5      [get_ports FPGA_UART_RXD]; # FROM USB-UART TO FPGA
set_property IOSTANDARD LVCMOS33 [get_ports FPGA_UART_TXD];
set_property PACKAGE_PIN M4      [get_ports FPGA_UART_TXD]; # FROM FPGA TO USB-UART


#############
# GPIOS
#############

# Connector NORTH (PN), 24 IOs
set_property IOSTANDARD LVCMOS33  [get_ports PN*];
set_property PACKAGE_PIN D1       [get_ports PN3]; # IO_L11P_T1_SRCC_34
set_property PACKAGE_PIN C1       [get_ports PN4]; # IO_L11N_T1_SRCC_34
set_property PACKAGE_PIN B1       [get_ports PN5];
set_property PACKAGE_PIN B2       [get_ports PN6];
set_property PACKAGE_PIN D3       [get_ports PN7];
set_property PACKAGE_PIN C3       [get_ports PN8];
set_property PACKAGE_PIN A2       [get_ports PN9];
set_property PACKAGE_PIN B3       [get_ports PN10];

set_property PACKAGE_PIN A3       [get_ports PN13];
set_property PACKAGE_PIN A4       [get_ports PN14];
set_property PACKAGE_PIN B5       [get_ports PN15];
set_property PACKAGE_PIN A5       [get_ports PN16];
set_property PACKAGE_PIN C5       [get_ports PN17];
set_property PACKAGE_PIN C4       [get_ports PN18];
set_property PACKAGE_PIN E4       [get_ports PN19];
set_property PACKAGE_PIN D4       [get_ports PN20];

set_property PACKAGE_PIN A10      [get_ports PN23];
set_property PACKAGE_PIN C12      [get_ports PN24];
set_property PACKAGE_PIN A13      [get_ports PN25];
set_property PACKAGE_PIN A12      [get_ports PN26];
set_property PACKAGE_PIN D12      [get_ports PN27];
set_property PACKAGE_PIN D13      [get_ports PN28];
set_property PACKAGE_PIN B14      [get_ports PN29];
set_property PACKAGE_PIN B13      [get_ports PN30];

# Connector EAST (PE), 24 IOs
set_property IOSTANDARD LVCMOS33  [get_ports PE*];
set_property PACKAGE_PIN C14      [get_ports PE3]; # IO_L11N_T1_SRCC_14
set_property PACKAGE_PIN D14      [get_ports PE4]; # IO_L11P_T1_SRCC_14
set_property PACKAGE_PIN F12      [get_ports PE5];
set_property PACKAGE_PIN E12      [get_ports PE6];
set_property PACKAGE_PIN F11      [get_ports PE7]; # IO_L12N_T1_MRCC_14
set_property PACKAGE_PIN G11      [get_ports PE8]; # IO_L13P_T2_MRCC_14
set_property PACKAGE_PIN F13      [get_ports PE9];
set_property PACKAGE_PIN E13      [get_ports PE10];

set_property PACKAGE_PIN G14      [get_ports PE13];
set_property PACKAGE_PIN F14      [get_ports PE14];
set_property PACKAGE_PIN H13      [get_ports PE15]; # IO_L14P_T2_SRCC_14
set_property PACKAGE_PIN H14      [get_ports PE16]; # IO_L14N_T2_SRCC_14
set_property PACKAGE_PIN E11      [get_ports PE17];
set_property PACKAGE_PIN H11      [get_ports PE18]; # IO_L13P_T2_MRCC_14
set_property PACKAGE_PIN J11      [get_ports PE19];
set_property PACKAGE_PIN J12      [get_ports PE20];

set_property PACKAGE_PIN J13      [get_ports PE23];
set_property PACKAGE_PIN J14      [get_ports PE24];
set_property PACKAGE_PIN M13      [get_ports PE25];
set_property PACKAGE_PIN L14      [get_ports PE26];
set_property PACKAGE_PIN L12      [get_ports PE27];
set_property PACKAGE_PIN L13      [get_ports PE28];
set_property PACKAGE_PIN N14      [get_ports PE29];
set_property PACKAGE_PIN M14      [get_ports PE30];

# Connector SOUTH (PS), 14 IOs
set_property IOSTANDARD LVCMOS33  [get_ports PS*];
set_property PACKAGE_PIN M12      [get_ports PS3];
set_property PACKAGE_PIN M11      [get_ports PS4];
set_property PACKAGE_PIN P13      [get_ports PS5];
set_property PACKAGE_PIN P12      [get_ports PS6];
set_property PACKAGE_PIN N11      [get_ports PS7];
set_property PACKAGE_PIN N10      [get_ports PS8];
set_property PACKAGE_PIN P11      [get_ports PS9];
set_property PACKAGE_PIN P10      [get_ports PS10];
set_property PACKAGE_PIN K11      [get_ports PS11];
set_property PACKAGE_PIN K12      [get_ports PS12];
set_property PACKAGE_PIN P5       [get_ports PS13];
set_property PACKAGE_PIN N4       [get_ports PS14];
set_property PACKAGE_PIN L5       [get_ports PS15];
set_property PACKAGE_PIN P4       [get_ports PS16];

# Connector WEST (PW), 21 IOs
set_property IOSTANDARD LVCMOS33  [get_ports PW*];
set_property PACKAGE_PIN P3       [get_ports PW6];
set_property PACKAGE_PIN P2       [get_ports PW7];
set_property PACKAGE_PIN N1       [get_ports PW8];
set_property PACKAGE_PIN M2       [get_ports PW9];
set_property PACKAGE_PIN M3       [get_ports PW10];

set_property PACKAGE_PIN L2       [get_ports PW13];
set_property PACKAGE_PIN L3       [get_ports PW14];
set_property PACKAGE_PIN H4       [get_ports PW15]; # IO_L13P_T2_MRCC_34
set_property PACKAGE_PIN H3       [get_ports PW16]; # IO_L13N_T2_MRCC_34
set_property PACKAGE_PIN J2       [get_ports PW17];
set_property PACKAGE_PIN J1       [get_ports PW18];
set_property PACKAGE_PIN H2       [get_ports PW19]; # IO_L14P_T2_SRCC_34
set_property PACKAGE_PIN H1       [get_ports PW20]; # IO_L14N_T2_SRCC_34

set_property PACKAGE_PIN F1       [get_ports PW23];
set_property PACKAGE_PIN G1       [get_ports PW24];
set_property PACKAGE_PIN F3       [get_ports PW25];
set_property PACKAGE_PIN F2       [get_ports PW26];
set_property PACKAGE_PIN G4       [get_ports PW27]; # IO_L12P_T1_MRCC_34
set_property PACKAGE_PIN F4       [get_ports PW28]; # IO_L12N_T1_MRCC_34
set_property PACKAGE_PIN E2       [get_ports PW29];
set_property PACKAGE_PIN D2       [get_ports PW30];