export CORE_ROOT=/home/muhammad/Desktop/GATES/xor

all: icarus
	gtkwave $(CORE_ROOT)/temp/xor_gate.vcd

icarus: icarus_compile
	vvp $(CORE_ROOT)/temp/xor_gate.output

icarus_compile:
	mkdir -p temp
	iverilog -f flist -o $(CORE_ROOT)/temp/xor_gate.output

clean:
	rm -rf temp