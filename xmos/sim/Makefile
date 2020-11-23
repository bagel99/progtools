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

PROGS=	sim-xs1

all:	$(PROGS)

sim-xs1: main.out
	mv main.out sim-xs1

clean:
	rm -f *.ll *.s *.o *.out $(PROGS)
