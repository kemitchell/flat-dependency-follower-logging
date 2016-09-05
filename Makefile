all: sequence.png behind.png memory.png

%.png: %.gnuplot %.log
	gnuplot $<
