
source ../conf.tcl

set nproc [exec nproc]
set_multi_cpu_usage -local_cpu $nproc

read_hdl -language sv -library work ../$TOP_MODULE.sv

read_libs sky130_fd_sc_hd__tt_025C_1v80.lib

elaborate
syn_generic $TOP_MODULE
syn_map

write_hdl > synth.v

gui_sv_load $TOP_MODULE
gui_sv_snapshot -overwrite -png synth.png

exit
