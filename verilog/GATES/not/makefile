export CORE_ROOT=/home/muhammad/Desktop/GATES/not

all: icarus
	gtkwave $(CORE_ROOT)/temp/not_gate.vcd

icarus: icarus_compile
	vvp $(CORE_ROOT)/temp/not_gate.output

icarus_compile:
	mkdir -p temp
	iverilog -f flist -o $(CORE_ROOT)/temp/not_gate.output

clean:
	rm -rf temp