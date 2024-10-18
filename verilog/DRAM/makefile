export CORE_ROOT=/home/muhammad/Desktop/DRAM

all: icarus

icarus: icarus_compile
	vvp $(CORE_ROOT)dram.output

icarus_compile:
	mkdir -p temp
	iverilog -f flist -o $(CORE_ROOT)dram.output

clean:
	rm -rf temp