
yosys -import
plugin -i systemverilog
yosys -import

source ../conf.tcl

read_systemverilog -noinfo -nonote ../$TOP_MODULE.sv

prep -top $TOP_MODULE
write_verilog -noexpr -noattr -simple-lhs synth.v
write_json synth.json
