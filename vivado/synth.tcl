
source ../conf.tcl

create_project $TOP_MODULE ./$TOP_MODULE -part xc7a100tcsg324-1

add_files -norecurse ../$TOP_MODULE.sv
set_property top_file ../$TOP_MODULE.sv [current_fileset]

set nproc [exec nproc]
set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
launch_runs synth_1 -jobs $nproc
wait_on_run synth_1
open_run synth_1 -name synth_1

write_verilog -force -include_xilinx_libs synth.v

start_gui
show_schematic -verbose [get_nets -hier]
write_schematic -format svg -scope current_page -verbose -force synth.svg

exit
