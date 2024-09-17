export CORE_ROOT=/home/muhammad/Desktop/GATES/AND

all: icarus
	gtkwave $(CORE_ROOT)/temp/AND_GATE.vcd

icarus: icarus_compile
	vvp $(CORE_ROOT)/temp/AND_GATE.output

icarus_compile:
	mkdir -p temp
	iverilog -f flist -o $(CORE_ROOT)/temp/AND_GATE.output

clean:
	rm -rf temp