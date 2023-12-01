
synth.svg: synth.json
	netlistsvg $< -o $@

synth.v synth.json:
	yosys -c synth.tcl

clean:
	rm -rf slpp_all synth.json synth.v
