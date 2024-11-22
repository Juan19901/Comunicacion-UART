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
read_verilog -sv -lib /foss/designs/uart/runs/RUN_2024-11-22_04-19-23/tmp/10a7224aaf034fd29f7e16d686adf98f.bb.v
set ::env(SYNTH_LIBS) /foss/designs/uart/runs/RUN_2024-11-22_04-19-23/tmp/985835045e7142b58563424cd711475e.lib
