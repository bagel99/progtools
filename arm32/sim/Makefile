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
	$(GCC) -static $< $(LIB)/arch/$(ARCH)/lib.a -o $@

%.s: %.esl
	$(ESLC) -m$(ARCH) $(DBG) $(INC) $(OPT) $< >$@

PROGS=	sim-arm32

all:	$(PROGS)

sim-arm32: main.out
	mv main.out sim-arm32

clean:
	rm -f *.ll *.s *.o *.out $(PROGS)
