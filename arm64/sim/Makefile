ESLC=   eslc
INC=	-I../../libsim -I../../libelf -I../../lib
LIB=	../../lib
DBG=
OPT=	-i	# disable inlining
GCC=	gcc
ARCH:= $(shell uname -m)

# keep intermediate files, for now
.SECONDARY: %.s %.ll

%.out: %.s
	$(GCC) $< $(LIB)/arch/$(ARCH)/lib.a -o $@

%.s: %.esl
	$(ESLC) -m$(ARCH) $(DBG) $(INC) $(OPT) $< >$@

PROGS=	sim-arm64

all:	$(PROGS)

sim-arm64: main.out
	mv main.out sim-arm64

clean:
	rm -f *.ll *.s *.o *.out $(PROGS)
