export CORE_ROOT=/home/muhammad/Desktop/GATES/or

all: icarus

icarus: icarus_compile
	vvp $(CORE_ROOT)/temp/or_gate.output

icarus_compile:
	mkdir -p temp
	iverilog -f flist -o $(CORE_ROOT)/temp/or_gate.output

clean:
	rm -rf temp