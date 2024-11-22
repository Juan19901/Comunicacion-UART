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
read_verilog -sv -lib /foss/designs/uart/runs/RUN_2024-11-22_04-45-38/tmp/f7632d22e81443d286cd4e314e16f6f0.bb.v
set ::env(SYNTH_LIBS) /foss/designs/uart/runs/RUN_2024-11-22_04-45-38/tmp/229f85de417b4fcaaec9d2fde05705fd.lib
