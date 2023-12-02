
synth.svg: synth.json
	netlistsvg $< -o $@

synth.v synth.json: ../top.sv
	yosys -c synth.tcl

clean:
	rm -rf slpp_all synth.json synth.v
