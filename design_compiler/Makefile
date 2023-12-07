
.SECONDARY:

synth.v synth.png: ../top.sv library.db
	design_vision -no_init -64bit -f synth.tcl -output_log_file dc_output.txt

library.db: sky130_fd_sc_hd__tt_025C_1v80.lib
	lc_shell -f library.tcl

sky130_fd_sc_hd__tt_025C_1v80.lib:
	wget https://raw.githubusercontent.com/efabless/skywater-pdk-libs-sky130_fd_sc_hd/master/timing/sky130_fd_sc_hd__tt_025C_1v80.lib

clean:
	rm -rf sky130_fd_sc_hd__tt_025C_1v80.lib command.log *.svf lc_output.txt *.db *.log dc_output.txt synth.v synth.png
