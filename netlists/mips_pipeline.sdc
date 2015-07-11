###################################################################

# Created by write_sdc on Mon Jun 23 18:37:08 2014

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
create_clock [get_ports clk]  -name myclk  -period 25  -waveform {0 12.5}
set_clock_uncertainty 1  [get_clocks myclk]