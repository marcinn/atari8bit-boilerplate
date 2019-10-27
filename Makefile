.PHONY=build
.DEFAULT_GOAL=all

OUT=main
ASM=mads
ASMFLAGS=-p
EMULATOR_WIDTH=1024
EMULATOR_HEIGHT=768
EMULATOR_OPTS=-bilinear-filter -xe -fit-screen both -win-width $(EMULATOR_WIDTH) -win-height $(EMULATOR_HEIGHT)

SRCS := $(wildcard *.asm)

%.xex: %.asm
	($(ASM) -o:$@ $(ASMFLAGS) -t:$@.lab -l:$@.lst $<)

clean:
	rm -rf *.bin *.hex *.err *.lst *.xex

all: $(OUT).xex

run:
	atari800 $(EMULATOR_OPTS) -run $(OUT).xex
