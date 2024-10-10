export CORE_ROOT=/home/guest/Downloads/FSM
all: icarus

icarus: icarus_compile
	vvp $(CORE_ROOT)/temp/fsm.output

icarus_compile:
	mkdir -p temp
	iverilog -f flist -o $(CORE_ROOT)/temp/fsm.output

clean:
	rm -rf temp
	