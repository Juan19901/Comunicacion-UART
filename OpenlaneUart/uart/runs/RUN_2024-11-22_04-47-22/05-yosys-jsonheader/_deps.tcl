set ::_synlig_defines [list]
verilog_defines -DPDK_sky130A
lappend ::_synlig_defines +define+PDK_sky130A
verilog_defines "-DSCL_sky130_fd_sc_hd\""
lappend ::_synlig_defines "+define+SCL_sky130_fd_sc_hd\""
verilog_defines -D__openlane__
lappend ::_synlig_defines +define+__openlane__
verilog_defines -D__pnr__
lappend ::_synlig_defines +define+__pnr__
verilog_defines -DUSE_POWER_PINS
lappend ::_synlig_defines +define+USE_POWER_PINS
read_verilog -sv -lib /foss/designs/uart/runs/RUN_2024-11-22_04-47-22/tmp/f7c1de3afec2472baa7a95562a725357.bb.v
set ::env(SYNTH_LIBS) /foss/designs/uart/runs/RUN_2024-11-22_04-47-22/tmp/7b786cce2eba4859906985974d25bfeb.lib
