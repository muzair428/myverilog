export CORE_ROOT=/home/muhammad/Desktop/GATES/OR

all: icarus

icarus: icarus_compile
	vvp $(CORE_ROOT)/temp/OR_GATE.output

icarus_compile:
	mkdir -p temp  # This line should be tab-indented
	iverilog -f flist -o $(CORE_ROOT)/temp/OR_GATE.output  

clean:
	rm -rf temp  # This line should be tab-indented


