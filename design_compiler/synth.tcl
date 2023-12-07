
source ../conf.tcl

read_file -format sverilog -rtl ../$TOP_MODULE.sv

set current_design $TOP_MODULE
set link_library library.db
set target_library library.db

link

compile

write_file -format verilog -output synth.v

start_gui
gui_create_schematic
change_selection [::snpsGuiSyn::get_current_design]
gui_change_schematic -type Hierarchy -operation Collapse -window [gui_get_current_window -types Schematic -mru]
gui_change_schematic -type Hierarchy -operation Expand -window [gui_get_current_window -types Schematic -mru]
change_selection
gui_show_window -show_state maximized -window [gui_get_current_window -types Schematic -mru]
gui_write_window_image -window [gui_get_current_window -view] -file synth.png

exit
