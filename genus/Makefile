
.SECONDARY:

synth.v synth.png: ../top.sv sky130_fd_sc_hd__tt_025C_1v80.lib
	mkdir -p build
	genus -files synth.tcl -log build/synth.log

sky130_fd_sc_hd__tt_025C_1v80.lib:
	wget https://raw.githubusercontent.com/efabless/skywater-pdk-libs-sky130_fd_sc_hd/master/timing/sky130_fd_sc_hd__tt_025C_1v80.lib

clean:
	rm -rf build fv .rs_*.tstamp synth.v synth.png
