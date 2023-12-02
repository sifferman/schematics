
all: ../top.sv
	rm -rf top .Xil synth.svg
	vivado -nolog -nojournal -mode tcl -source synth.tcl

clean:
	rm -rf top .Xil synth.svg *.v
